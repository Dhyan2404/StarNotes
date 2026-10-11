package org.mortbay.jetty.handler;

import org.mortbay.jetty.Handler;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.util.LazyList;

/* loaded from: classes13.dex */
public abstract class AbstractHandlerContainer extends AbstractHandler implements HandlerContainer {

    /* renamed from: e */
    public static /* synthetic */ Class f114870e;

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public Object expandChildren(Object obj, Class cls) {
        return obj;
    }

    public Object expandHandler(Handler handler, Object obj, Class cls) {
        if (handler == null) {
            return obj;
        }
        if (cls == null || cls.isAssignableFrom(handler.getClass())) {
            obj = LazyList.add(obj, handler);
        }
        if (handler instanceof AbstractHandlerContainer) {
            return ((AbstractHandlerContainer) handler).expandChildren(obj, cls);
        }
        if (!(handler instanceof HandlerContainer)) {
            return obj;
        }
        HandlerContainer handlerContainer = (HandlerContainer) handler;
        return LazyList.addArray(obj, cls == null ? handlerContainer.getChildHandlers() : handlerContainer.getChildHandlersByClass(cls));
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public Handler getChildHandlerByClass(Class cls) {
        Object expandChildren = expandChildren(null, cls);
        if (expandChildren == null) {
            return null;
        }
        return (Handler) LazyList.get(expandChildren, 0);
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public Handler[] getChildHandlers() {
        Object expandChildren = expandChildren(null, null);
        Class cls = f114870e;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.Handler");
            f114870e = cls;
        }
        return (Handler[]) LazyList.toArray(expandChildren, cls);
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public Handler[] getChildHandlersByClass(Class cls) {
        Object expandChildren = expandChildren(null, cls);
        Class cls2 = f114870e;
        if (cls2 == null) {
            cls2 = class$("org.mortbay.jetty.Handler");
            f114870e = cls2;
        }
        return (Handler[]) LazyList.toArray(expandChildren, cls2);
    }
}
