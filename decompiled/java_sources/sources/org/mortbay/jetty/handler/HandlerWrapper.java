package org.mortbay.jetty.handler;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.Server;

/* loaded from: classes13.dex */
public class HandlerWrapper extends AbstractHandlerContainer {

    /* renamed from: f */
    public Handler f114914f;

    public void addHandler(Handler handler) {
        Handler handler2 = getHandler();
        if (handler2 != null && !(handler instanceof HandlerContainer)) {
            throw new IllegalArgumentException("Cannot add");
        }
        setHandler(handler);
        if (handler2 != null) {
            ((HandlerContainer) handler).addHandler(handler2);
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        Handler handler = this.f114914f;
        if (handler != null) {
            handler.start();
        }
        super.doStart();
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
        Handler handler = this.f114914f;
        if (handler != null) {
            handler.stop();
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandlerContainer
    public Object expandChildren(Object obj, Class cls) {
        return expandHandler(this.f114914f, obj, cls);
    }

    public Handler getHandler() {
        return this.f114914f;
    }

    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        if (this.f114914f == null || !isStarted()) {
            return;
        }
        this.f114914f.handle(str, httpServletRequest, httpServletResponse, i);
    }

    public void removeHandler(Handler handler) {
        Handler handler2 = getHandler();
        if (handler2 != null && (handler2 instanceof HandlerContainer)) {
            ((HandlerContainer) handler2).removeHandler(handler);
        } else {
            if (handler2 == null || !handler.equals(handler2)) {
                throw new IllegalStateException("Cannot remove");
            }
            setHandler(null);
        }
    }

    public void setHandler(Handler handler) {
        try {
            Handler handler2 = this.f114914f;
            if (getServer() != null) {
                getServer().getContainer().update(this, handler2, handler, Constants.TRANSLET_OUTPUT_PNAME);
            }
            if (handler != null) {
                handler.setServer(getServer());
            }
            this.f114914f = handler;
            if (handler2 == null || !handler2.isStarted()) {
                return;
            }
            handler2.stop();
        } catch (Exception e) {
            IllegalStateException illegalStateException = new IllegalStateException();
            illegalStateException.initCause(e);
            throw illegalStateException;
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        super.setServer(server);
        Handler handler = getHandler();
        if (handler != null) {
            handler.setServer(server);
        }
        if (server == null || server == server2) {
            return;
        }
        server.getContainer().update(this, (Object) null, this.f114914f, Constants.TRANSLET_OUTPUT_PNAME);
    }
}
