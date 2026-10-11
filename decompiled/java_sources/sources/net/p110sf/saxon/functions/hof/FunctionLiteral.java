package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;

/* loaded from: classes11.dex */
public class FunctionLiteral extends Literal {
    public FunctionLiteral(Function function) {
        super(function);
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getGroundedValue().hashCode();
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return 8388608;
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        FunctionLiteral functionLiteral = new FunctionLiteral(getGroundedValue());
        ExpressionTool.copyLocationInfo(this, functionLiteral);
        return functionLiteral;
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof FunctionLiteral) && ((FunctionLiteral) obj).getGroundedValue() == getGroundedValue();
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        Function groundedValue = getGroundedValue();
        if (groundedValue instanceof UserFunction) {
            new UserFunctionReference((UserFunction) groundedValue).export(expressionPresenter);
        } else {
            groundedValue.export(expressionPresenter);
        }
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "namedFunctionRef";
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void setRetainedStaticContext(RetainedStaticContext retainedStaticContext) {
        super.setRetainedStaticContext(retainedStaticContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        if (getGroundedValue() instanceof AbstractFunction) {
            ((AbstractFunction) getGroundedValue()).simplify();
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if (getGroundedValue() instanceof AbstractFunction) {
            ((AbstractFunction) getGroundedValue()).typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Literal
    public Function getGroundedValue() {
        return (Function) super.getGroundedValue();
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public FunctionItemType getItemType() {
        return getGroundedValue().getFunctionItemType();
    }
}
