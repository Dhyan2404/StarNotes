package org.mortbay.servlet;

import com.google.common.net.HttpHeaders;
import com.onyx.android.sdk.base.common.CommonConstant;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.HashSet;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.UnavailableException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.mortbay.util.C20429IO;

/* loaded from: classes13.dex */
public class ProxyServlet implements Servlet {
    protected HashSet _DontProxyHeaders;
    protected ServletConfig _config;
    protected ServletContext _context;

    /* loaded from: classes13.dex */
    public static class Transparent extends ProxyServlet {

        /* renamed from: e */
        public String f115248e;

        /* renamed from: f */
        public String f115249f;

        public Transparent() {
        }

        @Override // org.mortbay.servlet.ProxyServlet, javax.servlet.Servlet
        public void init(ServletConfig servletConfig) throws ServletException {
            if (servletConfig.getInitParameter("ProxyTo") != null) {
                this.f115249f = servletConfig.getInitParameter("ProxyTo");
            }
            if (servletConfig.getInitParameter("Prefix") != null) {
                this.f115248e = servletConfig.getInitParameter("Prefix");
            }
            if (this.f115249f == null) {
                throw new UnavailableException("No ProxyTo");
            }
            super.init(servletConfig);
            ServletContext servletContext = this._context;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Transparent ProxyServlet @ ");
            String str = this.f115248e;
            if (str == null) {
                str = "-";
            }
            stringBuffer.append(str);
            stringBuffer.append(" to ");
            stringBuffer.append(this.f115249f);
            servletContext.log(stringBuffer.toString());
        }

        @Override // org.mortbay.servlet.ProxyServlet
        public URL proxyHttpURL(String str, String str2, int i, String str3) throws MalformedURLException {
            String str4 = this.f115248e;
            if (str4 != null && !str3.startsWith(str4)) {
                return null;
            }
            if (this.f115248e != null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(this.f115249f);
                stringBuffer.append(str3.substring(this.f115248e.length()));
                return new URL(stringBuffer.toString());
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(this.f115249f);
            stringBuffer2.append(str3);
            return new URL(stringBuffer2.toString());
        }

        public Transparent(String str, String str2, int i) {
            this.f115248e = str;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(CommonConstant.SCHEME_HTTP);
            stringBuffer.append(str2);
            stringBuffer.append(":");
            stringBuffer.append(i);
            this.f115249f = stringBuffer.toString();
        }
    }

    public ProxyServlet() {
        HashSet hashSet = new HashSet();
        this._DontProxyHeaders = hashSet;
        hashSet.add(Http2ExchangeCodec.f103780j);
        this._DontProxyHeaders.add(Http2ExchangeCodec.f103777g);
        this._DontProxyHeaders.add("keep-alive");
        this._DontProxyHeaders.add(Http2ExchangeCodec.f103781k);
        this._DontProxyHeaders.add(Http2ExchangeCodec.f103782l);
        this._DontProxyHeaders.add("trailer");
        this._DontProxyHeaders.add("proxy-authorization");
        this._DontProxyHeaders.add("proxy-authenticate");
        this._DontProxyHeaders.add(Http2ExchangeCodec.f103784n);
    }

    @Override // javax.servlet.Servlet
    public void destroy() {
    }

    @Override // javax.servlet.Servlet
    public ServletConfig getServletConfig() {
        return this._config;
    }

    @Override // javax.servlet.Servlet
    public String getServletInfo() {
        return "Proxy Servlet";
    }

    public void handleConnect(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        String str;
        String str2;
        String requestURI = httpServletRequest.getRequestURI();
        int indexOf = requestURI.indexOf(58);
        if (indexOf >= 0) {
            str = requestURI.substring(indexOf + 1);
            str2 = requestURI.substring(0, indexOf);
            if (str2.indexOf(47) > 0) {
                str2 = str2.substring(str2.indexOf(47) + 1);
            }
        } else {
            str = "";
            str2 = "";
        }
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str2, Integer.parseInt(str));
        ServletInputStream inputStream = httpServletRequest.getInputStream();
        ServletOutputStream outputStream = httpServletResponse.getOutputStream();
        Socket socket = new Socket(inetSocketAddress.getAddress(), inetSocketAddress.getPort());
        httpServletResponse.setStatus(200);
        httpServletResponse.setHeader("Connection", "close");
        httpServletResponse.flushBuffer();
        C20429IO.copyThread(socket.getInputStream(), outputStream);
        C20429IO.copy(inputStream, socket.getOutputStream());
    }

    @Override // javax.servlet.Servlet
    public void init(ServletConfig servletConfig) throws ServletException {
        this._config = servletConfig;
        this._context = servletConfig.getServletContext();
    }

