package org.mortbay.jetty.handler;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.Server;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiException;

/* loaded from: classes13.dex */
public class HandlerCollection extends AbstractHandlerContainer {

    /* renamed from: g */
    public static /* synthetic */ Class f114912g;

    /* renamed from: f */
    public Handler[] f114913f;

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public void addHandler(Handler handler) {
        Handler[] handlers = getHandlers();
        Class cls = f114912g;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.Handler");
            f114912g = cls;
        }
        setHandlers((Handler[]) LazyList.addToArray(handlers, handler, cls));
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        MultiException multiException = new MultiException();
        if (this.f114913f != null) {
            int i = 0;
            while (true) {
                Handler[] handlerArr = this.f114913f;
                if (i >= handlerArr.length) {
                    break;
                }
                try {
                    handlerArr[i].start();
                } catch (Throwable th) {
                    multiException.add(th);
                }
                i++;
            }
        }
        super.doStart();
        multiException.ifExceptionThrow();
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        MultiException multiException = new MultiException();
        try {
            super.doStop();
        } catch (Throwable th) {
            multiException.add(th);
        }
        Handler[] handlerArr = this.f114913f;
        if (handlerArr != null) {
            int length = handlerArr.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                try {
                    this.f114913f[i].stop();
                } catch (Throwable th2) {
                    multiException.add(th2);
                }
                length = i;
            }
        }
        multiException.ifExceptionThrow();
    }

    @Override // org.mortbay.jetty.handler.AbstractHandlerContainer
    public Object expandChildren(Object obj, Class cls) {
        Handler[] handlers = getHandlers();
        for (int i = 0; handlers != null && i < handlers.length; i++) {
            obj = expandHandler(handlers[i], obj, cls);
        }
        return obj;
    }

    public Handler[] getHandlers() {
        return this.f114913f;
    }

    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        if (this.f114913f == null || !isStarted()) {
            return;
        }
        MultiException multiException = null;
        int i2 = 0;
        while (true) {
            Handler[] handlerArr = this.f114913f;
            if (i2 >= handlerArr.length) {
                break;
            }
            try {
                handlerArr[i2].handle(str, httpServletRequest, httpServletResponse, i);
            } catch (IOException e) {
                throw e;
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
                if (multiException == null) {
                    multiException = new MultiException();
                }
                multiException.add(e3);
            }
            i2++;
        }
        if (multiException != null) {
            if (multiException.size() != 1) {
                throw new ServletException(multiException);
            }
            throw new ServletException(multiException.getThrowable(0));
        }
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public void removeHandler(Handler handler) {
        Handler[] handlers = getHandlers();
        if (handlers == null || handlers.length <= 0) {
            return;
        }
        setHandlers((Handler[]) LazyList.removeFromArray(handlers, handler));
    }

    public void setHandlers(Handler[] handlerArr) {
        Handler[] handlerArr2 = this.f114913f;
        Handler[] handlerArr3 = handlerArr2 == null ? null : (Handler[]) handlerArr2.clone();
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) handlerArr3, (Object[]) handlerArr, Constants.TRANSLET_OUTPUT_PNAME);
        }
        Server server = getServer();
        MultiException multiException = new MultiException();
        for (int i = 0; handlerArr != null && i < handlerArr.length; i++) {
            if (handlerArr[i].getServer() != server) {
                handlerArr[i].setServer(server);
            }
        }
        this.f114913f = handlerArr;
        for (int i2 = 0; handlerArr3 != null && i2 < handlerArr3.length; i2++) {
            Handler handler = handlerArr3[i2];
            if (handler != null) {
                try {
                    if (handler.isStarted()) {
                        handlerArr3[i2].stop();
                    }
                } catch (Throwable th) {
                    multiException.add(th);
                }
            }
        }
        multiException.ifExceptionThrowRuntime();
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        super.setServer(server);
        Handler[] handlers = getHandlers();
        for (int i = 0; handlers != null && i < handlers.length; i++) {
            handlers[i].setServer(server);
        }
        if (server == null || server == server2) {
            return;
        }
        server.getContainer().update((Object) this, (Object[]) null, (Object[]) this.f114913f, Constants.TRANSLET_OUTPUT_PNAME);
    }
}
