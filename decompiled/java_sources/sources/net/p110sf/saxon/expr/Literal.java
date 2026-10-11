package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.SimpleTypeComparison;
import net.p110sf.saxon.functions.hof.FunctionLiteral;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerRange;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.QualifiedNameValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Literal extends Expression {

    /* renamed from: o */
    public static final /* synthetic */ boolean f99302o = false;

    /* renamed from: n */
    public final GroundedValue f99303n;

    public Literal(GroundedValue groundedValue) {
        this.f99303n = groundedValue.reduce();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m62598c(Outputter outputter, Item item) throws XPathException {
        outputter.m62516b(item, getLocation(), 524288);
    }

    public static void exportAtomicValue(AtomicValue atomicValue, ExpressionPresenter expressionPresenter) throws XPathException {
        if ("JS".equals(((ExpressionPresenter.ExportOptions) expressionPresenter.getOptions()).target)) {
            atomicValue.checkValidInJavascript();
        }
        AtomicType itemType = atomicValue.getItemType();
        String stringValue = atomicValue.getStringValue();
        if (itemType.equals(BuiltInAtomicType.STRING)) {
            expressionPresenter.startElement(ExtensionNamespaceContext.EXSLT_STRING_PREFIX);
            expressionPresenter.emitAttribute("val", stringValue);
            expressionPresenter.endElement();
            return;
        }
        if (itemType.equals(BuiltInAtomicType.INTEGER)) {
            expressionPresenter.startElement("int");
            expressionPresenter.emitAttribute("val", stringValue);
            expressionPresenter.endElement();
            return;
        }
        if (itemType.equals(BuiltInAtomicType.DECIMAL)) {
            expressionPresenter.startElement("dec");
            expressionPresenter.emitAttribute("val", stringValue);
            expressionPresenter.endElement();
            return;
        }
        if (itemType.equals(BuiltInAtomicType.DOUBLE)) {
            expressionPresenter.startElement("dbl");
            expressionPresenter.emitAttribute("val", stringValue);
            expressionPresenter.endElement();
            return;
        }
        if (itemType.equals(BuiltInAtomicType.BOOLEAN)) {
            expressionPresenter.startElement(((BooleanValue) atomicValue).effectiveBooleanValue() ? "true" : "false");
            expressionPresenter.endElement();
            return;
        }
        if (!(atomicValue instanceof QualifiedNameValue)) {
            expressionPresenter.startElement("atomic");
            expressionPresenter.emitAttribute("val", stringValue);
            expressionPresenter.emitAttribute("type", AlphaCode.fromItemType(itemType));
            expressionPresenter.endElement();
            return;
        }
        expressionPresenter.startElement("qName");
        QualifiedNameValue qualifiedNameValue = (QualifiedNameValue) atomicValue;
        expressionPresenter.emitAttribute("pre", qualifiedNameValue.getPrefix());
        expressionPresenter.emitAttribute("uri", qualifiedNameValue.getNamespaceURI());
        expressionPresenter.emitAttribute("loc", qualifiedNameValue.getLocalName());
        if (!itemType.equals(BuiltInAtomicType.QNAME)) {
            expressionPresenter.emitAttribute("type", itemType.getEQName());
        }
        expressionPresenter.endElement();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b3, code lost:
    
        if (r0 != 13) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void exportValue(net.p110sf.saxon.om.Sequence r5, final net.p110sf.saxon.trace.ExpressionPresenter r6) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.Literal.exportValue(net.sf.saxon.om.Sequence, net.sf.saxon.trace.ExpressionPresenter):void");
    }

    public static boolean hasEffectiveBooleanValue(Expression expression, boolean z) {
        if (!(expression instanceof Literal)) {
            return false;
        }
        try {
            return z == ((Literal) expression).getGroundedValue().effectiveBooleanValue();
        } catch (XPathException unused) {
            return false;
        }
    }

    public static boolean isAtomic(Expression expression) {
        return (expression instanceof Literal) && (((Literal) expression).getGroundedValue() instanceof AtomicValue);
    }

    public static boolean isConstantBoolean(Expression expression, boolean z) {
        if (!(expression instanceof Literal)) {
            return false;
        }
        GroundedValue groundedValue = ((Literal) expression).getGroundedValue();
        return (groundedValue instanceof BooleanValue) && ((BooleanValue) groundedValue).getBooleanValue() == z;
    }

    public static boolean isConstantOne(Expression expression) {
        if (!(expression instanceof Literal)) {
            return false;
        }
        GroundedValue groundedValue = ((Literal) expression).getGroundedValue();
        return (groundedValue instanceof Int64Value) && ((Int64Value) groundedValue).longValue() == 1;
    }

    public static boolean isEmptySequence(Expression expression) {
        return (expression instanceof Literal) && ((Literal) expression).getGroundedValue().getLength() == 0;
    }

    public static Literal makeEmptySequence() {
        return new Literal(EmptySequence.getInstance());
    }

    public static Literal makeLiteral(GroundedValue groundedValue) {
        GroundedValue reduce = groundedValue.reduce();
        if (reduce instanceof StringValue) {
            return new StringLiteral((StringValue) reduce);
        }
        if ((reduce instanceof Function) && !(reduce instanceof MapItem) && !(reduce instanceof ArrayItem)) {
            return new FunctionLiteral((Function) reduce);
        }
        return new Literal(reduce);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        return pathMapNodeSet;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        if (this.f99303n.getLength() == 0) {
            return 8192;
        }
        GroundedValue groundedValue = this.f99303n;
        if (groundedValue instanceof AtomicValue) {
            return 16384;
        }
        SequenceIterator iterate = groundedValue.iterate();
        if (iterate.next() == null) {
            return 8192;
        }
        return iterate.next() != null ? 32768 : 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99303n instanceof AtomicSequence ? SimpleTypeComparison.getInstance().hash((AtomicSequence) this.f99303n) : super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return this.f99303n.getLength() == 0 ? 234815488 : 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Literal literal = new Literal(this.f99303n);
        ExpressionTool.copyLocationInfo(this, literal);
        return literal;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return this.f99303n.effectiveBooleanValue();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof Literal)) {
            return false;
        }
        GroundedValue groundedValue = this.f99303n;
        GroundedValue groundedValue2 = ((Literal) obj).f99303n;
        SequenceIterator iterate = groundedValue.iterate();
        SequenceIterator iterate2 = groundedValue2.iterate();
        while (true) {
            Item next = iterate.next();
            Item next2 = iterate2.next();
            if (next != null || next2 != null) {
                if (next == null || next2 == null) {
                    break;
                }
                if (next != next2) {
                    boolean z = next instanceof NodeInfo;
                    if (z == (next2 instanceof NodeInfo)) {
                        if (!z) {
                            boolean z2 = next instanceof AtomicValue;
                            if (z2 != (next2 instanceof AtomicValue) || !z2) {
                                break;
                            }
                            AtomicValue atomicValue = (AtomicValue) next;
                            AtomicValue atomicValue2 = (AtomicValue) next2;
                            if (!atomicValue.isIdentical(atomicValue2) || atomicValue.getItemType() != atomicValue2.getItemType()) {
                                break;
                            }
                        } else if (!next.equals(next2)) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                }
            } else {
                return true;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UnicodeString evaluateAsString(XPathContext xPathContext) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) evaluateItem(xPathContext);
        return atomicValue == null ? EmptyUnicodeString.getInstance() : atomicValue.getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        return this.f99303n.head();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        if (this.f99303n.getLength() == 0) {
            return;
        }
        super.evaluatePendingUpdates(xPathContext, pendingUpdateList);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        exportValue(this.f99303n, expressionPresenter);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final int getDependencies() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "literal";
    }

    public GroundedValue getGroundedValue() {
        return this.f99303n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 7;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        GroundedValue groundedValue = this.f99303n;
        if (groundedValue instanceof IntegerValue) {
            return new IntegerValue[]{(IntegerValue) groundedValue, (IntegerValue) groundedValue};
        }
        if (groundedValue instanceof IntegerRange) {
            return new IntegerValue[]{Int64Value.makeIntegerValue(((IntegerRange) groundedValue).getStart()), Int64Value.makeIntegerValue(((IntegerRange) this.f99303n).getEnd())};
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        GroundedValue groundedValue = this.f99303n;
        if (groundedValue instanceof AtomicValue) {
            return ((AtomicValue) groundedValue).getItemType();
        }
        if (groundedValue.getLength() == 0) {
            return ErrorType.getInstance();
        }
        return SequenceTool.getItemType(this.f99303n, getConfiguration().getTypeHierarchy());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getNetCost() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        if (this.f99303n.getLength() == 0) {
            return UType.VOID;
        }
        GroundedValue groundedValue = this.f99303n;
        return groundedValue instanceof AtomicValue ? ((AtomicValue) groundedValue).getUType() : groundedValue instanceof Function ? UType.FUNCTION : super.getStaticUType(uType);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "Literal";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isSubtreeExpression() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        return this.f99303n.getLength() == 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return this.f99303n.iterate();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(final Outputter outputter, XPathContext xPathContext) throws XPathException {
        GroundedValue groundedValue = this.f99303n;
        if (groundedValue instanceof Item) {
            outputter.m62516b((Item) groundedValue, getLocation(), 524288);
        } else {
            SequenceTool.supply(groundedValue.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.uzi
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    Literal.this.m62598c(outputter, item);
                }
            });
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        return isEmptySequence(this) ? new NodeTestPattern(ErrorType.getInstance()) : super.toPattern(configuration);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        if (this.f99303n.getLength() == 0) {
            return "()";
        }
        if (this.f99303n.getLength() == 1) {
            return this.f99303n.toShortString();
        }
        return MotionUtils.f31761c + this.f99303n.head().toShortString() + ", ...{" + this.f99303n.getLength() + "})";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return this.f99303n.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    public SequenceIterator iterate() throws XPathException {
        return this.f99303n.iterate();
    }

    public static Literal makeLiteral(GroundedValue groundedValue, Expression expression) {
        Literal makeLiteral = makeLiteral(groundedValue);
        ExpressionTool.copyLocationInfo(expression, makeLiteral);
        return makeLiteral;
    }
}
