package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class SimpleStepExpression extends SlashExpression {

    /* renamed from: r */
    public static final OperandRole f99369r = new OperandRole(6, OperandUsage.TRANSMISSION, SequenceType.ANY_SEQUENCE);

    public SimpleStepExpression(Expression expression, Expression expression2) {
        super(expression, expression2);
        if (!(expression2 instanceof AxisExpression)) {
            throw new IllegalArgumentException();
        }
    }

    public AxisExpression getAxisExpression() {
        return (AxisExpression) getStep();
    }

    @Override // net.p110sf.saxon.expr.SlashExpression, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "simpleStep";
    }

    @Override // net.p110sf.saxon.expr.SlashExpression, net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.SlashExpression, net.p110sf.saxon.expr.BinaryExpression
    public OperandRole getOperandRole(int i) {
        return i == 0 ? OperandRole.FOCUS_CONTROLLING_SELECT : f99369r;
    }

    @Override // net.p110sf.saxon.expr.SlashExpression, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        try {
            NodeInfo nodeInfo = (NodeInfo) getStart().evaluateItem(xPathContext);
            return nodeInfo == null ? EmptyIterator.getInstance() : ((AxisExpression) getStep()).iterate(nodeInfo);
        } catch (XPathException e) {
            if (!"XPDY0002".equals(e.getErrorCodeLocalPart()) || e.hasBeenReported()) {
                throw e;
            }
            throw new XPathException("The context item for axis step " + toShortString() + " is absent", "XPDY0002", getLocation());
        }
    }

    @Override // net.p110sf.saxon.expr.SlashExpression, net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    @Override // net.p110sf.saxon.expr.SlashExpression, net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        ItemType itemType = getStart().getItemType();
        if (itemType == ErrorType.getInstance()) {
            return Literal.makeEmptySequence();
        }
        ContextItemStaticInfo makeContextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(itemType, false);
        makeContextItemStaticInfo.setContextSettingExpression(getStart());
        getRhs().typeCheck(expressionVisitor, makeContextItemStaticInfo);
        if (getStep() instanceof AxisExpression) {
            return ((getStart() instanceof ContextItemExpression) && AxisInfo.isForwards[((AxisExpression) getStep()).getAxis()]) ? getStep() : this;
        }
        if (Literal.isEmptySequence(getStep())) {
            return getStep();
        }
        SlashExpression slashExpression = new SlashExpression(getStart(), getStep());
        ExpressionTool.copyLocationInfo(this, slashExpression);
        return slashExpression;
    }

    @Override // net.p110sf.saxon.expr.SlashExpression, net.p110sf.saxon.expr.Expression
    public SimpleStepExpression copy(RebindingMap rebindingMap) {
        SimpleStepExpression simpleStepExpression = new SimpleStepExpression(getStart().copy(rebindingMap), getStep().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, simpleStepExpression);
        return simpleStepExpression;
    }
}
