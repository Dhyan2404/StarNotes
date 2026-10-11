package org.mortbay.jetty.handler;

import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Locale;
import org.mortbay.util.DateCache;
import org.mortbay.util.RolloverFileOutputStream;

/* loaded from: classes13.dex */
public class DebugHandler extends HandlerWrapper {

    /* renamed from: g */
    public DateCache f114903g = new DateCache("HH:mm:ss", Locale.US);

    /* renamed from: h */
    public OutputStream f114904h;

    /* renamed from: i */
    public PrintStream f114905i;

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        if (this.f114904h == null) {
            this.f114904h = new RolloverFileOutputStream("./logs/yyyy_mm_dd.debug.log", true);
        }
        this.f114905i = new PrintStream(this.f114904h);
        super.doStart();
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
        this.f114905i.close();
    }

    public OutputStream getOutputStream() {
        return this.f114904h;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0207  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r20, javax.servlet.http.HttpServletRequest r21, javax.servlet.http.HttpServletResponse r22, int r23) throws java.io.IOException, javax.servlet.ServletException {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.DebugHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    public void setOutputStream(OutputStream outputStream) {
        this.f114904h = outputStream;
    }
}
