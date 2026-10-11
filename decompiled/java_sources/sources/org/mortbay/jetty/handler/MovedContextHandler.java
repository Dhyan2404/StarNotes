package org.mortbay.jetty.handler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class MovedContextHandler extends ContextHandler {

    /* renamed from: v0 */
    public String f114915v0;

    /* renamed from: w0 */
    public boolean f114916w0;

    /* renamed from: x0 */
    public boolean f114917x0;

    /* renamed from: y0 */
    public boolean f114918y0;

    /* renamed from: z0 */
    public C20389a f114919z0;

    /* renamed from: org.mortbay.jetty.handler.MovedContextHandler$a */
    /* loaded from: classes13.dex */
    public class C20389a extends AbstractHandler {
        public C20389a() {
        }

        @Override // org.mortbay.jetty.Handler
        public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
            if (MovedContextHandler.this.f114915v0 == null) {
                return;
            }
            Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
            MovedContextHandler movedContextHandler = MovedContextHandler.this;
            String str2 = movedContextHandler.f114915v0;
            if (!movedContextHandler.f114916w0 && httpServletRequest.getPathInfo() != null) {
                str2 = URIUtil.addPaths(str2, httpServletRequest.getPathInfo());
            }
            if (!MovedContextHandler.this.f114917x0 && httpServletRequest.getQueryString() != null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str2);
                stringBuffer.append("?");
                stringBuffer.append(httpServletRequest.getQueryString());
                str2 = stringBuffer.toString();
            }
            httpServletResponse.sendRedirect(str2);
            if (MovedContextHandler.this.f114918y0) {
                httpServletResponse.setStatus(301);
            }
            request.setHandled(true);
        }
    }

    public MovedContextHandler() {
        C20389a c20389a = new C20389a();
        this.f114919z0 = c20389a;
        addHandler(c20389a);
    }

    public String getNewContextURL() {
        return this.f114915v0;
    }

    public boolean isDiscardPathInfo() {
        return this.f114916w0;
    }

    public boolean isDiscardQuery() {
        return this.f114917x0;
    }

    public boolean isPermanent() {
        return this.f114918y0;
    }

    public void setDiscardPathInfo(boolean z) {
        this.f114916w0 = z;
    }

    public void setDiscardQuery(boolean z) {
        this.f114917x0 = z;
    }

    public void setNewContextURL(String str) {
        this.f114915v0 = str;
    }

    public void setPermanent(boolean z) {
        this.f114918y0 = z;
    }

    public MovedContextHandler(HandlerContainer handlerContainer, String str, String str2) {
        super(handlerContainer, str);
        this.f114915v0 = str2;
        C20389a c20389a = new C20389a();
        this.f114919z0 = c20389a;
        addHandler(c20389a);
    }
}
