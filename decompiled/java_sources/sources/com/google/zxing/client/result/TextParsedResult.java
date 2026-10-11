package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class TextParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String f38338b;

    /* renamed from: c */
    public final String f38339c;

    public TextParsedResult(String str, String str2) {
        super(ParsedResultType.TEXT);
        this.f38338b = str;
        this.f38339c = str2;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.f38338b;
    }

    public String getLanguage() {
        return this.f38339c;
    }

    public String getText() {
        return this.f38338b;
    }
}
