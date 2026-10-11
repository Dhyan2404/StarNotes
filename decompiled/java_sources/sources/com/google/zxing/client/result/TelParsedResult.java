package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class TelParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String f38335b;

    /* renamed from: c */
    public final String f38336c;

    /* renamed from: d */
    public final String f38337d;

    public TelParsedResult(String str, String str2, String str3) {
        super(ParsedResultType.TEL);
        this.f38335b = str;
        this.f38336c = str2;
        this.f38337d = str3;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        ParsedResult.maybeAppend(this.f38335b, sb);
        ParsedResult.maybeAppend(this.f38337d, sb);
        return sb.toString();
    }

    public String getNumber() {
        return this.f38335b;
    }

    public String getTelURI() {
        return this.f38336c;
    }

    public String getTitle() {
        return this.f38337d;
    }
}
