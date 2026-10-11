package org.mortbay.jetty.handler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.RequestLog;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.Server;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class RequestLogHandler extends HandlerWrapper {

    /* renamed from: g */
    public RequestLog f114921g;

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        super.doStart();
        RequestLog requestLog = this.f114921g;
        if (requestLog != null) {
            requestLog.start();
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
        RequestLog requestLog = this.f114921g;
        if (requestLog != null) {
            requestLog.stop();
        }
    }

    public RequestLog getRequestLog() {
        return this.f114921g;
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        RequestLog requestLog;
        super.handle(str, httpServletRequest, httpServletResponse, i);
        if (i != 1 || (requestLog = this.f114921g) == null) {
            return;
        }
        requestLog.log((Request) httpServletRequest, (Response) httpServletResponse);
    }

    public void setRequestLog(RequestLog requestLog) {
        RequestLog requestLog2;
        try {
            RequestLog requestLog3 = this.f114921g;
            if (requestLog3 != null) {
                requestLog3.stop();
            }
        } catch (Exception e) {
            Log.warn(e);
        }
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) this.f114921g, (Object) requestLog, "logimpl", true);
        }
        this.f114921g = requestLog;
        try {
            if (!isStarted() || (requestLog2 = this.f114921g) == null) {
                return;
            }
            requestLog2.start();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        if (this.f114921g == null) {
            super.setServer(server);
            return;
        }
        if (getServer() != null && getServer() != server) {
            getServer().getContainer().update((Object) this, (Object) this.f114921g, (Object) null, "logimpl", true);
        }
        super.setServer(server);
        if (server == null || server == getServer()) {
            return;
        }
        server.getContainer().update((Object) this, (Object) null, (Object) this.f114921g, "logimpl", true);
    }
}
