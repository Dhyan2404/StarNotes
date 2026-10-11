package net.p110sf.saxon.lib;

import java.util.Map;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.Traceable;
import net.p110sf.saxon.trans.Mode;

/* loaded from: classes11.dex */
public interface TraceListener {
    default void close() {
    }

    default void endCurrentItem(Item item) {
    }

    default void endRuleSearch(Object obj, Mode mode, Item item) {
    }

    default void enter(Traceable traceable, Map<String, Object> map, XPathContext xPathContext) {
    }

    default void leave(Traceable traceable) {
    }

    default void open(Controller controller) {
    }

    default void setOutputDestination(Logger logger) {
    }

    default void startCurrentItem(Item item) {
    }

    default void startRuleSearch() {
    }
}
