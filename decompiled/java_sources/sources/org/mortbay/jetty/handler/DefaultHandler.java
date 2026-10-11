package org.mortbay.jetty.handler;

import com.onyx.android.sdk.base.common.CommonConstant;
import java.io.IOException;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Server;
import org.mortbay.log.Log;
import org.mortbay.util.ByteArrayISO8859Writer;
import org.mortbay.util.C20429IO;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class DefaultHandler extends AbstractHandler {

    /* renamed from: h */
    public static /* synthetic */ Class f114906h;

    /* renamed from: f */
    public byte[] f114908f;

    /* renamed from: e */
    public long f114907e = (System.currentTimeMillis() / 1000) * 1000;

    /* renamed from: g */
    public boolean f114909g = true;

    public DefaultHandler() {
        try {
            URL resource = getClass().getClassLoader().getResource("org/mortbay/jetty/favicon.ico");
            if (resource != null) {
                this.f114908f = C20429IO.readBytes(resource.openStream());
            }
        } catch (Exception e) {
            Log.warn(e);
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public boolean getServeIcon() {
        return this.f114909g;
    }

    @Override // org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        Handler[] childHandlersByClass;
        Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
        if (httpServletResponse.isCommitted() || request.isHandled()) {
            return;
        }
        request.setHandled(true);
        String method = httpServletRequest.getMethod();
        if (this.f114909g && this.f114908f != null && method.equals("GET") && httpServletRequest.getRequestURI().equals("/favicon.ico")) {
            if (httpServletRequest.getDateHeader("If-Modified-Since") == this.f114907e) {
                httpServletResponse.setStatus(304);
                return;
            }
            httpServletResponse.setStatus(200);
            httpServletResponse.setContentType("image/x-icon");
            httpServletResponse.setContentLength(this.f114908f.length);
            httpServletResponse.setDateHeader("Last-Modified", this.f114907e);
            httpServletResponse.getOutputStream().write(this.f114908f);
            return;
        }
        if (!method.equals("GET") || !httpServletRequest.getRequestURI().equals("/")) {
            httpServletResponse.sendError(404);
            return;
        }
        httpServletResponse.setStatus(404);
        httpServletResponse.setContentType("text/html");
        ByteArrayISO8859Writer byteArrayISO8859Writer = new ByteArrayISO8859Writer(1500);
        StringUtil.replace(StringUtil.replace(httpServletRequest.getRequestURI(), "<", "&lt;"), ">", "&gt;");
        byteArrayISO8859Writer.write("<HTML>\n<HEAD>\n<TITLE>Error 404 - Not Found");
        byteArrayISO8859Writer.write("</TITLE>\n<BODY>\n<H2>Error 404 - Not Found.</H2>\n");
        byteArrayISO8859Writer.write("No context on this server matched or handled this request.<BR>");
        byteArrayISO8859Writer.write("Contexts known to this server are: <ul>");
        Server server = getServer();
        if (server == null) {
            childHandlersByClass = null;
        } else {
            Class cls = f114906h;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.handler.ContextHandler");
                f114906h = cls;
            }
            childHandlersByClass = server.getChildHandlersByClass(cls);
        }
        for (int i2 = 0; childHandlersByClass != null && i2 < childHandlersByClass.length; i2++) {
            ContextHandler contextHandler = (ContextHandler) childHandlersByClass[i2];
            if (contextHandler.isRunning()) {
                byteArrayISO8859Writer.write("<li><a href=\"");
                if (contextHandler.getVirtualHosts() != null && contextHandler.getVirtualHosts().length > 0) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(CommonConstant.SCHEME_HTTP);
                    stringBuffer.append(contextHandler.getVirtualHosts()[0]);
                    stringBuffer.append(":");
                    stringBuffer.append(httpServletRequest.getLocalPort());
                    byteArrayISO8859Writer.write(stringBuffer.toString());
                }
                byteArrayISO8859Writer.write(contextHandler.getContextPath());
                if (contextHandler.getContextPath().length() > 1 && contextHandler.getContextPath().endsWith("/")) {
                    byteArrayISO8859Writer.write("/");
                }
                byteArrayISO8859Writer.write("\">");
                byteArrayISO8859Writer.write(contextHandler.getContextPath());
                if (contextHandler.getVirtualHosts() != null && contextHandler.getVirtualHosts().length > 0) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("&nbsp;@&nbsp;");
                    stringBuffer2.append(contextHandler.getVirtualHosts()[0]);
                    stringBuffer2.append(":");
                    stringBuffer2.append(httpServletRequest.getLocalPort());
                    byteArrayISO8859Writer.write(stringBuffer2.toString());
                }
                byteArrayISO8859Writer.write("&nbsp;--->&nbsp;");
                byteArrayISO8859Writer.write(contextHandler.toString());
                byteArrayISO8859Writer.write("</a></li>\n");
            } else {
                byteArrayISO8859Writer.write("<li>");
                byteArrayISO8859Writer.write(contextHandler.getContextPath());
                if (contextHandler.getVirtualHosts() != null && contextHandler.getVirtualHosts().length > 0) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("&nbsp;@&nbsp;");
                    stringBuffer3.append(contextHandler.getVirtualHosts()[0]);
                    stringBuffer3.append(":");
                    stringBuffer3.append(httpServletRequest.getLocalPort());
                    byteArrayISO8859Writer.write(stringBuffer3.toString());
                }
                byteArrayISO8859Writer.write("&nbsp;--->&nbsp;");
                byteArrayISO8859Writer.write(contextHandler.toString());
                if (contextHandler.isFailed()) {
                    byteArrayISO8859Writer.write(" [failed]");
                }
                if (contextHandler.isStopped()) {
                    byteArrayISO8859Writer.write(" [stopped]");
                }
                byteArrayISO8859Writer.write("</li>\n");
            }
        }
        for (int i3 = 0; i3 < 10; i3++) {
            byteArrayISO8859Writer.write("\n<!-- Padding for IE                  -->");
        }
        byteArrayISO8859Writer.write("\n</BODY>\n</HTML>\n");
        byteArrayISO8859Writer.flush();
        httpServletResponse.setContentLength(byteArrayISO8859Writer.size());
        ServletOutputStream outputStream = httpServletResponse.getOutputStream();
        byteArrayISO8859Writer.writeTo(outputStream);
        outputStream.close();
    }

    public void setServeIcon(boolean z) {
        this.f114909g = z;
    }
}
