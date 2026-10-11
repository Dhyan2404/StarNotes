package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import java.net.Proxy;
import java.net.URL;
import org.mortbay.jetty.HttpVersions;

/* loaded from: classes9.dex */
public final class RequestLine {
    /* renamed from: a */
    public static String m52704a(Request request, Proxy.Type type, Protocol protocol) {
        StringBuilder sb = new StringBuilder();
        sb.append(request.method());
        sb.append(' ');
        if (m52705b(request, type)) {
            sb.append(request.url());
        } else {
            sb.append(requestPath(request.url()));
        }
        sb.append(' ');
        sb.append(version(protocol));
        return sb.toString();
    }

    /* renamed from: b */
    public static boolean m52705b(Request request, Proxy.Type type) {
        return !request.isHttps() && type == Proxy.Type.HTTP;
    }

    public static String requestPath(URL url) {
        String file = url.getFile();
        if (file == null) {
            return "/";
        }
        if (file.startsWith("/")) {
            return file;
        }
        return "/" + file;
    }

    public static String version(Protocol protocol) {
        return protocol == Protocol.HTTP_1_0 ? HttpVersions.HTTP_1_0 : HttpVersions.HTTP_1_1;
    }
}
