package org.apache.http.impl;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestFactory;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class DefaultHttpRequestFactory implements HttpRequestFactory {
    public static final DefaultHttpRequestFactory INSTANCE = new DefaultHttpRequestFactory();

    /* renamed from: a */
    public static final String[] f110400a = {"GET"};

    /* renamed from: b */
    public static final String[] f110401b = {"POST", "PUT"};

    /* renamed from: c */
    public static final String[] f110402c = {"HEAD", "OPTIONS", "DELETE", "TRACE", "CONNECT"};

    /* renamed from: d */
    public static final String[] f110403d = {"PATCH"};

    /* renamed from: a */
    public static boolean m68364a(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.http.HttpRequestFactory
    public HttpRequest newHttpRequest(RequestLine requestLine) throws MethodNotSupportedException {
        Args.notNull(requestLine, "Request line");
        String method = requestLine.getMethod();
        if (m68364a(f110400a, method)) {
            return new BasicHttpRequest(requestLine);
        }
        if (m68364a(f110401b, method)) {
            return new BasicHttpEntityEnclosingRequest(requestLine);
        }
        if (m68364a(f110402c, method)) {
            return new BasicHttpRequest(requestLine);
        }
        if (m68364a(f110403d, method)) {
            return new BasicHttpEntityEnclosingRequest(requestLine);
        }
        throw new MethodNotSupportedException(method + " method not supported");
    }

    @Override // org.apache.http.HttpRequestFactory
    public HttpRequest newHttpRequest(String str, String str2) throws MethodNotSupportedException {
        if (m68364a(f110400a, str)) {
            return new BasicHttpRequest(str, str2);
        }
        if (m68364a(f110401b, str)) {
            return new BasicHttpEntityEnclosingRequest(str, str2);
        }
        if (m68364a(f110402c, str)) {
            return new BasicHttpRequest(str, str2);
        }
        if (m68364a(f110403d, str)) {
            return new BasicHttpEntityEnclosingRequest(str, str2);
        }
        throw new MethodNotSupportedException(str + " method not supported");
    }
}
