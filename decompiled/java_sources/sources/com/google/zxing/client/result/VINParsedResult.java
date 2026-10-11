package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class VINParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String f38355b;

    /* renamed from: c */
    public final String f38356c;

    /* renamed from: d */
    public final String f38357d;

    /* renamed from: e */
    public final String f38358e;

    /* renamed from: f */
    public final String f38359f;

    /* renamed from: g */
    public final String f38360g;

    /* renamed from: h */
    public final int f38361h;

    /* renamed from: i */
    public final char f38362i;

    /* renamed from: j */
    public final String f38363j;

    public VINParsedResult(String str, String str2, String str3, String str4, String str5, String str6, int i, char c, String str7) {
        super(ParsedResultType.VIN);
        this.f38355b = str;
        this.f38356c = str2;
        this.f38357d = str3;
        this.f38358e = str4;
        this.f38359f = str5;
        this.f38360g = str6;
        this.f38361h = i;
        this.f38362i = c;
        this.f38363j = str7;
    }

    public String getCountryCode() {
        return this.f38359f;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(50);
        sb.append(this.f38356c);
        sb.append(' ');
        sb.append(this.f38357d);
        sb.append(' ');
        sb.append(this.f38358e);
        sb.append('\n');
        String str = this.f38359f;
        if (str != null) {
            sb.append(str);
            sb.append(' ');
        }
        sb.append(this.f38361h);
        sb.append(' ');
        sb.append(this.f38362i);
        sb.append(' ');
        sb.append(this.f38363j);
        sb.append('\n');
        return sb.toString();
    }

    public int getModelYear() {
        return this.f38361h;
    }

    public char getPlantCode() {
        return this.f38362i;
    }

    public String getSequentialNumber() {
        return this.f38363j;
    }

    public String getVIN() {
        return this.f38355b;
    }

    public String getVehicleAttributes() {
        return this.f38360g;
    }

    public String getVehicleDescriptorSection() {
        return this.f38357d;
    }

    public String getVehicleIdentifierSection() {
        return this.f38358e;
    }

    public String getWorldManufacturerID() {
        return this.f38356c;
    }
}
