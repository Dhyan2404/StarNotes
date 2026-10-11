package com.google.zxing.client.result;

import java.util.Map;

/* loaded from: classes4.dex */
public final class ExpandedProductParsedResult extends ParsedResult {
    public static final String KILOGRAM = "KG";
    public static final String POUND = "LB";

    /* renamed from: b */
    public final String f38302b;

    /* renamed from: c */
    public final String f38303c;

    /* renamed from: d */
    public final String f38304d;

    /* renamed from: e */
    public final String f38305e;

    /* renamed from: f */
    public final String f38306f;

    /* renamed from: g */
    public final String f38307g;

    /* renamed from: h */
    public final String f38308h;

    /* renamed from: i */
    public final String f38309i;

    /* renamed from: j */
    public final String f38310j;

    /* renamed from: k */
    public final String f38311k;

    /* renamed from: l */
    public final String f38312l;

    /* renamed from: m */
    public final String f38313m;

    /* renamed from: n */
    public final String f38314n;

    /* renamed from: o */
    public final String f38315o;

    /* renamed from: p */
    public final Map<String, String> f38316p;

    public ExpandedProductParsedResult(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Map<String, String> map) {
        super(ParsedResultType.PRODUCT);
        this.f38302b = str;
        this.f38303c = str2;
        this.f38304d = str3;
        this.f38305e = str4;
        this.f38306f = str5;
        this.f38307g = str6;
        this.f38308h = str7;
        this.f38309i = str8;
        this.f38310j = str9;
        this.f38311k = str10;
        this.f38312l = str11;
        this.f38313m = str12;
        this.f38314n = str13;
        this.f38315o = str14;
        this.f38316p = map;
    }

    /* renamed from: a */
    public static boolean m30475a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m30476b(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ExpandedProductParsedResult)) {
            return false;
        }
        ExpandedProductParsedResult expandedProductParsedResult = (ExpandedProductParsedResult) obj;
        return m30475a(this.f38303c, expandedProductParsedResult.f38303c) && m30475a(this.f38304d, expandedProductParsedResult.f38304d) && m30475a(this.f38305e, expandedProductParsedResult.f38305e) && m30475a(this.f38306f, expandedProductParsedResult.f38306f) && m30475a(this.f38308h, expandedProductParsedResult.f38308h) && m30475a(this.f38309i, expandedProductParsedResult.f38309i) && m30475a(this.f38310j, expandedProductParsedResult.f38310j) && m30475a(this.f38311k, expandedProductParsedResult.f38311k) && m30475a(this.f38312l, expandedProductParsedResult.f38312l) && m30475a(this.f38313m, expandedProductParsedResult.f38313m) && m30475a(this.f38314n, expandedProductParsedResult.f38314n) && m30475a(this.f38315o, expandedProductParsedResult.f38315o) && m30475a(this.f38316p, expandedProductParsedResult.f38316p);
    }

    public String getBestBeforeDate() {
        return this.f38308h;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return String.valueOf(this.f38302b);
    }

    public String getExpirationDate() {
        return this.f38309i;
    }

    public String getLotNumber() {
        return this.f38305e;
    }

    public String getPackagingDate() {
        return this.f38307g;
    }

    public String getPrice() {
        return this.f38313m;
    }

    public String getPriceCurrency() {
        return this.f38315o;
    }

    public String getPriceIncrement() {
        return this.f38314n;
    }

    public String getProductID() {
        return this.f38303c;
    }

    public String getProductionDate() {
        return this.f38306f;
    }

    public String getRawText() {
        return this.f38302b;
    }

    public String getSscc() {
        return this.f38304d;
    }

    public Map<String, String> getUncommonAIs() {
        return this.f38316p;
    }

    public String getWeight() {
        return this.f38310j;
    }

    public String getWeightIncrement() {
        return this.f38312l;
    }

    public String getWeightType() {
        return this.f38311k;
    }

    public int hashCode() {
        return m30476b(this.f38316p) ^ ((((((((((((m30476b(this.f38303c) ^ 0) ^ m30476b(this.f38304d)) ^ m30476b(this.f38305e)) ^ m30476b(this.f38306f)) ^ m30476b(this.f38308h)) ^ m30476b(this.f38309i)) ^ m30476b(this.f38310j)) ^ m30476b(this.f38311k)) ^ m30476b(this.f38312l)) ^ m30476b(this.f38313m)) ^ m30476b(this.f38314n)) ^ m30476b(this.f38315o));
    }
}
