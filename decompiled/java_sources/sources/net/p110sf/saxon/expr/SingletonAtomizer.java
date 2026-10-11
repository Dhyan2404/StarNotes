package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.expr.instruct.TerminationException;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.Error;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public final class SingletonAtomizer extends UnaryExpression {

    /* renamed from: o */
    public final boolean f99370o;

    /* renamed from: p */
    public final RoleDiagnostic f99371p;

    public SingletonAtomizer(Expression expression, RoleDiagnostic roleDiagnostic, boolean z) {
        super(expression);
        this.f99370o = z;
        this.f99371p = roleDiagnostic;
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
        return this.f99370o ? 24576 : 16384;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        SingletonAtomizer singletonAtomizer = new SingletonAtomizer(getBaseExpression().copy(rebindingMap), this.f99371p, this.f99370o);
        ExpressionTool.copyLocationInfo(this, singletonAtomizer);
        return singletonAtomizer;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("atomSing", this);
        if (this.f99370o) {
            expressionPresenter.emitAttribute("card", "?");
        }
        expressionPresenter.emitAttribute("diag", getRole().save());
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "atomizeSingleton";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        boolean z;
        try {
            z = getPackageData().isSchemaAware();
        } catch (NullPointerException unused) {
            z = getConfiguration().isLicensedFeature(1);
        }
        ItemType itemType = getBaseExpression().getItemType();
        if (itemType.isPlainType()) {
            return itemType;
        }
        if (!(itemType instanceof NodeTest)) {
            return itemType instanceof JavaExternalObjectType ? itemType.getAtomizedItemType() : BuiltInAtomicType.ANY_ATOMIC;
        }
        UType uType = itemType.getUType();
        if (z) {
            if (Atomizer.UNTYPED_KINDS.subsumes(uType)) {
                return BuiltInAtomicType.UNTYPED_ATOMIC;
            }
        } else {
            if (Atomizer.STRING_KINDS.subsumes(uType)) {
                return BuiltInAtomicType.STRING;
            }
            if (Atomizer.UNTYPED_IF_UNTYPED_KINDS.subsumes(uType)) {
                return BuiltInAtomicType.UNTYPED_ATOMIC;
            }
        }
        return itemType.getAtomizedItemType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SINGLE_ATOMIC;
    }

    public RoleDiagnostic getRole() {
        return this.f99371p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "SingletonAtomizer";
    }

    public boolean isAllowEmpty() {
        return this.f99370o;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        setBaseExpression(getBaseExpression().unordered(true, false));
        return (!getBaseExpression().getItemType().isPlainType() || Cardinality.allowsMany(getBaseExpression().getCardinality())) ? this : getBaseExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        Expression simplify = getBaseExpression().simplify();
        if ((simplify instanceof Literal) && (((Literal) simplify).getGroundedValue() instanceof AtomicValue)) {
            return simplify;
        }
        setBaseExpression(simplify);
        return this;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBaseExpression().toShortString();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        XPathException xPathException;
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        Expression baseExpression = getBaseExpression();
        ExpressionTool.resetStaticProperties(this);
        if (Literal.isEmptySequence(baseExpression)) {
            if (!this.f99370o) {
                typeError("An empty sequence is not allowed as the " + this.f99371p.getMessage(), this.f99371p.getErrorCode(), null);
            }
            return baseExpression;
        }
        ItemType itemType = baseExpression.getItemType();
        if (itemType.isPlainType()) {
            return baseExpression;
        }
        if (itemType.isAtomizable(expressionVisitor.getConfiguration().getTypeHierarchy())) {
            return this;
        }
        if (itemType instanceof MapType) {
            xPathException = new XPathException("Cannot atomize a map (" + toShortString() + MotionUtils.f31762d, "FOTY0013");
        } else {
            xPathException = itemType instanceof FunctionItemType ? new XPathException("Cannot atomize a function item", "FOTY0013") : new XPathException("Cannot atomize an element that is defined in the schema to have element-only content", "FOTY0012");
        }
        xPathException.setIsTypeError(true);
        xPathException.setLocation(getLocation());
        xPathException.setFailingExpression(getParentExpression());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public AtomicValue evaluateItem(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getBaseExpression().iterate(xPathContext);
        int i = 0;
        AtomicValue atomicValue = null;
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                break;
            }
            try {
                AtomicSequence atomize = next.atomize();
                i += atomize.getLength();
                if (i > 1) {
                    typeError("A sequence of more than one item is not allowed as the " + this.f99371p.getMessage() + CardinalityChecker.depictSequenceStart(getBaseExpression().iterate(xPathContext), 3), this.f99371p.getErrorCode(), xPathContext);
                }
                if (i == 1) {
                    atomicValue = atomize.head();
                }
            } catch (TerminationException | Error.UserDefinedXPathException e) {
                throw e;
            } catch (XPathException e2) {
                if (this.f99371p == null) {
                    throw e2;
                }
                XPathException xPathException = new XPathException(e2.getMessage() + ". Failed while atomizing the " + this.f99371p.getMessage(), e2.getErrorCodeLocalPart(), e2.getLocator());
                xPathException.setXPathContext(xPathContext);
                xPathException.maybeSetLocation(getLocation());
                throw xPathException;
            }
        }
        if (i == 0 && !this.f99370o) {
            typeError("An empty sequence is not allowed as the " + this.f99371p.getMessage(), this.f99371p.getErrorCode(), null);
        }
        return atomicValue;
    }
}
