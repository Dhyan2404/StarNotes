package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.TypeCheckingFilter;
import net.p110sf.saxon.expr.ItemChecker;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.DocumentNodeTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public final class ItemChecker extends UnaryExpression {

    /* renamed from: o */
    public final ItemType f99273o;

    /* renamed from: p */
    public final RoleDiagnostic f99274p;

    /* renamed from: net.sf.saxon.expr.ItemChecker$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18303a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f99275a;

        static {
            int[] iArr = new int[Affinity.values().length];
            f99275a = iArr;
            try {
                iArr[Affinity.OVERLAPS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99275a[Affinity.SUBSUMES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99275a[Affinity.SAME_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f99275a[Affinity.SUBSUMED_BY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ItemChecker(Expression expression, ItemType itemType, RoleDiagnostic roleDiagnostic) {
        super(expression);
        this.f99273o = itemType;
        this.f99274p = roleDiagnostic;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m62592e(TypeHierarchy typeHierarchy, Expression expression, Item item) {
        if (this.f99273o.matches(item, typeHierarchy)) {
            return;
        }
        if (this.f99273o.getUType().subsumes(UType.STRING) && BuiltInAtomicType.ANY_URI.matches(item, typeHierarchy)) {
            return;
        }
        XPathException xPathException = new XPathException(this.f99274p.composeErrorMessage(this.f99273o, item, typeHierarchy), this.f99274p.getErrorCode());
        xPathException.setFailingExpression(expression);
        xPathException.setLocator(expression.getLocation());
        xPathException.setIsTypeError(!"XPDY0050".equals(r2));
        throw new UncheckedXPathException(xPathException);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99273o.hashCode() ^ super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ItemChecker itemChecker = new ItemChecker(getBaseExpression().copy(rebindingMap), this.f99273o, this.f99274p);
        ExpressionTool.copyLocationInfo(this, itemChecker);
        return itemChecker;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return super.equals(obj) && this.f99273o == ((ItemChecker) obj).f99273o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
        Item evaluateItem = getBaseExpression().evaluateItem(xPathContext);
        if (evaluateItem == null) {
            return null;
        }
        if (this.f99273o.matches(evaluateItem, typeHierarchy)) {
            return evaluateItem;
        }
        if (this.f99273o.getUType().subsumes(UType.STRING) && (BuiltInAtomicType.ANY_URI.matches(evaluateItem, typeHierarchy) || BuiltInAtomicType.UNTYPED_ATOMIC.matches(evaluateItem, typeHierarchy))) {
            return evaluateItem;
        }
        String composeErrorMessage = this.f99274p.composeErrorMessage(this.f99273o, evaluateItem, typeHierarchy);
        String errorCode = this.f99274p.getErrorCode();
        if ("XPDY0050".equals(errorCode)) {
            dynamicError(composeErrorMessage, errorCode, xPathContext);
        } else {
            typeError(composeErrorMessage, errorCode, xPathContext);
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("treat", this);
        expressionPresenter.emitAttribute("as", AlphaCode.fromItemType(this.f99273o));
        expressionPresenter.emitAttribute("diag", this.f99274p.save());
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "treatAs";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return !Cardinality.allowsMany(getCardinality()) ? 23 : 22;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        return getBaseExpression().getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        ItemType itemType = getBaseExpression().getItemType();
        int i = C18303a.f99275a[getConfiguration().getTypeHierarchy().relationship(this.f99273o, itemType).ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3) ? itemType : this.f99273o;
        }
        ItemType itemType2 = this.f99273o;
        return ((itemType2 instanceof NodeTest) && (itemType instanceof NodeTest)) ? new CombinedNodeTest((NodeTest) itemType2, 23, (NodeTest) itemType) : itemType2;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    public ItemType getRequiredType() {
        return this.f99273o;
    }

    public RoleDiagnostic getRoleLocator() {
        return this.f99274p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.fromTypeCode(this.f99273o.getPrimitiveType());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ItemChecker";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        final Expression baseExpression = getBaseExpression();
        SequenceIterator iterate = baseExpression.iterate(xPathContext);
        final TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
        return new ItemCheckingIterator(iterate, new Consumer() { // from class: com.sunia.HTREnginev2.dqi
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ItemChecker.this.m62592e(typeHierarchy, baseExpression, (Item) obj);
            }
        });
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        Affinity relationship = expressionVisitor.getConfiguration().getTypeHierarchy().relationship(this.f99273o, getBaseExpression().getItemType());
        return (relationship == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMES) ? getBaseExpression() : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        int i;
        Expression baseExpression = getBaseExpression();
        if (baseExpression instanceof CardinalityChecker) {
            CardinalityChecker cardinalityChecker = (CardinalityChecker) baseExpression;
            i = cardinalityChecker.getRequiredCardinality();
            baseExpression = cardinalityChecker.getBaseExpression();
        } else {
            i = 57344;
        }
        if ((baseExpression.getImplementationMethod() & 4) == 0 || (this.f99273o instanceof DocumentNodeTest)) {
            super.process(outputter, xPathContext);
            return;
        }
        TypeCheckingFilter typeCheckingFilter = new TypeCheckingFilter(outputter);
        typeCheckingFilter.setRequiredType(this.f99273o, i, this.f99274p, getLocation());
        baseExpression.process(typeCheckingFilter, xPathContext);
        typeCheckingFilter.finalCheck();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        Expression simplify = getBaseExpression().simplify();
        if (this.f99273o instanceof AnyItemType) {
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
    public String toString() {
        return MotionUtils.f31761c + getBaseExpression() + ") treat as " + this.f99273o.toString();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        ItemType itemType;
        Affinity relationship;
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        Expression baseExpression = getBaseExpression();
        if (baseExpression instanceof Block) {
            ArrayList arrayList = new ArrayList();
            Iterator<Operand> it2 = ((Block) baseExpression).operands().iterator();
            while (it2.hasNext()) {
                arrayList.add(new ItemChecker(it2.next().getChildExpression(), this.f99273o, this.f99274p));
            }
            Block block = new Block((Expression[]) arrayList.toArray(new Expression[0]));
            ExpressionTool.copyLocationInfo(this, block);
            return block.typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        int cardinality = baseExpression.getCardinality();
        if (cardinality == 8192 || (relationship = typeHierarchy.relationship(this.f99273o, (itemType = baseExpression.getItemType()))) == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMES) {
            return baseExpression;
        }
        if (relationship == Affinity.DISJOINT) {
            if (this.f99273o.equals(BuiltInAtomicType.STRING) && typeHierarchy.isSubType(itemType, BuiltInAtomicType.ANY_URI)) {
                return baseExpression;
            }
            if (!Cardinality.allowsZero(cardinality)) {
                XPathException xPathException = new XPathException(this.f99274p.composeErrorMessage(this.f99273o, baseExpression, typeHierarchy));
                xPathException.setErrorCode(this.f99274p.getErrorCode());
                xPathException.setLocation(getLocation());
                xPathException.setIsTypeError(this.f99274p.isTypeError());
                throw xPathException;
            }
            if (!(baseExpression instanceof Literal)) {
                String composeErrorMessage = this.f99274p.composeErrorMessage(this.f99273o, baseExpression, typeHierarchy);
                expressionVisitor.getStaticContext().issueWarning("The only value that can pass type-checking is an empty sequence. " + composeErrorMessage, getLocation());
            }
        }
        return this;
    }
}
