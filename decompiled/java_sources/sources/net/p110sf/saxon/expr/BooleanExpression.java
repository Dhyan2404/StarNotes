package net.p110sf.saxon.expr;

import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.BooleanFn;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public abstract class BooleanExpression extends BinaryExpression implements Negatable {
    public BooleanExpression(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
    }

    public static void listAndComponents(Expression expression, List<Expression> list) {
        if (!(expression instanceof BooleanExpression) || ((BooleanExpression) expression).getOperator() != 10) {
            list.add(expression);
            return;
        }
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            listAndComponents(it2.next().getChildExpression(), list);
        }
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public abstract boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException;

    public Expression forceToBoolean(Expression expression) {
        return (expression.getItemType() == BuiltInAtomicType.BOOLEAN && expression.getCardinality() == 16384) ? expression : SystemFunction.makeCall("boolean", getRetainedStaticContext(), expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return Token.tokens[getOperator()] + "-expression";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public OperandRole getOperandRole(int i) {
        return OperandRole.INSPECT;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.Negatable
    public boolean isNegatable(TypeHierarchy typeHierarchy) {
        return true;
    }

    public abstract Expression negate();

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        boolean isOptimizeForStreaming = expressionVisitor.isOptimizeForStreaming();
        setLhsExpression(ExpressionTool.unsortedIfHomogeneous(getLhsExpression(), isOptimizeForStreaming));
        setRhsExpression(ExpressionTool.unsortedIfHomogeneous(getRhsExpression(), isOptimizeForStreaming));
        Expression rewriteEffectiveBooleanValue = BooleanFn.rewriteEffectiveBooleanValue(getLhsExpression(), expressionVisitor, contextItemStaticInfo);
        if (rewriteEffectiveBooleanValue != null) {
            setLhsExpression(rewriteEffectiveBooleanValue);
        }
        Expression rewriteEffectiveBooleanValue2 = BooleanFn.rewriteEffectiveBooleanValue(getRhsExpression(), expressionVisitor, contextItemStaticInfo);
        if (rewriteEffectiveBooleanValue2 != null) {
            setRhsExpression(rewriteEffectiveBooleanValue2);
        }
        return preEvaluate();
    }

    public abstract Expression preEvaluate();

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        XPathException ebvError = TypeChecker.ebvError(getLhsExpression(), typeHierarchy);
        if (ebvError != null) {
            ebvError.setLocator(getLocation());
            throw ebvError;
        }
        XPathException ebvError2 = TypeChecker.ebvError(getRhsExpression(), typeHierarchy);
        if (ebvError2 != null) {
            ebvError2.setLocator(getLocation());
            throw ebvError2;
        }
        if ((getLhsExpression() instanceof Literal) && !(((Literal) getLhsExpression()).getGroundedValue() instanceof BooleanValue)) {
            setLhsExpression(Literal.makeLiteral(BooleanValue.get(getLhsExpression().effectiveBooleanValue(expressionVisitor.makeDynamicContext())), this));
        }
        if ((getRhsExpression() instanceof Literal) && !(((Literal) getRhsExpression()).getGroundedValue() instanceof BooleanValue)) {
            setRhsExpression(Literal.makeLiteral(BooleanValue.get(getRhsExpression().effectiveBooleanValue(expressionVisitor.makeDynamicContext())), this));
        }
        return preEvaluate();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(effectiveBooleanValue(xPathContext));
    }
}
