package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class WifiParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String f38366b;

    /* renamed from: c */
    public final String f38367c;

    /* renamed from: d */
    public final String f38368d;

    /* renamed from: e */
    public final boolean f38369e;

    public WifiParsedResult(String str, String str2, String str3) {
        this(str, str2, str3, false);
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(80);
        ParsedResult.maybeAppend(this.f38366b, sb);
        ParsedResult.maybeAppend(this.f38367c, sb);
        ParsedResult.maybeAppend(this.f38368d, sb);
        ParsedResult.maybeAppend(Boolean.toString(this.f38369e), sb);
        return sb.toString();
    }

    public String getNetworkEncryption() {
        return this.f38367c;
    }

    public String getPassword() {
        return this.f38368d;
    }

    public String getSsid() {
        return this.f38366b;
    }

    public boolean isHidden() {
        return this.f38369e;
    }

    public WifiParsedResult(String str, String str2, String str3, boolean z) {
        super(ParsedResultType.WIFI);
        this.f38366b = str2;
        this.f38367c = str;
        this.f38368d = str3;
        this.f38369e = z;
    }
}
