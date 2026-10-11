package org.mortbay.jetty.handler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class RewriteHandler extends HandlerWrapper {

    /* renamed from: i */
    public String f114930i;

    /* renamed from: g */
    public boolean f114928g = true;

    /* renamed from: h */
    public boolean f114929h = true;

    /* renamed from: j */
    public PathMap f114931j = new PathMap(true);

    public void addRewriteRule(String str, String str2) {
        if (str == null || str.length() == 0 || !str.startsWith("/")) {
            throw new IllegalArgumentException();
        }
        if (this.f114931j == null) {
            this.f114931j = new PathMap(true);
        }
        this.f114931j.put(str, str2);
    }

    public String getOriginalPathAttribute() {
        return this.f114930i;
    }

    public PathMap getRewrite() {
        return this.f114931j;
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        PathMap pathMap;
        PathMap.Entry match;
        if (isStarted() && (pathMap = this.f114931j) != null && (match = pathMap.getMatch(str)) != null && match.getValue() != null) {
            String str2 = this.f114930i;
            if (str2 != null) {
                httpServletRequest.setAttribute(str2, str);
            }
            str = URIUtil.addPaths(match.getValue().toString(), PathMap.pathInfo(match.getKey().toString(), str));
            if (this.f114928g) {
                ((Request) httpServletRequest).setRequestURI(str);
            }
            if (this.f114929h) {
                ((Request) httpServletRequest).setPathInfo(str);
            }
        }
        super.handle(str, httpServletRequest, httpServletResponse, i);
    }

    public boolean isRewritePathInfo() {
        return this.f114929h;
    }

    public boolean isRewriteRequestURI() {
        return this.f114928g;
    }

    public void setOriginalPathAttribute(String str) {
        this.f114930i = str;
    }

    public void setRewrite(PathMap pathMap) {
        this.f114931j = pathMap;
    }

    public void setRewritePathInfo(boolean z) {
        this.f114929h = z;
    }

    public void setRewriteRequestURI(boolean z) {
        this.f114928g = z;
    }
}
