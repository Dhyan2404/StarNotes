package net.p110sf.saxon.expr.instruct;

import java.util.HashMap;
import java.util.function.BiConsumer;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ComponentTracer;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.TraceableComponent;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class ComponentTracer extends Instruction {

    /* renamed from: q */
    public static final /* synthetic */ boolean f99653q = false;

    /* renamed from: n */
    public Operand f99654n;

    /* renamed from: o */
    public HashMap<String, Object> f99655o = new HashMap<>(10);

    /* renamed from: p */
    public TraceableComponent f99656p;

    public ComponentTracer(TraceableComponent traceableComponent) {
        this.f99656p = traceableComponent;
        this.f99654n = new Operand(this, traceableComponent.getBody(), OperandRole.SAME_FOCUS_ACTION);
        traceableComponent.gatherProperties(new BiConsumer() { // from class: com.sunia.HTREnginev2.j7e
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ComponentTracer.this.m62730e((String) obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m62730e(String str, Object obj) {
        this.f99655o.put(str, obj);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkForUpdatingSubexpressions() throws XPathException {
        getChild().checkForUpdatingSubexpressions();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ComponentTracer componentTracer = new ComponentTracer();
        componentTracer.f99656p = this.f99656p;
        componentTracer.f99655o = this.f99655o;
        Expression copy = getChild().copy(rebindingMap);
        componentTracer.f99654n = new Operand(componentTracer, copy, OperandRole.SAME_FOCUS_ACTION);
        componentTracer.adoptChildExpression(copy);
        componentTracer.setLocation(getLocation());
        return componentTracer;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        if (!controller.isTracing()) {
            return getChild().evaluateItem(xPathContext);
        }
        TraceListener traceListener = controller.getTraceListener();
        traceListener.enter(this.f99656p, this.f99655o, xPathContext);
        Item evaluateItem = getChild().evaluateItem(xPathContext);
        traceListener.leave(this.f99656p);
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
        traceListener.enter(this.f99656p, this.f99655o, xPathContext);
        getChild().evaluatePendingUpdates(xPathContext, pendingUpdateList);
        traceListener.leave(this.f99656p);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        getChild().export(expressionPresenter);
    }

    public Expression getBody() {
        return this.f99654n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return getChild().getCardinality();
    }

    public Expression getChild() {
        return this.f99654n.getChildExpression();
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
        if (!controller.isTracing()) {
            return getChild().iterate(xPathContext);
        }
        TraceListener traceListener = controller.getTraceListener();
        traceListener.enter(this.f99656p, this.f99655o, xPathContext);
        SequenceIterator iterate = getChild().iterate(xPathContext);
        traceListener.leave(this.f99656p);
        return iterate;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return !getChild().hasSpecialProperty(8388608);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f99654n;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        TraceListener traceListener = controller.getTraceListener();
        if (!controller.isTracing()) {
            getChild().process(outputter, xPathContext);
            return null;
        }
        traceListener.enter(this.f99656p, this.f99655o, xPathContext);
        getChild().process(outputter, xPathContext);
        traceListener.leave(this.f99656p);
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getChild().toShortString();
    }

    public ComponentTracer() {
    }
}
