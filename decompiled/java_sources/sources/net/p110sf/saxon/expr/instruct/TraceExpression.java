package net.p110sf.saxon.expr.instruct;

import java.util.HashMap;
import java.util.Iterator;
import java.util.function.BiConsumer;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.TraceExpression;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class TraceExpression extends Instruction {

    /* renamed from: p */
    public static final /* synthetic */ boolean f99832p = false;

    /* renamed from: n */
    public final Operand f99833n;

    /* renamed from: o */
    public HashMap<String, Object> f99834o = new HashMap<>(10);

    public TraceExpression(Expression expression) {
        this.f99833n = new Operand(this, expression, OperandRole.SAME_FOCUS_ACTION);
        adoptChildExpression(expression);
        expression.gatherProperties(new BiConsumer() { // from class: com.sunia.HTREnginev2.ukn
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                TraceExpression.this.m62795e((String) obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m62795e(String str, Object obj) {
        this.f99834o.put(str, obj);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkForUpdatingSubexpressions() throws XPathException {
        getChild().checkForUpdatingSubexpressions();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        TraceExpression traceExpression = new TraceExpression(getChild().copy(rebindingMap));
        traceExpression.setLocation(getLocation());
        traceExpression.f99834o = this.f99834o;
        return traceExpression;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        Expression child = getChild();
        if (!controller.isTracing()) {
            return child.evaluateItem(xPathContext);
        }
        TraceListener traceListener = controller.getTraceListener();
        traceListener.enter(child, this.f99834o, xPathContext);
        Item evaluateItem = child.evaluateItem(xPathContext);
        traceListener.leave(child);
        return evaluateItem;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        Controller controller = xPathContext.getController();
        if (!controller.isTracing()) {
            getChild().evaluatePendingUpdates(xPathContext, pendingUpdateList);
            return;
        }
        TraceListener traceListener = controller.getTraceListener();
        traceListener.enter(getChild(), this.f99834o, xPathContext);
        getChild().evaluatePendingUpdates(xPathContext, pendingUpdateList);
        traceListener.leave(getChild());
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        getChild().export(expressionPresenter);
    }

    public Expression getBody() {
        return this.f99833n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return getChild().getCardinality();
    }

    public Expression getChild() {
        return this.f99833n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return getChild().getDependencies();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return AbstractLogger.TRACE;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return getChild().getImplementationMethod();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        if (getChild() instanceof Instruction) {
            return ((Instruction) getChild()).getInstructionNameCode();
        }
        return -1;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getChild().getItemType();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getNetCost() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterator<String> getProperties() {
        return this.f99834o.keySet().iterator();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Object getProperty(String str) {
        return this.f99834o.get(str);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "TraceExpr";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isUpdatingExpression() {
        return getChild().isUpdatingExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        return getChild().isVacuousExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        Expression child = getChild();
        if (!controller.isTracing()) {
            return child.iterate(xPathContext);
        }
        TraceListener traceListener = controller.getTraceListener();
        traceListener.enter(child, this.f99834o, xPathContext);
        SequenceIterator iterate = child.iterate(xPathContext);
        traceListener.leave(child);
        return iterate;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return !getChild().hasSpecialProperty(8388608);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f99833n;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        TraceListener traceListener = controller.getTraceListener();
        Expression child = getChild();
        if (!controller.isTracing()) {
            child.process(outputter, xPathContext);
            return null;
        }
        traceListener.enter(child, this.f99834o, xPathContext);
        child.process(outputter, xPathContext);
        traceListener.leave(child);
        return null;
    }

    public void setProperty(String str, Object obj) {
        this.f99834o.put(str, obj);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getChild().toShortString();
    }
}
