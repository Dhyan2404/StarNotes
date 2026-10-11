package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.instruct.TerminationException;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.Error;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.AtomizedValueIterator;
import net.p110sf.saxon.om.EmptyAtomicSequence;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomizingIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.UntypedAtomizingIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public final class Atomizer extends UnaryExpression {
    public static final UType STRING_KINDS = UType.NAMESPACE.union(UType.COMMENT).union(UType.f102819PI);
    public static final UType UNTYPED_IF_UNTYPED_KINDS;
    public static final UType UNTYPED_KINDS;

    /* renamed from: o */
    public boolean f99170o;

    /* renamed from: p */
    public boolean f99171p;

    /* renamed from: q */
    public ItemType f99172q;

    /* renamed from: r */
    public RoleDiagnostic f99173r;

    static {
        UType uType = UType.TEXT;
        UType uType2 = UType.DOCUMENT;
        UNTYPED_KINDS = uType.union(uType2);
        UNTYPED_IF_UNTYPED_KINDS = uType.union(UType.ELEMENT).union(uType2).union(UType.ATTRIBUTE);
    }

    public Atomizer(Expression expression, RoleDiagnostic roleDiagnostic) {
        super(expression);
        this.f99170o = false;
        this.f99171p = false;
        this.f99172q = null;
        this.f99173r = roleDiagnostic;
        expression.setFlattened(true);
    }

    public static AtomicSequence atomize(Sequence sequence) throws XPathException {
        return sequence instanceof AtomicSequence ? (AtomicSequence) sequence : sequence instanceof EmptySequence ? EmptyAtomicSequence.getInstance() : new AtomicArray(getAtomizingIterator(sequence.iterate(), false));
    }

    public static ItemType getAtomizedItemType(Expression expression, boolean z, TypeHierarchy typeHierarchy) {
        ItemType itemType = expression.getItemType();
        if (itemType.isPlainType()) {
            return itemType;
        }
        if (!(itemType instanceof NodeTest)) {
            if (itemType instanceof JavaExternalObjectType) {
                return itemType.getAtomizedItemType();
            }
            if (!(itemType instanceof ArrayItemType)) {
                return itemType instanceof FunctionItemType ? ErrorType.getInstance() : BuiltInAtomicType.ANY_ATOMIC;
            }
            PlainType atomizedItemType = ((ArrayItemType) itemType).getMemberType().getPrimaryType().getAtomizedItemType();
            return atomizedItemType == null ? ErrorType.getInstance() : atomizedItemType;
        }
        UType uType = itemType.getUType();
        if (z) {
            if (STRING_KINDS.subsumes(uType)) {
                return BuiltInAtomicType.STRING;
            }
            if (UNTYPED_IF_UNTYPED_KINDS.subsumes(uType)) {
                return BuiltInAtomicType.UNTYPED_ATOMIC;
            }
        } else if (UNTYPED_KINDS.subsumes(uType)) {
            return BuiltInAtomicType.UNTYPED_ATOMIC;
        }
        return itemType.getAtomizedItemType();
    }

    public static SequenceIterator getAtomizingIterator(SequenceIterator sequenceIterator, boolean z) throws XPathException {
        if (SequenceTool.supportsGetLength(sequenceIterator)) {
            int length = SequenceTool.getLength(sequenceIterator);
            if (length == 0) {
                return EmptyIterator.emptyIterator();
            }
            if (length == 1) {
                return sequenceIterator.next().atomize().iterate();
            }
        } else if (sequenceIterator instanceof AtomizedValueIterator) {
            return new AxisAtomizingIterator((AtomizedValueIterator) sequenceIterator);
        }
        return z ? new UntypedAtomizingIterator(sequenceIterator) : new AtomizingIterator(sequenceIterator);
    }

    public static Expression makeAtomizer(Expression expression, RoleDiagnostic roleDiagnostic) {
        return ((expression instanceof Literal) && (((Literal) expression).getGroundedValue() instanceof AtomicSequence)) ? expression : new Atomizer(expression, roleDiagnostic);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        PathMap.PathMapNodeSet addToPathMap = getBaseExpression().addToPathMap(pathMap, pathMapNodeSet);
        if (addToPathMap == null) {
            return null;
        }
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        ItemType itemType = getBaseExpression().getItemType();
        Affinity relationship = typeHierarchy.relationship(NodeKindTest.ELEMENT, itemType);
        Affinity affinity = Affinity.DISJOINT;
        if (relationship == affinity && typeHierarchy.relationship(NodeKindTest.DOCUMENT, itemType) == affinity) {
            return null;
        }
        addToPathMap.setAtomized();
        return null;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        ItemType operandItemType = getOperandItemType();
        Expression baseExpression = getBaseExpression();
        if (this.f99171p) {
            return baseExpression.getCardinality();
        }
        if (this.f99170o && (operandItemType instanceof NodeTest)) {
            return baseExpression.getCardinality();
        }
        if (Cardinality.allowsMany(baseExpression.getCardinality())) {
            return 57344;
        }
        if (operandItemType.isPlainType()) {
            return baseExpression.getCardinality();
        }
        if ((operandItemType instanceof NodeTest) && ((NodeTest) operandItemType).getContentType().isAtomicType()) {
            return baseExpression.getCardinality();
        }
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return (super.computeSpecialProperties() & (-155123713)) | 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Atomizer atomizer = new Atomizer(getBaseExpression().copy(rebindingMap), this.f99173r);
        atomizer.f99170o = this.f99170o;
        atomizer.f99171p = this.f99171p;
        ExpressionTool.copyLocationInfo(this, atomizer);
        return atomizer;
    }

    /* renamed from: d */
    public final void m62541d(TypeHierarchy typeHierarchy) {
        if (typeHierarchy.relationship(getOperandItemType(), ArrayItemType.ANY_ARRAY_TYPE) != Affinity.DISJOINT) {
            this.f99171p = false;
            return;
        }
        boolean z = this.f99170o;
        this.f99171p = z;
        if (z) {
            return;
        }
        ItemType itemType = getBaseExpression().getItemType();
        if (itemType instanceof NodeTest) {
            SchemaType contentType = ((NodeTest) itemType).getContentType();
            if (contentType == Untyped.getInstance() || contentType.isAtomicType() || (contentType.isComplexType() && contentType != AnyType.getInstance())) {
                this.f99171p = true;
            }
            if (itemType.getUType().overlaps(UType.ELEMENT.union(UType.ATTRIBUTE))) {
                return;
            }
            this.f99171p = true;
        }
    }

    /* renamed from: e */
    public final String m62542e(String str) {
        if (this.f99173r == null) {
            return str;
        }
        return str + ". Found while atomizing the " + this.f99173r.getMessage();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public void emitExtraAttributes(ExpressionPresenter expressionPresenter) {
        RoleDiagnostic roleDiagnostic = this.f99173r;
        if (roleDiagnostic != null) {
            expressionPresenter.emitAttribute("diag", roleDiagnostic.save());
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "data";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 10;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        this.f99172q = getBaseExpression().getItemType();
        return getAtomizedItemType(getBaseExpression(), this.f99170o, getConfiguration().getTypeHierarchy());
    }

    public ItemType getOperandItemType() {
        if (this.f99172q == null) {
            this.f99172q = getBaseExpression().getItemType();
        }
        return this.f99172q;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.ATOMIC_SEQUENCE;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "Atomizer";
    }

    public boolean isUntyped() {
        return this.f99170o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        try {
            return getAtomizingIterator(getBaseExpression().iterate(xPathContext), this.f99170o && (this.f99172q instanceof NodeTest));
        } catch (TerminationException | Error.UserDefinedXPathException e) {
            throw e;
        } catch (XPathException e2) {
            if (this.f99173r == null) {
                throw e2;
            }
            XPathException xPathException = new XPathException(this.m62542e(e2.getMessage()), e2.getErrorCodeLocalPart(), e2.getLocator());
            xPathException.setXPathContext(xPathContext);
            xPathException.maybeSetLocation(this.getLocation());
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize == this) {
            TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
            Expression baseExpression = getBaseExpression();
            if (typeHierarchy.isSubType(baseExpression.getItemType(), BuiltInAtomicType.ANY_ATOMIC)) {
                return baseExpression;
            }
            if (baseExpression instanceof ValueOf) {
                ValueOf valueOf = (ValueOf) baseExpression;
                if (!ReceiverOption.contains(valueOf.getOptions(), 1)) {
                    return valueOf.convertToCastAsString().optimize(expressionVisitor, contextItemStaticInfo);
                }
            }
            if ((baseExpression instanceof LetExpression) || (baseExpression instanceof ForExpression)) {
                Assignation assignation = (Assignation) baseExpression;
                assignation.setAction(new Atomizer(assignation.getAction(), this.f99173r));
                return baseExpression.optimize(expressionVisitor, contextItemStaticInfo);
            }
            if (baseExpression instanceof Choose) {
                ((Choose) baseExpression).atomizeActions();
                return baseExpression.optimize(expressionVisitor, contextItemStaticInfo);
            }
            if (baseExpression instanceof Block) {
                Operand[] operanda = ((Block) baseExpression).getOperanda();
                Expression[] expressionArr = new Expression[operanda.length];
                while (r3 < operanda.length) {
                    expressionArr[r3] = new Atomizer(operanda[r3].getChildExpression(), this.f99173r);
                    r3++;
                }
                return new Block(expressionArr).typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
            }
            if (this.f99170o && (baseExpression instanceof AxisExpression)) {
                AxisExpression axisExpression = (AxisExpression) baseExpression;
                if (axisExpression.getAxis() == 2 && (axisExpression.getNodeTest() instanceof NameTest) && !axisExpression.isContextPossiblyUndefined()) {
                    AttributeGetter attributeGetter = new AttributeGetter(new FingerprintedQName(axisExpression.getNodeTest().getMatchingNodeName(), expressionVisitor.getConfiguration().getNamePool()));
                    attributeGetter.setRequiredChecks(axisExpression.getContextItemType() instanceof NodeTest ? 0 : 2);
                    ExpressionTool.copyLocationInfo(this, attributeGetter);
                    return attributeGetter;
                }
            }
            if (this.f99170o && (baseExpression instanceof SimpleStepExpression)) {
                SimpleStepExpression simpleStepExpression = (SimpleStepExpression) baseExpression;
                if (simpleStepExpression.getAxisExpression().getAxis() == 2 && (simpleStepExpression.getAxisExpression().getNodeTest() instanceof NameTest)) {
                    AttributeGetter attributeGetter2 = new AttributeGetter(new FingerprintedQName(simpleStepExpression.getAxisExpression().getNodeTest().getMatchingNodeName(), expressionVisitor.getConfiguration().getNamePool()));
                    attributeGetter2.setRequiredChecks(simpleStepExpression.getStart().getItemType() instanceof NodeTest ? 0 : 2);
                    ExpressionTool.copyLocationInfo(this, attributeGetter2);
                    return new SlashExpression(simpleStepExpression.getStart(), attributeGetter2);
                }
            }
        }
        return optimize;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void resetLocalStaticProperties() {
        super.resetLocalStaticProperties();
        this.f99172q = null;
    }

    public void setRoleDiagnostic(RoleDiagnostic roleDiagnostic) {
        this.f99173r = roleDiagnostic;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        Item next;
        this.f99170o = !getPackageData().isSchemaAware();
        m62541d(getConfiguration().getTypeHierarchy());
        Expression simplify = getBaseExpression().simplify();
        if (!(simplify instanceof Literal)) {
            if (simplify instanceof ValueOf) {
                ValueOf valueOf = (ValueOf) simplify;
                if (!ReceiverOption.contains(valueOf.getOptions(), 1)) {
                    return valueOf.convertToCastAsString();
                }
            }
            setBaseExpression(simplify);
            return this;
        }
        GroundedValue groundedValue = ((Literal) simplify).getGroundedValue();
        if (groundedValue instanceof AtomicValue) {
            return simplify;
        }
        SequenceIterator iterate = groundedValue.iterate();
        do {
            next = iterate.next();
            if (next == null) {
                return simplify;
            }
            if (next instanceof NodeInfo) {
                return this;
            }
        } while (!(next instanceof Function));
        Function function = (Function) next;
        if (function.isArray()) {
            return this;
        }
        if (!function.isMap()) {
            XPathException xPathException = new XPathException(m62542e("Cannot atomize a function item"), "FOTY0013");
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        XPathException xPathException2 = new XPathException(m62542e("Cannot atomize a map (" + next.toShortString() + MotionUtils.f31762d), "FOTY0013");
        xPathException2.setIsTypeError(true);
        xPathException2.setLocation(getLocation());
        throw xPathException2;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBaseExpression().toShortString();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return "data(" + getBaseExpression().toString() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        XPathException xPathException;
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99170o |= !expressionVisitor.getStaticContext().getPackageData().isSchemaAware();
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        m62541d(typeHierarchy);
        resetLocalStaticProperties();
        ItemType operandItemType = getOperandItemType();
        if (typeHierarchy.isSubType(operandItemType, BuiltInAtomicType.ANY_ATOMIC)) {
            return getBaseExpression();
        }
        if (operandItemType.isAtomizable(typeHierarchy)) {
            getBaseExpression().setFlattened(true);
            return this;
        }
        if (operandItemType instanceof FunctionItemType) {
            xPathException = new XPathException(m62542e("Cannot atomize a " + (operandItemType instanceof MapType ? Constant.MAP_TAG : "function item")), "FOTY0013");
        } else {
            xPathException = new XPathException(m62542e("Cannot atomize an element that is defined in the schema to have element-only content"), "FOTY0012");
        }
        xPathException.setIsTypeError(true);
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public AtomicValue evaluateItem(XPathContext xPathContext) throws XPathException {
        Item evaluateItem = getBaseExpression().evaluateItem(xPathContext);
        if (evaluateItem == null) {
            return null;
        }
        return evaluateItem.atomize().head();
    }
}
