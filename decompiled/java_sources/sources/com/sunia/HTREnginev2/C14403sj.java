package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.jxf;

/* renamed from: com.sunia.HTREnginev2.sj */
/* loaded from: classes4.dex */
public final class C14403sj extends jxf {

    /* renamed from: g */
    public final long f84189g;

    /* renamed from: h */
    public final int f84190h;

    /* renamed from: i */
    public final int f84191i;

    /* renamed from: j */
    public final long f84192j;

    /* renamed from: k */
    public final int f84193k;

    /* renamed from: com.sunia.HTREnginev2.sj$b */
    /* loaded from: classes4.dex */
    public static final class b extends jxf.AbstractC13955a {

        /* renamed from: a */
        public Long f84194a;

        /* renamed from: b */
        public Integer f84195b;

        /* renamed from: c */
        public Integer f84196c;

        /* renamed from: d */
        public Long f84197d;

        /* renamed from: e */
        public Integer f84198e;

        @Override // com.sunia.HTREnginev2.jxf.AbstractC13955a
        /* renamed from: a */
        public jxf mo55064a() {
            String str = "";
            if (this.f84194a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f84195b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f84196c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f84197d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f84198e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new C14403sj(this.f84194a.longValue(), this.f84195b.intValue(), this.f84196c.intValue(), this.f84197d.longValue(), this.f84198e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.sunia.HTREnginev2.jxf.AbstractC13955a
        /* renamed from: b */
        public jxf.AbstractC13955a mo55065b(int i) {
            this.f84196c = Integer.valueOf(i);
            return this;
        }

        @Override // com.sunia.HTREnginev2.jxf.AbstractC13955a
        /* renamed from: c */
        public jxf.AbstractC13955a mo55066c(long j) {
            this.f84197d = Long.valueOf(j);
            return this;
        }

        @Override // com.sunia.HTREnginev2.jxf.AbstractC13955a
        /* renamed from: d */
        public jxf.AbstractC13955a mo55067d(int i) {
            this.f84195b = Integer.valueOf(i);
            return this;
        }

        @Override // com.sunia.HTREnginev2.jxf.AbstractC13955a
        /* renamed from: e */
        public jxf.AbstractC13955a mo55068e(int i) {
            this.f84198e = Integer.valueOf(i);
            return this;
        }

        @Override // com.sunia.HTREnginev2.jxf.AbstractC13955a
        /* renamed from: f */
        public jxf.AbstractC13955a mo55069f(long j) {
            this.f84194a = Long.valueOf(j);
            return this;
        }
    }

    @Override // com.sunia.HTREnginev2.jxf
    /* renamed from: b */
    public int mo55058b() {
        return this.f84191i;
    }

    @Override // com.sunia.HTREnginev2.jxf
    /* renamed from: c */
    public long mo55059c() {
        return this.f84192j;
    }

    @Override // com.sunia.HTREnginev2.jxf
    /* renamed from: d */
    public int mo55060d() {
        return this.f84190h;
    }

    @Override // com.sunia.HTREnginev2.jxf
    /* renamed from: e */
    public int mo55061e() {
        return this.f84193k;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jxf)) {
            return false;
        }
        jxf jxfVar = (jxf) obj;
        return this.f84189g == jxfVar.mo55062f() && this.f84190h == jxfVar.mo55060d() && this.f84191i == jxfVar.mo55058b() && this.f84192j == jxfVar.mo55059c() && this.f84193k == jxfVar.mo55061e();
    }

    @Override // com.sunia.HTREnginev2.jxf
    /* renamed from: f */
    public long mo55062f() {
        return this.f84189g;
    }

    public int hashCode() {
        long j = this.f84189g;
        int i = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f84190h) * 1000003) ^ this.f84191i) * 1000003;
        long j2 = this.f84192j;
        return this.f84193k ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f84189g + ", loadBatchSize=" + this.f84190h + ", criticalSectionEnterTimeoutMs=" + this.f84191i + ", eventCleanUpAge=" + this.f84192j + ", maxBlobByteSizePerRow=" + this.f84193k + "}";
    }

    public C14403sj(long j, int i, int i2, long j2, int i3) {
        this.f84189g = j;
        this.f84190h = i;
        this.f84191i = i2;
        this.f84192j = j2;
        this.f84193k = i3;
    }
}
