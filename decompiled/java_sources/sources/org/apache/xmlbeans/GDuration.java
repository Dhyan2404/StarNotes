package org.apache.xmlbeans;

import java.io.Serializable;
import java.math.BigDecimal;

/* loaded from: classes13.dex */
public final class GDuration implements GDurationSpecification, Serializable {
    private static final int SEEN_DAY = 3;
    private static final int SEEN_HOUR = 4;
    private static final int SEEN_MINUTE = 5;
    private static final int SEEN_MONTH = 2;
    private static final int SEEN_NOTHING = 0;
    private static final int SEEN_SECOND = 6;
    private static final int SEEN_YEAR = 1;
    private static final long serialVersionUID = 1;
    private int _CY;

    /* renamed from: _D */
    private int f113726_D;

    /* renamed from: _M */
    private int f113727_M;
    private BigDecimal _fs;

    /* renamed from: _h */
    private int f113728_h;

    /* renamed from: _m */
    private int f113729_m;

    /* renamed from: _s */
    private int f113730_s;
    private int _sign;

    public GDuration() {
        this._sign = 1;
        this._fs = GDate._zero;
    }

    private GDuration _add(GDurationSpecification gDurationSpecification, int i) {
        GDuration gDuration = new GDuration(this);
        gDuration._CY += gDurationSpecification.getYear() * i;
        gDuration.f113727_M += gDurationSpecification.getMonth() * i;
        gDuration.f113726_D += gDurationSpecification.getDay() * i;
        gDuration.f113728_h += gDurationSpecification.getHour() * i;
        gDuration.f113729_m += gDurationSpecification.getMinute() * i;
        gDuration.f113730_s += gDurationSpecification.getSecond() * i;
        if (gDurationSpecification.getFraction().signum() == 0) {
            return gDuration;
        }
        if (gDuration._fs.signum() == 0 && i == 1) {
            gDuration._fs = gDurationSpecification.getFraction();
        } else {
            gDuration._fs = i > 0 ? gDuration._fs.add(gDurationSpecification.getFraction()) : gDuration._fs.subtract(gDurationSpecification.getFraction());
        }
        return gDuration;
    }

    public GDuration add(GDurationSpecification gDurationSpecification) {
        return _add(gDurationSpecification, this._sign * gDurationSpecification.getSign());
    }

    public Object clone() {
        return new GDuration(this);
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int compareToGDuration(GDurationSpecification gDurationSpecification) {
        return GDurationBuilder.compareDurations(this, gDurationSpecification);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GDuration)) {
            return false;
        }
        GDuration gDuration = (GDuration) obj;
        return this._sign == gDuration.getSign() && this._CY == gDuration.getYear() && this.f113727_M == gDuration.getMonth() && this.f113726_D == gDuration.getDay() && this.f113728_h == gDuration.getHour() && this.f113729_m == gDuration.getMinute() && this.f113730_s == gDuration.getSecond() && this._fs.equals(gDuration.getFraction());
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getDay() {
        return this.f113726_D;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public BigDecimal getFraction() {
        return this._fs;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getHour() {
        return this.f113728_h;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getMinute() {
        return this.f113729_m;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getMonth() {
        return this.f113727_M;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getSecond() {
        return this.f113730_s;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getSign() {
        return this._sign;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getYear() {
        return this._CY;
    }

    public int hashCode() {
        return this.f113730_s + (this.f113729_m * 67) + (this.f113728_h * 3607) + (this.f113726_D * 86407) + (this.f113727_M * 2678407) + (this._CY * 32140807) + (this._sign * 11917049);
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final boolean isImmutable() {
        return true;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public boolean isValid() {
        return GDurationBuilder.isValidDuration(this);
    }

    public GDuration subtract(GDurationSpecification gDurationSpecification) {
        return _add(gDurationSpecification, (-this._sign) * gDurationSpecification.getSign());
    }

    public String toString() {
        return GDurationBuilder.formatDuration(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GDuration(java.lang.CharSequence r17) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.GDuration.<init>(java.lang.CharSequence):void");
    }

    public GDuration(int i, int i2, int i3, int i4, int i5, int i6, int i7, BigDecimal bigDecimal) {
        if (i != 1 && i != -1) {
            throw new IllegalArgumentException();
        }
        this._sign = i;
        this._CY = i2;
        this.f113727_M = i3;
        this.f113726_D = i4;
        this.f113728_h = i5;
        this.f113729_m = i6;
        this.f113730_s = i7;
        this._fs = bigDecimal == null ? GDate._zero : bigDecimal;
    }

    public GDuration(GDurationSpecification gDurationSpecification) {
        this._sign = gDurationSpecification.getSign();
        this._CY = gDurationSpecification.getYear();
        this.f113727_M = gDurationSpecification.getMonth();
        this.f113726_D = gDurationSpecification.getDay();
        this.f113728_h = gDurationSpecification.getHour();
        this.f113729_m = gDurationSpecification.getMinute();
        this.f113730_s = gDurationSpecification.getSecond();
        this._fs = gDurationSpecification.getFraction();
    }
}
