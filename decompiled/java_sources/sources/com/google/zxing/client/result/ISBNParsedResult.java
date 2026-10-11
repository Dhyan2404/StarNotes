package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class ISBNParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String f38322b;

    public ISBNParsedResult(String str) {
        super(ParsedResultType.ISBN);
        this.f38322b = str;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.f38322b;
    }

    public String getISBN() {
        return this.f38322b;
    }
}
