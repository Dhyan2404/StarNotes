package net.p110sf.saxon.trace;

import java.util.Map;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.SimpleMode;

/* loaded from: classes11.dex */
public class TraceEventMulticaster implements TraceListener {

    /* renamed from: a */
    protected final TraceListener f102207a;

    /* renamed from: b */
    protected final TraceListener f102208b;

    public TraceEventMulticaster(TraceListener traceListener, TraceListener traceListener2) {
        this.f102207a = traceListener;
        this.f102208b = traceListener2;
    }

    public static TraceListener add(TraceListener traceListener, TraceListener traceListener2) {
        return addInternal(traceListener, traceListener2);
    }

    public static TraceListener addInternal(TraceListener traceListener, TraceListener traceListener2) {
        return traceListener == null ? traceListener2 : traceListener2 == null ? traceListener : new TraceEventMulticaster(traceListener, traceListener2);
    }

    public static TraceListener removeInternal(TraceListener traceListener, TraceListener traceListener2) {
        if (traceListener == traceListener2 || traceListener == null) {
            return null;
        }
        return traceListener instanceof TraceEventMulticaster ? ((TraceEventMulticaster) traceListener).remove(traceListener2) : traceListener;
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void close() {
        this.f102207a.close();
        this.f102208b.close();
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void endCurrentItem(Item item) {
        this.f102207a.endCurrentItem(item);
        this.f102208b.endCurrentItem(item);
    }

    public void endRuleSearch(Object obj, SimpleMode simpleMode, Item item) {
        this.f102207a.endRuleSearch(obj, simpleMode, item);
        this.f102208b.endRuleSearch(obj, simpleMode, item);
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void enter(Traceable traceable, Map<String, Object> map, XPathContext xPathContext) {
        this.f102207a.enter(traceable, map, xPathContext);
        this.f102208b.enter(traceable, map, xPathContext);
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void leave(Traceable traceable) {
        this.f102207a.leave(traceable);
        this.f102208b.leave(traceable);
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void open(Controller controller) {
        this.f102207a.open(controller);
        this.f102208b.open(controller);
    }

    public TraceListener remove(TraceListener traceListener) {
        TraceListener traceListener2 = this.f102207a;
        if (traceListener == traceListener2) {
            return this.f102208b;
        }
        if (traceListener == this.f102208b) {
            return traceListener2;
        }
        TraceListener removeInternal = removeInternal(traceListener2, traceListener);
        TraceListener removeInternal2 = removeInternal(this.f102208b, traceListener);
        return (removeInternal == this.f102207a && removeInternal2 == this.f102208b) ? this : addInternal(removeInternal, removeInternal2);
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void setOutputDestination(Logger logger) {
        this.f102207a.setOutputDestination(logger);
        this.f102208b.setOutputDestination(logger);
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void startCurrentItem(Item item) {
        this.f102207a.startCurrentItem(item);
        this.f102208b.startCurrentItem(item);
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void startRuleSearch() {
        this.f102207a.startRuleSearch();
        this.f102208b.startRuleSearch();
    }

    public static TraceListener remove(TraceListener traceListener, TraceListener traceListener2) {
        return removeInternal(traceListener, traceListener2);
    }
}
