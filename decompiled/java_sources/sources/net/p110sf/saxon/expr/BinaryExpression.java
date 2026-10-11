package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public abstract class BinaryExpression extends Expression {

    /* renamed from: n */
    public final Operand f99191n;

    /* renamed from: o */
    public final Operand f99192o;
    protected int operator;

    public BinaryExpression(Expression expression, int i, Expression expression2) {
        this.operator = i;
        this.f99191n = new Operand(this, expression, getOperandRole(0));
        this.f99192o = new Operand(this, expression2, getOperandRole(1));
        adoptChildExpression(expression);
        adoptChildExpression(expression2);
    }

    public static boolean isAssociative(int i) {
        return i == 10 || i == 9 || i == 1 || i == 23 || i == 15 || i == 17;
    }

    public static boolean isCommutative(int i) {
        return i == 10 || i == 9 || i == 1 || i == 23 || i == 15 || i == 17 || i == 6 || i == 50 || i == 22 || i == 51;
    }

    public static boolean isInverse(int i, int i2) {
        return i != i2 && i == Token.inverse(i2);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        Expression lhsExpression = getLhsExpression();
        Expression rhsExpression = getRhsExpression();
        return (Cardinality.allowsZero(lhsExpression.getCardinality()) || !(lhsExpression.getItemType() instanceof AtomicType) || Cardinality.allowsZero(rhsExpression.getCardinality()) || !(rhsExpression.getItemType() instanceof AtomicType)) ? 24576 : 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        int i = this.operator;
        return getRhsExpression().hashCode() ^ (("BinaryExpression " + Math.min(i, Token.inverse(i))).hashCode() ^ getLhsExpression().hashCode());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608;
    }

    /* renamed from: d */
    public final List<Expression> m62549d() {
        return m62550e(new ArrayList());
    }

    public String displayOperator() {
        return Token.tokens[this.operator];
    }

    /* renamed from: e */
    public final List<Expression> m62550e(List<Expression> list) {
        if ((getLhsExpression() instanceof BinaryExpression) && ((BinaryExpression) getLhsExpression()).operator == this.operator) {
            ((BinaryExpression) getLhsExpression()).m62550e(list);
        } else {
            int hashCode = getLhsExpression().hashCode();
            list.add(getLhsExpression());
            for (int size = list.size() - 1; size > 0; size--) {
                int i = size - 1;
                if (hashCode <= list.get(i).hashCode()) {
                    break;
                }
                list.set(size, list.get(i));
                list.set(i, getLhsExpression());
            }
        }
        if ((getRhsExpression() instanceof BinaryExpression) && ((BinaryExpression) getRhsExpression()).operator == this.operator) {
            ((BinaryExpression) getRhsExpression()).m62550e(list);
        } else {
            int hashCode2 = getRhsExpression().hashCode();
            list.add(getRhsExpression());
            for (int size2 = list.size() - 1; size2 > 0; size2--) {
                int i2 = size2 - 1;
                if (hashCode2 <= list.get(i2).hashCode()) {
                    break;
                }
                list.set(size2, list.get(i2));
                list.set(i2, getRhsExpression());
            }
        }
        return list;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof BinaryExpression) || !hasCompatibleStaticContext((Expression) obj)) {
            return false;
        }
        BinaryExpression binaryExpression = (BinaryExpression) obj;
        Expression lhsExpression = getLhsExpression();
        Expression rhsExpression = getRhsExpression();
        Expression lhsExpression2 = binaryExpression.getLhsExpression();
        Expression rhsExpression2 = binaryExpression.getRhsExpression();
        if (this.operator == binaryExpression.operator) {
            if (lhsExpression.isEqual(lhsExpression2) && rhsExpression.isEqual(rhsExpression2)) {
                return true;
            }
            if (isCommutative(this.operator) && lhsExpression.isEqual(rhsExpression2) && rhsExpression.isEqual(lhsExpression2)) {
                return true;
            }
            if (isAssociative(this.operator) && m62551g(m62549d(), binaryExpression.m62549d())) {
                return true;
            }
        }
        return isInverse(this.operator, binaryExpression.operator) && lhsExpression.isEqual(rhsExpression2) && rhsExpression.isEqual(lhsExpression2);
    }

    public void explainExtraAttributes(ExpressionPresenter expressionPresenter) {
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(tag(), this);
        expressionPresenter.emitAttribute("op", displayOperator());
        explainExtraAttributes(expressionPresenter);
        getLhsExpression().export(expressionPresenter);
        getRhsExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    /* renamed from: g */
    public final <T> boolean m62551g(List<T> list, List<T> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!list.get(i).equals(list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 3;
    }

    public Operand getLhs() {
        return this.f99191n;
    }

    public final Expression getLhsExpression() {
        return this.f99191n.getChildExpression();
    }

    public OperandRole getOperandRole(int i) {
        return OperandRole.SINGLE_ATOMIC;
    }

    public int getOperator() {
        return this.operator;
    }

    public Operand getRhs() {
        return this.f99192o;
    }

    public final Expression getRhsExpression() {
        return this.f99192o.getChildExpression();
    }

    /* renamed from: h */
    public final String m62552h(Expression expression) {
        String shortString = expression.toShortString();
        if (!(expression instanceof BinaryExpression) || XPathParser.operatorPrecedence(((BinaryExpression) expression).operator) >= XPathParser.operatorPrecedence(this.operator)) {
            return shortString;
        }
        return MotionUtils.f31761c + shortString + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final Iterable<Operand> operands() {
        return operandList(this.f99191n, this.f99192o);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Item evaluateItem;
        this.f99191n.optimize(expressionVisitor, contextItemStaticInfo);
        this.f99192o.optimize(expressionVisitor, contextItemStaticInfo);
        try {
            return (expressionVisitor.obtainOptimizer().isOptionSet(32768) && (getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal) && (evaluateItem = evaluateItem(expressionVisitor.getStaticContext().makeEarlyEvaluationContext())) != null) ? Literal.makeLiteral(evaluateItem.materialize(), this) : this;
        } catch (XPathException unused) {
            return this;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void setFlattened(boolean z) {
        getLhsExpression().setFlattened(z);
        getRhsExpression().setFlattened(z);
    }

    public void setLhsExpression(Expression expression) {
        this.f99191n.setChildExpression(expression);
    }

    public void setRhsExpression(Expression expression) {
        this.f99192o.setChildExpression(expression);
    }

    public String tag() {
        return "operator";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return m62552h(getLhsExpression()) + " " + displayOperator() + " " + m62552h(getRhsExpression());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getLhsExpression()) + " " + displayOperator() + " " + ExpressionTool.parenthesize(getRhsExpression());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        resetLocalStaticProperties();
        this.f99191n.typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99192o.typeCheck(expressionVisitor, contextItemStaticInfo);
        try {
            return ((getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal)) ? Literal.makeLiteral(evaluateItem(expressionVisitor.getStaticContext().makeEarlyEvaluationContext()).materialize(), this) : this;
        } catch (XPathException unused) {
            return this;
        }
    }
}
