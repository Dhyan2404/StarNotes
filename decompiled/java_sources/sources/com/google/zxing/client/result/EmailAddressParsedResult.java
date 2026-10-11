package com.google.zxing.client.result;

import androidx.core.net.MailTo;

/* loaded from: classes4.dex */
public final class EmailAddressParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String[] f38295b;

    /* renamed from: c */
    public final String[] f38296c;

    /* renamed from: d */
    public final String[] f38297d;

    /* renamed from: e */
    public final String f38298e;

    /* renamed from: f */
    public final String f38299f;

    public EmailAddressParsedResult(String str) {
        this(new String[]{str}, null, null, null, null);
    }

    public String[] getBCCs() {
        return this.f38297d;
    }

    public String getBody() {
        return this.f38299f;
    }

    public String[] getCCs() {
        return this.f38296c;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(30);
        ParsedResult.maybeAppend(this.f38295b, sb);
        ParsedResult.maybeAppend(this.f38296c, sb);
        ParsedResult.maybeAppend(this.f38297d, sb);
        ParsedResult.maybeAppend(this.f38298e, sb);
        ParsedResult.maybeAppend(this.f38299f, sb);
        return sb.toString();
    }

    @Deprecated
    public String getEmailAddress() {
        String[] strArr = this.f38295b;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        return strArr[0];
    }

    @Deprecated
    public String getMailtoURI() {
        return MailTo.MAILTO_SCHEME;
    }

    public String getSubject() {
        return this.f38298e;
    }

    public String[] getTos() {
        return this.f38295b;
    }

    public EmailAddressParsedResult(String[] strArr, String[] strArr2, String[] strArr3, String str, String str2) {
        super(ParsedResultType.EMAIL_ADDRESS);
        this.f38295b = strArr;
        this.f38296c = strArr2;
        this.f38297d = strArr3;
        this.f38298e = str;
        this.f38299f = str2;
    }
}
