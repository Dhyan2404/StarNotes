package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class SMSParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String[] f38331b;

    /* renamed from: c */
    public final String[] f38332c;

    /* renamed from: d */
    public final String f38333d;

    /* renamed from: e */
    public final String f38334e;

    public SMSParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.f38331b = new String[]{str};
        this.f38332c = new String[]{str2};
        this.f38333d = str3;
        this.f38334e = str4;
    }

    public String getBody() {
        return this.f38334e;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.f38331b, sb);
        ParsedResult.maybeAppend(this.f38333d, sb);
        ParsedResult.maybeAppend(this.f38334e, sb);
        return sb.toString();
    }

    public String[] getNumbers() {
        return this.f38331b;
    }

    public String getSMSURI() {
        StringBuilder sb = new StringBuilder();
        sb.append("sms:");
        boolean z = true;
        for (int i = 0; i < this.f38331b.length; i++) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(this.f38331b[i]);
            String[] strArr = this.f38332c;
            if (strArr != null && strArr[i] != null) {
                sb.append(";via=");
                sb.append(this.f38332c[i]);
            }
        }
        boolean z2 = this.f38334e != null;
        boolean z3 = this.f38333d != null;
        if (z2 || z3) {
            sb.append('?');
            if (z2) {
                sb.append("body=");
                sb.append(this.f38334e);
            }
            if (z3) {
                if (z2) {
                    sb.append('&');
                }
                sb.append("subject=");
                sb.append(this.f38333d);
            }
        }
        return sb.toString();
    }

    public String getSubject() {
        return this.f38333d;
    }

    public String[] getVias() {
        return this.f38332c;
    }

    public SMSParsedResult(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.f38331b = strArr;
        this.f38332c = strArr2;
        this.f38333d = str;
        this.f38334e = str2;
    }
}
