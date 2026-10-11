package org.apache.http.client;

/* loaded from: classes12.dex */
public class HttpResponseException extends ClientProtocolException {
    private static final long serialVersionUID = -7186627969477257933L;
    private final String reasonPhrase;
    private final int statusCode;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public HttpResponseException(int r3, java.lang.String r4) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "status code: %d"
            r0.append(r1)
            boolean r1 = org.apache.http.util.TextUtils.isBlank(r4)
            if (r1 == 0) goto L13
            java.lang.String r1 = ""
            goto L15
        L13:
            java.lang.String r1 = ", reason phrase: %s"
        L15:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r3)
            java.lang.Object[] r1 = new java.lang.Object[]{r1, r4}
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r2.<init>(r0)
            r2.statusCode = r3
            r2.reasonPhrase = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.client.HttpResponseException.<init>(int, java.lang.String):void");
    }

    public String getReasonPhrase() {
        return this.reasonPhrase;
    }

    public int getStatusCode() {
        return this.statusCode;
    }
}
