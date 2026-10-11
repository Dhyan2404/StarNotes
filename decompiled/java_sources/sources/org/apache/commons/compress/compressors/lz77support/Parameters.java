package org.apache.commons.compress.compressors.lz77support;

/* loaded from: classes12.dex */
public final class Parameters {
    public static final int TRUE_MIN_BACK_REFERENCE_LENGTH = 3;

    /* renamed from: a */
    public final int f106280a;

    /* renamed from: b */
    public final int f106281b;

    /* renamed from: c */
    public final int f106282c;

    /* renamed from: d */
    public final int f106283d;

    /* renamed from: e */
    public final int f106284e;

    /* renamed from: f */
    public final int f106285f;

    /* renamed from: g */
    public final int f106286g;

    /* renamed from: h */
    public final int f106287h;

    /* renamed from: i */
    public final boolean f106288i;

    /* loaded from: classes12.dex */
    public static class Builder {

        /* renamed from: a */
        public final int f106289a;

        /* renamed from: b */
        public int f106290b;

        /* renamed from: c */
        public int f106291c;

        /* renamed from: d */
        public int f106292d;

        /* renamed from: e */
        public int f106293e;

        /* renamed from: f */
        public Integer f106294f;

        /* renamed from: g */
        public Integer f106295g;

        /* renamed from: h */
        public Integer f106296h;

        /* renamed from: i */
        public Boolean f106297i;

        public Parameters build() {
            int i;
            int i2;
            Integer num = this.f106294f;
            int intValue = num != null ? num.intValue() : Math.max(this.f106290b, this.f106291c / 2);
            Integer num2 = this.f106295g;
            int intValue2 = num2 != null ? num2.intValue() : Math.max(256, this.f106289a / 128);
            Boolean bool = this.f106297i;
            boolean z = bool == null || bool.booleanValue();
            if (z) {
                Integer num3 = this.f106296h;
                if (num3 == null) {
                    i2 = intValue;
                    return new Parameters(this.f106289a, this.f106290b, this.f106291c, this.f106292d, this.f106293e, intValue, intValue2, z, i2);
                }
                i = num3.intValue();
            } else {
                i = this.f106290b;
            }
            i2 = i;
            return new Parameters(this.f106289a, this.f106290b, this.f106291c, this.f106292d, this.f106293e, intValue, intValue2, z, i2);
        }

        public Builder tunedForCompressionRatio() {
            Integer valueOf = Integer.valueOf(this.f106291c);
            this.f106296h = valueOf;
            this.f106294f = valueOf;
            this.f106295g = Integer.valueOf(Math.max(32, this.f106289a / 16));
            this.f106297i = Boolean.TRUE;
            return this;
        }

        public Builder tunedForSpeed() {
            this.f106294f = Integer.valueOf(Math.max(this.f106290b, this.f106291c / 8));
            this.f106295g = Integer.valueOf(Math.max(32, this.f106289a / 1024));
            this.f106297i = Boolean.FALSE;
            this.f106296h = Integer.valueOf(this.f106290b);
            return this;
        }

        public Builder withLazyMatching(boolean z) {
            this.f106297i = Boolean.valueOf(z);
            return this;
        }

        public Builder withLazyThreshold(int i) {
            this.f106296h = Integer.valueOf(i);
            return this;
        }

        public Builder withMaxBackReferenceLength(int i) {
            int i2 = this.f106290b;
            if (i >= i2) {
                i2 = Math.min(i, this.f106289a - 1);
            }
            this.f106291c = i2;
            return this;
        }

        public Builder withMaxLiteralLength(int i) {
            this.f106293e = i < 1 ? this.f106289a : Math.min(i, this.f106289a);
            return this;
        }

        public Builder withMaxNumberOfCandidates(int i) {
            this.f106295g = Integer.valueOf(i);
            return this;
        }

        public Builder withMaxOffset(int i) {
            this.f106292d = i < 1 ? this.f106289a - 1 : Math.min(i, this.f106289a - 1);
            return this;
        }

        public Builder withMinBackReferenceLength(int i) {
            int max = Math.max(3, i);
            this.f106290b = max;
            if (this.f106289a < max) {
                throw new IllegalArgumentException("minBackReferenceLength can't be bigger than windowSize");
            }
            if (this.f106291c < max) {
                this.f106291c = max;
            }
            return this;
        }

        public Builder withNiceBackReferenceLength(int i) {
            this.f106294f = Integer.valueOf(i);
            return this;
        }

        public Builder(int i) {
            if (i >= 2 && Parameters.m66789b(i)) {
                this.f106289a = i;
                this.f106290b = 3;
                int i2 = i - 1;
                this.f106291c = i2;
                this.f106292d = i2;
                this.f106293e = i;
                return;
            }
            throw new IllegalArgumentException("windowSize must be a power of two");
        }
    }

    /* renamed from: b */
    public static boolean m66789b(int i) {
        return (i & (i + (-1))) == 0;
    }

    public static Builder builder(int i) {
        return new Builder(i);
    }

    public boolean getLazyMatching() {
        return this.f106288i;
    }

    public int getLazyMatchingThreshold() {
        return this.f106287h;
    }

    public int getMaxBackReferenceLength() {
        return this.f106282c;
    }

    public int getMaxCandidates() {
        return this.f106286g;
    }

    public int getMaxLiteralLength() {
        return this.f106284e;
    }

    public int getMaxOffset() {
        return this.f106283d;
    }

    public int getMinBackReferenceLength() {
        return this.f106281b;
    }

    public int getNiceBackReferenceLength() {
        return this.f106285f;
    }

    public int getWindowSize() {
        return this.f106280a;
    }

    public Parameters(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8) {
        this.f106280a = i;
        this.f106281b = i2;
        this.f106282c = i3;
        this.f106283d = i4;
        this.f106284e = i5;
        this.f106285f = i6;
        this.f106286g = i7;
        this.f106288i = z;
        this.f106287h = i8;
    }
}
