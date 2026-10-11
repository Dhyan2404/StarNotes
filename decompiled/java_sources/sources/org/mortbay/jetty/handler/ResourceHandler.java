package org.mortbay.jetty.handler;

import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.WriterOutputStream;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpFields;
import org.mortbay.jetty.HttpHeaders;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.log.Log;
import org.mortbay.resource.FileResource;
import org.mortbay.resource.Resource;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class ResourceHandler extends AbstractHandler {

    /* renamed from: e */
    public ContextHandler f114922e;

    /* renamed from: f */
    public Resource f114923f;

    /* renamed from: g */
    public String[] f114924g = {"index.html"};

    /* renamed from: h */
    public MimeTypes f114925h = new MimeTypes();

    /* renamed from: i */
    public ByteArrayBuffer f114926i;

    /* renamed from: j */
    public boolean f114927j;

    public void doResponseHeaders(HttpServletResponse httpServletResponse, Resource resource, String str) {
        if (str != null) {
            httpServletResponse.setContentType(str);
        }
        long length = resource.length();
        if (!(httpServletResponse instanceof Response)) {
            if (length > 0) {
                httpServletResponse.setHeader("Content-Length", TypeUtil.toString(length));
            }
            ByteArrayBuffer byteArrayBuffer = this.f114926i;
            if (byteArrayBuffer != null) {
                httpServletResponse.setHeader("Cache-Control", byteArrayBuffer.toString());
                return;
            }
            return;
        }
        HttpFields httpFields = ((Response) httpServletResponse).getHttpFields();
        if (length > 0) {
            httpFields.putLongField(HttpHeaders.CONTENT_LENGTH_BUFFER, length);
        }
        ByteArrayBuffer byteArrayBuffer2 = this.f114926i;
        if (byteArrayBuffer2 != null) {
            httpFields.put(HttpHeaders.CACHE_CONTROL_BUFFER, byteArrayBuffer2);
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        ContextHandler.SContext currentContext = ContextHandler.getCurrentContext();
        this.f114922e = currentContext == null ? null : currentContext.getContextHandler();
        if (!this.f114927j && !FileResource.getCheckAliases()) {
            throw new IllegalStateException("Alias checking disabled");
        }
        super.doStart();
    }

    public Resource getBaseResource() {
        Resource resource = this.f114923f;
        if (resource == null) {
            return null;
        }
        return resource;
    }

    public String getCacheControl() {
        return this.f114926i.toString();
    }

    public MimeTypes getMimeTypes() {
        return this.f114925h;
    }

    public Resource getResource(String str) throws MalformedURLException {
        ContextHandler contextHandler;
        if (str != null && str.startsWith("/")) {
            Resource resource = this.f114923f;
            if (resource == null && ((contextHandler = this.f114922e) == null || (resource = contextHandler.getBaseResource()) == null)) {
                return null;
            }
            try {
                return resource.addPath(URIUtil.canonicalPath(str));
            } catch (Exception e) {
                Log.ignore(e);
                return null;
            }
        }
        throw new MalformedURLException(str);
    }

    public String getResourceBase() {
        Resource resource = this.f114923f;
        if (resource == null) {
            return null;
        }
        return resource.toString();
    }

    public Resource getWelcome(Resource resource) throws MalformedURLException, IOException {
        int i = 0;
        while (true) {
            String[] strArr = this.f114924g;
            if (i >= strArr.length) {
                return null;
            }
            Resource addPath = resource.addPath(strArr[i]);
            if (addPath.exists() && !addPath.isDirectory()) {
                return addPath;
            }
            i++;
        }
    }

    public String[] getWelcomeFiles() {
        return this.f114924g;
    }

    @Override // org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        boolean z;
        OutputStream writerOutputStream;
        Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
        if (request.isHandled()) {
            return;
        }
        if ("GET".equals(httpServletRequest.getMethod())) {
            z = false;
        } else if (!"HEAD".equals(httpServletRequest.getMethod())) {
            return;
        } else {
            z = true;
        }
        Resource resource = getResource(httpServletRequest);
        if (resource == null || !resource.exists()) {
            return;
        }
        if (!this.f114927j && resource.getAlias() != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(resource);
            stringBuffer.append(" aliased to ");
            stringBuffer.append(resource.getAlias());
            Log.info(stringBuffer.toString());
            return;
        }
        request.setHandled(true);
        if (resource.isDirectory()) {
            if (!httpServletRequest.getPathInfo().endsWith("/")) {
                httpServletResponse.sendRedirect(httpServletResponse.encodeRedirectURL(URIUtil.addPaths(httpServletRequest.getRequestURI(), "/")));
                return;
            }
            resource = getWelcome(resource);
            if (resource == null || !resource.exists() || resource.isDirectory()) {
                httpServletResponse.sendError(403);
                return;
            }
        }
        Resource resource2 = resource;
        long lastModified = resource2.lastModified();
        if (lastModified > 0) {
            long dateHeader = httpServletRequest.getDateHeader("If-Modified-Since");
            if (dateHeader > 0 && lastModified / 1000 <= dateHeader / 1000) {
                httpServletResponse.setStatus(304);
                return;
            }
        }
        Buffer mimeByExtension = this.f114925h.getMimeByExtension(resource2.toString());
        if (mimeByExtension == null) {
            mimeByExtension = this.f114925h.getMimeByExtension(httpServletRequest.getPathInfo());
        }
        doResponseHeaders(httpServletResponse, resource2, mimeByExtension != null ? mimeByExtension.toString() : null);
        httpServletResponse.setDateHeader("Last-Modified", lastModified);
        if (z) {
            return;
        }
        try {
            writerOutputStream = httpServletResponse.getOutputStream();
        } catch (IllegalStateException unused) {
            writerOutputStream = new WriterOutputStream(httpServletResponse.getWriter());
        }
        OutputStream outputStream = writerOutputStream;
        if (outputStream instanceof HttpConnection.Output) {
            ((HttpConnection.Output) outputStream).sendContent(resource2.getInputStream());
        } else {
            resource2.writeTo(outputStream, 0L, resource2.length());
        }
    }

    public boolean isAliases() {
        return this.f114927j;
    }

    public void setAliases(boolean z) {
        this.f114927j = z;
    }

    public void setBaseResource(Resource resource) {
        this.f114923f = resource;
    }

    public void setCacheControl(String str) {
        this.f114926i = str == null ? null : new ByteArrayBuffer(str);
    }

    public void setMimeTypes(MimeTypes mimeTypes) {
        this.f114925h = mimeTypes;
    }

    public void setResourceBase(String str) {
        try {
            setBaseResource(Resource.newResource(str));
        } catch (Exception e) {
            Log.warn(e.toString());
            Log.debug(e);
            throw new IllegalArgumentException(str);
        }
    }

    public void setWelcomeFiles(String[] strArr) {
        this.f114924g = strArr;
    }

    public Resource getResource(HttpServletRequest httpServletRequest) throws MalformedURLException {
        String pathInfo = httpServletRequest.getPathInfo();
        if (pathInfo == null) {
            return null;
        }
        return getResource(pathInfo);
    }
}
