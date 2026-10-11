package net.p110sf.saxon.expr;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public final class TailCallLoop extends UnaryExpression {

    /* renamed from: o */
    public UserFunction f99383o;

    /* loaded from: classes11.dex */
    public static class TailCallComponent implements TailCallInfo {
        public Component component;
        public UserFunction function;
    }

    /* loaded from: classes11.dex */
    public static class TailCallFunction implements TailCallInfo {
        public UserFunction function;
    }

    /* loaded from: classes11.dex */
    public interface TailCallInfo {
    }

    public TailCallLoop(UserFunction userFunction, Expression expression) {
        super(expression);
        this.f99383o = userFunction;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        throw new UnsupportedOperationException("TailCallLoop.copy()");
    }

    /* renamed from: d */
    public final UserFunction m62644d(TailCallInfo tailCallInfo, XPathContextMajor xPathContextMajor) {
        if (tailCallInfo instanceof TailCallFunction) {
            return ((TailCallFunction) tailCallInfo).function;
        }
        if (!(tailCallInfo instanceof TailCallComponent)) {
            throw new AssertionError();
        }
        Component component = ((TailCallComponent) tailCallInfo).component;
        xPathContextMajor.setCurrentComponent(component);
        return (UserFunction) component.getActor();
    }

    /* renamed from: e */
    public final Sequence m62645e(UserFunction userFunction, XPathContextMajor xPathContextMajor) throws XPathException {
        xPathContextMajor.resetStackFrameMap(userFunction.getStackFrameMap(), userFunction.getArity());
        try {
            return userFunction.getEvaluator().evaluate(userFunction.getBody(), xPathContextMajor);
        } catch (XPathException e) {
            e.maybeSetLocation(this.getLocation());
            e.maybeSetContext(xPathContextMajor);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        UserFunction m62644d;
        XPathContextMajor xPathContextMajor = (XPathContextMajor) xPathContext;
        do {
            Item evaluateItem = getBaseExpression().evaluateItem(xPathContext);
            TailCallInfo tailCallInfo = xPathContextMajor.getTailCallInfo();
            if (tailCallInfo == null) {
                return evaluateItem;
            }
            m62644d = m62644d(tailCallInfo, xPathContextMajor);
        } while (m62644d == this.f99383o);
        return m62645e(m62644d, xPathContextMajor).head();
    }

    public UserFunction getContainingFunction() {
        return this.f99383o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "tailCallLoop";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return getBaseExpression().getImplementationMethod();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBaseExpression().getItemType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        UserFunction m62644d;
        XPathContextMajor xPathContextMajor = (XPathContextMajor) xPathContext;
        do {
            GroundedValue groundedValue = SequenceTool.toGroundedValue(getBaseExpression().iterate(xPathContextMajor));
            TailCallInfo tailCallInfo = xPathContextMajor.getTailCallInfo();
            if (tailCallInfo == null) {
                return groundedValue.iterate();
            }
            m62644d = m62644d(tailCallInfo, xPathContextMajor);
        } while (m62644d == this.f99383o);
        return m62645e(m62644d, xPathContextMajor).iterate();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        UserFunction m62644d;
        XPathContextMajor xPathContextMajor = (XPathContextMajor) xPathContext;
        Expression baseExpression = getBaseExpression();
        do {
            baseExpression.process(outputter, xPathContext);
            TailCallInfo tailCallInfo = xPathContextMajor.getTailCallInfo();
            if (tailCallInfo == null) {
                return;
            } else {
                m62644d = m62644d(tailCallInfo, xPathContextMajor);
            }
        } while (m62644d == this.f99383o);
        SequenceTool.process(m62645e(m62644d, xPathContextMajor), outputter, baseExpression.getLocation());
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
