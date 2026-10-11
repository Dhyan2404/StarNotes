package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.TokenIterator;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.message.BasicTokenIterator;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class DefaultConnectionReuseStrategy implements ConnectionReuseStrategy {
    public static final DefaultConnectionReuseStrategy INSTANCE = new DefaultConnectionReuseStrategy();

    /* renamed from: a */
    public final boolean m68363a(HttpRequest httpRequest, HttpResponse httpResponse) {
        int statusCode;
        return ((httpRequest != null && httpRequest.getRequestLine().getMethod().equalsIgnoreCase("HEAD")) || (statusCode = httpResponse.getStatusLine().getStatusCode()) < 200 || statusCode == 204 || statusCode == 304 || statusCode == 205) ? false : true;
    }

    public TokenIterator createTokenIterator(HeaderIterator headerIterator) {
        return new BasicTokenIterator(headerIterator);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0092, code lost:
    
        if (java.lang.Long.parseLong(r9[0].getValue()) < 0) goto L33;
     */
    @Override // org.apache.http.ConnectionReuseStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean keepAlive(org.apache.http.HttpResponse r10, org.apache.http.protocol.HttpContext r11) {
        /*
            r9 = this;
            java.lang.String r0 = "HTTP response"
            org.apache.http.util.Args.notNull(r10, r0)
            java.lang.String r0 = "HTTP context"
            org.apache.http.util.Args.notNull(r11, r0)
            org.apache.http.StatusLine r0 = r10.getStatusLine()
            int r0 = r0.getStatusCode()
            r1 = 204(0xcc, float:2.86E-43)
            java.lang.String r2 = "Transfer-Encoding"
            java.lang.String r3 = "Content-Length"
            r4 = 0
            if (r0 != r1) goto L33
            org.apache.http.Header r0 = r10.getFirstHeader(r3)
            if (r0 == 0) goto L2c
            java.lang.String r0 = r0.getValue()     // Catch: java.lang.NumberFormatException -> L2c
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L2c
            if (r0 <= 0) goto L2c
            return r4
        L2c:
            org.apache.http.Header r0 = r10.getFirstHeader(r2)
            if (r0 == 0) goto L33
            return r4
        L33:
            java.lang.String r0 = "http.request"
            java.lang.Object r11 = r11.getAttribute(r0)
            org.apache.http.HttpRequest r11 = (org.apache.http.HttpRequest) r11
            java.lang.String r0 = "Close"
            java.lang.String r1 = "Connection"
            if (r11 == 0) goto L5b
            org.apache.http.message.BasicTokenIterator r5 = new org.apache.http.message.BasicTokenIterator     // Catch: org.apache.http.ParseException -> L5a
            org.apache.http.HeaderIterator r6 = r11.headerIterator(r1)     // Catch: org.apache.http.ParseException -> L5a
            r5.<init>(r6)     // Catch: org.apache.http.ParseException -> L5a
        L4a:
            boolean r6 = r5.hasNext()     // Catch: org.apache.http.ParseException -> L5a
            if (r6 == 0) goto L5b
            java.lang.String r6 = r5.nextToken()     // Catch: org.apache.http.ParseException -> L5a
            boolean r6 = r0.equalsIgnoreCase(r6)     // Catch: org.apache.http.ParseException -> L5a
            if (r6 == 0) goto L4a
        L5a:
            return r4
        L5b:
            org.apache.http.StatusLine r5 = r10.getStatusLine()
            org.apache.http.ProtocolVersion r5 = r5.getProtocolVersion()
            org.apache.http.Header r2 = r10.getFirstHeader(r2)
            r6 = 1
            if (r2 == 0) goto L77
            java.lang.String r9 = "chunked"
            java.lang.String r11 = r2.getValue()
            boolean r9 = r9.equalsIgnoreCase(r11)
            if (r9 != 0) goto L95
            return r4
        L77:
            boolean r9 = r9.m68363a(r11, r10)
            if (r9 == 0) goto L95
            org.apache.http.Header[] r9 = r10.getHeaders(r3)
            int r11 = r9.length
            if (r11 != r6) goto L94
            r9 = r9[r4]
            java.lang.String r9 = r9.getValue()     // Catch: java.lang.NumberFormatException -> L94
            long r2 = java.lang.Long.parseLong(r9)     // Catch: java.lang.NumberFormatException -> L94
            r7 = 0
            int r9 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r9 >= 0) goto L95
        L94:
            return r4
        L95:
            org.apache.http.HeaderIterator r9 = r10.headerIterator(r1)
            boolean r11 = r9.hasNext()
            if (r11 != 0) goto La5
            java.lang.String r9 = "Proxy-Connection"
            org.apache.http.HeaderIterator r9 = r10.headerIterator(r9)
        La5:
            boolean r10 = r9.hasNext()
            if (r10 == 0) goto Ld0
            org.apache.http.message.BasicTokenIterator r10 = new org.apache.http.message.BasicTokenIterator     // Catch: org.apache.http.ParseException -> Lcf
            r10.<init>(r9)     // Catch: org.apache.http.ParseException -> Lcf
            r9 = r4
        Lb1:
            boolean r11 = r10.hasNext()     // Catch: org.apache.http.ParseException -> Lcf
            if (r11 == 0) goto Lcc
            java.lang.String r11 = r10.nextToken()     // Catch: org.apache.http.ParseException -> Lcf
            boolean r1 = r0.equalsIgnoreCase(r11)     // Catch: org.apache.http.ParseException -> Lcf
            if (r1 == 0) goto Lc2
            return r4
        Lc2:
            java.lang.String r1 = "Keep-Alive"
            boolean r11 = r1.equalsIgnoreCase(r11)     // Catch: org.apache.http.ParseException -> Lcf
            if (r11 == 0) goto Lb1
            r9 = r6
            goto Lb1
        Lcc:
            if (r9 == 0) goto Ld0
            return r6
        Lcf:
            return r4
        Ld0:
            org.apache.http.HttpVersion r9 = org.apache.http.HttpVersion.HTTP_1_0
            boolean r9 = r5.lessEquals(r9)
            r9 = r9 ^ r6
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.DefaultConnectionReuseStrategy.keepAlive(org.apache.http.HttpResponse, org.apache.http.protocol.HttpContext):boolean");
    }
}