    public URL proxyHttpURL(String str, String str2, int i, String str3) throws MalformedURLException {
        return new URL(str, str2, i, str3);
    }

    @Override // javax.servlet.Servlet
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        if ("CONNECT".equalsIgnoreCase(httpServletRequest.getMethod())) {
            handleConnect(httpServletRequest, httpServletResponse);
            return;
        }
        String requestURI = httpServletRequest.getRequestURI();
        if (httpServletRequest.getQueryString() != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(requestURI);
            stringBuffer.append("?");
            stringBuffer.append(httpServletRequest.getQueryString());
            requestURI = stringBuffer.toString();
        }
        URLConnection openConnection = proxyHttpURL(httpServletRequest.getScheme(), httpServletRequest.getServerName(), httpServletRequest.getServerPort(), requestURI).openConnection();
        int i = 0;
        openConnection.setAllowUserInteraction(false);
        if (openConnection instanceof HttpURLConnection) {
            httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setRequestMethod(httpServletRequest.getMethod());
            httpURLConnection.setInstanceFollowRedirects(false);
        } else {
            httpURLConnection = null;
        }
        String header = httpServletRequest.getHeader("Connection");
        if (header != null) {
            header = header.toLowerCase();
            if (header.equals("keep-alive") || header.equals("close")) {
                header = null;
            }
        }
        Enumeration headerNames = httpServletRequest.getHeaderNames();
        boolean z = false;
        boolean z2 = false;
        while (headerNames.hasMoreElements()) {
            String str = (String) headerNames.nextElement();
            String lowerCase = str.toLowerCase();
            if (!this._DontProxyHeaders.contains(lowerCase) && (header == null || header.indexOf(lowerCase) < 0)) {
                if ("content-type".equals(lowerCase)) {
                    z2 = true;
                }
                Enumeration headers = httpServletRequest.getHeaders(str);
                while (headers.hasMoreElements()) {
                    String str2 = (String) headers.nextElement();
                    if (str2 != null) {
                        openConnection.addRequestProperty(str, str2);
                        z |= "X-Forwarded-For".equalsIgnoreCase(str);
                    }
                }
            }
        }
        openConnection.setRequestProperty("Via", "1.1 (jetty)");
        if (!z) {
            openConnection.addRequestProperty("X-Forwarded-For", httpServletRequest.getRemoteAddr());
            openConnection.addRequestProperty(HttpHeaders.X_FORWARDED_PROTO, httpServletRequest.getScheme());
            openConnection.addRequestProperty(HttpHeaders.X_FORWARDED_HOST, httpServletRequest.getServerName());
            openConnection.addRequestProperty("X-Forwarded-Server", httpServletRequest.getLocalName());
        }
        String header2 = httpServletRequest.getHeader("Cache-Control");
        if (header2 != null && (header2.indexOf("no-cache") >= 0 || header2.indexOf("no-store") >= 0)) {
            openConnection.setUseCaches(false);
        }
        try {
            openConnection.setDoInput(true);
            ServletInputStream inputStream2 = httpServletRequest.getInputStream();
            if (z2) {
                openConnection.setDoOutput(true);
                C20429IO.copy(inputStream2, openConnection.getOutputStream());
            }
            openConnection.connect();
        } catch (Exception e) {
            this._context.log("proxy", e);
        }
        if (httpURLConnection != null) {
            inputStream = httpURLConnection.getErrorStream();
            httpServletResponse.setStatus(httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage());
        } else {
            inputStream = null;
        }
        if (inputStream == null) {
            try {
                inputStream = openConnection.getInputStream();
            } catch (Exception e2) {
                this._context.log("stream", e2);
                inputStream = httpURLConnection.getErrorStream();
            }
        }
        httpServletResponse.setHeader("Date", null);
        httpServletResponse.setHeader("Server", null);
        String headerFieldKey = openConnection.getHeaderFieldKey(0);
        String headerField = openConnection.getHeaderField(0);
        while (true) {
            if (headerFieldKey == null && headerField == null) {
                break;
            }
            String lowerCase2 = headerFieldKey != null ? headerFieldKey.toLowerCase() : null;
            if (headerFieldKey != null && headerField != null && !this._DontProxyHeaders.contains(lowerCase2)) {
                httpServletResponse.addHeader(headerFieldKey, headerField);
            }
            i++;
            headerFieldKey = openConnection.getHeaderFieldKey(i);
            headerField = openConnection.getHeaderField(i);
        }
        httpServletResponse.addHeader("Via", "1.1 (jetty)");
        if (inputStream != null) {
            C20429IO.copy(inputStream, httpServletResponse.getOutputStream());
        }
    }
}
