package net.p110sf.saxon.expr.sort;

import java.util.function.Predicate;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.ConditionalSorter;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ConditionalSorter extends Expression {

    /* renamed from: p */
    public static final OperandRole f100019p = new OperandRole(16, OperandUsage.TRANSMISSION, SequenceType.ANY_SEQUENCE, new Predicate() { // from class: com.sunia.HTREnginev2.h8e
        @Override // java.util.function.Predicate
        public final boolean test(Object obj) {
            boolean m62893i;
            m62893i = ConditionalSorter.m62893i((Expression) obj);
            return m62893i;
        }
    });

    /* renamed from: n */
    public final Operand f100020n;

    /* renamed from: o */
    public final Operand f100021o;

    @FunctionalInterface
    /* renamed from: net.sf.saxon.expr.sort.ConditionalSorter$a */
    /* loaded from: classes11.dex */
    public interface InterfaceC18326a {
        /* renamed from: a */
        Expression mo53936a(Expression expression) throws XPathException;
    }

    public ConditionalSorter(Expression expression, DocumentSorter documentSorter) {
        this.f100020n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        this.f100021o = new Operand(this, documentSorter, f100019p);
        adoptChildExpression(expression);
        adoptChildExpression(documentSorter);
    }

    /* renamed from: h */
    public static /* synthetic */ Expression m62892h(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression expression) throws XPathException {
        return expression.optimize(expressionVisitor, contextItemStaticInfo);
    }

    /* renamed from: i */
    public static /* synthetic */ boolean m62893i(Expression expression) {
        return expression instanceof DocumentSorter;
    }

    /* renamed from: j */
    public static /* synthetic */ Expression m62894j(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression expression) throws XPathException {
        return expression.typeCheck(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return getCondition().getSpecialProperties() | 131072;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ConditionalSorter conditionalSorter = new ConditionalSorter(getCondition().copy(rebindingMap), (DocumentSorter) getDocumentSorter().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, conditionalSorter);
        return conditionalSorter;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("conditionalSort", this);
        getCondition().export(expressionPresenter);
        getDocumentSorter().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return getDocumentSorter().getCardinality();
    }

    public Expression getCondition() {
        return this.f100020n.getChildExpression();
    }

    public DocumentSorter getDocumentSorter() {
        return (DocumentSorter) this.f100021o.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "conditionalSort";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getDocumentSorter().getItemType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return getCondition().effectiveBooleanValue(xPathContext) ? getDocumentSorter().iterate(xPathContext) : getDocumentSorter().getBaseExpression().iterate(xPathContext);
    }

    /* renamed from: k */
    public final Expression m62895k(InterfaceC18326a interfaceC18326a) throws XPathException {
        Expression mo53936a = interfaceC18326a.mo53936a(getDocumentSorter());
        if (!(mo53936a instanceof DocumentSorter)) {
            return mo53936a;
        }
        this.f100021o.setChildExpression(mo53936a);
        Expression mo53936a2 = interfaceC18326a.mo53936a(getCondition());
        if (mo53936a2 instanceof Literal) {
            return ((Literal) mo53936a2).getGroundedValue().effectiveBooleanValue() ? mo53936a : ((DocumentSorter) mo53936a).getBaseExpression();
        }
        this.f100020n.setChildExpression(mo53936a2);
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f100020n, this.f100021o);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(final ExpressionVisitor expressionVisitor, final ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return m62895k(new InterfaceC18326a() { // from class: com.sunia.HTREnginev2.f8e
            @Override // net.p110sf.saxon.expr.sort.ConditionalSorter.InterfaceC18326a
            /* renamed from: a */
            public final Expression mo53936a(Expression expression) {
                Expression m62892h;
                m62892h = ConditionalSorter.m62892h(ExpressionVisitor.this, contextItemStaticInfo, expression);
                return m62892h;
            }
        });
    }

    public void setCondition(Expression expression) {
        this.f100020n.setChildExpression(expression);
    }

    public void setDocumentSorter(DocumentSorter documentSorter) {
        this.f100021o.setChildExpression(documentSorter);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        return m62895k(new InterfaceC18326a() { // from class: com.sunia.HTREnginev2.e8e
            @Override // net.p110sf.saxon.expr.sort.ConditionalSorter.InterfaceC18326a
            /* renamed from: a */
            public final Expression mo53936a(Expression expression) {
                return expression.simplify();
            }
        });
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(final ExpressionVisitor expressionVisitor, final ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return m62895k(new InterfaceC18326a() { // from class: com.sunia.HTREnginev2.g8e
            @Override // net.p110sf.saxon.expr.sort.ConditionalSorter.InterfaceC18326a
            /* renamed from: a */
            public final Expression mo53936a(Expression expression) {
                Expression m62894j;
                m62894j = ConditionalSorter.m62894j(ExpressionVisitor.this, contextItemStaticInfo, expression);
                return m62894j;
            }
        });
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        Expression unordered = getDocumentSorter().unordered(z, z2);
        return unordered instanceof DocumentSorter ? this : unordered;
    }
}
