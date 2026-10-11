package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.DoubleSortComparer;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class CompareToIntegerConstant extends CompareToConstant {

    /* renamed from: o */
    public final long f99208o;

    public CompareToIntegerConstant(Expression expression, int i, long j) {
        super(expression);
        this.operator = i;
        this.f99208o = j;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return ((int) this.f99208o) ^ (getLhsExpression().hashCode() + 325784224);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        CompareToIntegerConstant compareToIntegerConstant = new CompareToIntegerConstant(getLhsExpression().copy(rebindingMap), this.operator, this.f99208o);
        ExpressionTool.copyLocationInfo(this, compareToIntegerConstant);
        return compareToIntegerConstant;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        NumericValue numericValue = (NumericValue) getLhsExpression().evaluateItem(xPathContext);
        return numericValue.isNaN() ? this.operator == 51 : m62559d(numericValue.compareTo(this.f99208o));
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof CompareToIntegerConstant) {
            CompareToIntegerConstant compareToIntegerConstant = (CompareToIntegerConstant) obj;
            if (compareToIntegerConstant.getLhsExpression().isEqual(getLhsExpression()) && compareToIntegerConstant.f99208o == this.f99208o && compareToIntegerConstant.operator == this.operator) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("compareToInt", this);
        expressionPresenter.emitAttribute("op", Token.tokens[this.operator]);
        expressionPresenter.emitAttribute("val", this.f99208o + "");
        getLhsExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public AtomicComparer getAtomicComparer() {
        return DoubleSortComparer.getInstance();
    }

    public long getComparand() {
        return this.f99208o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "compareToInt";
    }

    @Override // net.p110sf.saxon.expr.CompareToConstant, net.p110sf.saxon.expr.ComparisonExpression
    public Expression getRhsExpression() {
        return new Literal(new Int64Value(this.f99208o));
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getLhsExpression().toShortString() + " " + Token.tokens[this.operator] + " " + this.f99208o;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getLhsExpression()) + " " + Token.tokens[this.operator] + " " + this.f99208o;
    }
}
