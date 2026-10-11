package net.p110sf.saxon.event;

import java.util.Stack;
import net.p110sf.saxon.event.ContentHandlerProxy;
import net.p110sf.saxon.om.Item;
import org.xml.sax.Locator;

/* loaded from: classes11.dex */
public class ContentHandlerProxyLocator implements Locator {

    /* renamed from: e */
    public ContentHandlerProxy f98963e;

    public ContentHandlerProxyLocator(ContentHandlerProxy contentHandlerProxy) {
        this.f98963e = contentHandlerProxy;
    }

    @Override // org.xml.sax.Locator
    public int getColumnNumber() {
        return this.f98963e.getCurrentLocation().getColumnNumber();
    }

    public Stack<Item> getContextItemStack() {
        ContentHandlerProxy.ContentHandlerProxyTraceListener traceListener = this.f98963e.getTraceListener();
        if (traceListener == null) {
            return null;
        }
        return traceListener.getContextItemStack();
    }

    @Override // org.xml.sax.Locator
    public int getLineNumber() {
        return this.f98963e.getCurrentLocation().getLineNumber();
    }

    @Override // org.xml.sax.Locator
    public String getPublicId() {
        return null;
    }

    @Override // org.xml.sax.Locator
    public String getSystemId() {
        return this.f98963e.getCurrentLocation().getSystemId();
    }
}
