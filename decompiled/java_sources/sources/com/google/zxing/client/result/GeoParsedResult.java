package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class GeoParsedResult extends ParsedResult {

    /* renamed from: b */
    public final double f38317b;

    /* renamed from: c */
    public final double f38318c;

    /* renamed from: d */
    public final double f38319d;

    /* renamed from: e */
    public final String f38320e;

    public GeoParsedResult(double d, double d2, double d3, String str) {
        super(ParsedResultType.GEO);
        this.f38317b = d;
        this.f38318c = d2;
        this.f38319d = d3;
        this.f38320e = str;
    }

    public double getAltitude() {
        return this.f38319d;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.f38317b);
        sb.append(", ");
        sb.append(this.f38318c);
        if (this.f38319d > 0.0d) {
            sb.append(", ");
            sb.append(this.f38319d);
            sb.append('m');
        }
        if (this.f38320e != null) {
            sb.append(" (");
            sb.append(this.f38320e);
            sb.append(')');
        }
        return sb.toString();
    }

    public String getGeoURI() {
        StringBuilder sb = new StringBuilder();
        sb.append("geo:");
        sb.append(this.f38317b);
        sb.append(',');
        sb.append(this.f38318c);
        if (this.f38319d > 0.0d) {
            sb.append(',');
            sb.append(this.f38319d);
        }
        if (this.f38320e != null) {
            sb.append('?');
            sb.append(this.f38320e);
        }
        return sb.toString();
    }

    public double getLatitude() {
        return this.f38317b;
    }

    public double getLongitude() {
        return this.f38318c;
    }

    public String getQuery() {
        return this.f38320e;
    }
}
