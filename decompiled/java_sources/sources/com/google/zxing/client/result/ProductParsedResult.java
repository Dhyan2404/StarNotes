package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class ProductParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String f38324b;

    /* renamed from: c */
    public final String f38325c;

    public ProductParsedResult(String str) {
        this(str, str);
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.f38324b;
    }

    public String getNormalizedProductID() {
        return this.f38325c;
    }

    public String getProductID() {
        return this.f38324b;
    }

    public ProductParsedResult(String str, String str2) {
        super(ParsedResultType.PRODUCT);
        this.f38324b = str;
        this.f38325c = str2;
    }
}
