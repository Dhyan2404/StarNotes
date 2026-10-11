package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.CodepointCollatingComparer;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CompareToStringConstant extends CompareToConstant {

    /* renamed from: o */
    public final UnicodeString f99209o;

    public CompareToStringConstant(Expression expression, int i, UnicodeString unicodeString) {
        super(expression);
        this.operator = i;
        this.f99209o = unicodeString;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99209o.hashCode() ^ (getLhsExpression().hashCode() + 1212879520);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        CompareToStringConstant compareToStringConstant = new CompareToStringConstant(getLhsExpression().copy(rebindingMap), this.operator, this.f99209o);
        ExpressionTool.copyLocationInfo(this, compareToStringConstant);
        return compareToStringConstant;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return m62559d(CodepointCollator.getInstance().compareStrings(getLhsExpression().evaluateItem(xPathContext).getUnicodeStringValue(), this.f99209o));
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof CompareToStringConstant) {
            CompareToStringConstant compareToStringConstant = (CompareToStringConstant) obj;
            if (compareToStringConstant.getLhsExpression().isEqual(getLhsExpression()) && compareToStringConstant.f99209o.equals(this.f99209o) && compareToStringConstant.operator == this.operator) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("compareToString", this);
        expressionPresenter.emitAttribute("op", Token.tokens[this.operator]);
        expressionPresenter.emitAttribute("val", getComparand().toString());
        getLhsExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public AtomicComparer getAtomicComparer() {
        return CodepointCollatingComparer.getInstance();
    }

    public UnicodeString getComparand() {
        return this.f99209o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "compareToString";
    }

    @Override // net.p110sf.saxon.expr.CompareToConstant, net.p110sf.saxon.expr.ComparisonExpression
    public Expression getRhsExpression() {
        return new StringLiteral(this.f99209o);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getLhsExpression().toShortString() + " " + Token.tokens[this.operator] + " \"" + this.f99209o + "\"";
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getLhsExpression()) + " " + Token.tokens[this.operator] + " " + this.f99209o.toString();
    }
}
