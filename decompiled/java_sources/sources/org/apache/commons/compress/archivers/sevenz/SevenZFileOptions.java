package org.apache.commons.compress.archivers.sevenz;

/* loaded from: classes12.dex */
public class SevenZFileOptions {
    public static final SevenZFileOptions DEFAULT = new SevenZFileOptions(Integer.MAX_VALUE, false, false);

    /* renamed from: d */
    public static final int f105648d = Integer.MAX_VALUE;

    /* renamed from: e */
    public static final boolean f105649e = false;

    /* renamed from: f */
    public static final boolean f105650f = false;

    /* renamed from: a */
    public final int f105651a;

    /* renamed from: b */
    public final boolean f105652b;

    /* renamed from: c */
    public final boolean f105653c;

    /* loaded from: classes12.dex */
    public static class Builder {

        /* renamed from: a */
        public int f105654a = Integer.MAX_VALUE;

        /* renamed from: b */
        public boolean f105655b = false;

        /* renamed from: c */
        public boolean f105656c = false;

        public SevenZFileOptions build() {
            return new SevenZFileOptions(this.f105654a, this.f105655b, this.f105656c);
        }

        public Builder withMaxMemoryLimitInKb(int i) {
            this.f105654a = i;
            return this;
        }

        public Builder withTryToRecoverBrokenArchives(boolean z) {
            this.f105656c = z;
            return this;
        }

        public Builder withUseDefaultNameForUnnamedEntries(boolean z) {
            this.f105655b = z;
            return this;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public int getMaxMemoryLimitInKb() {
        return this.f105651a;
    }

    public boolean getTryToRecoverBrokenArchives() {
        return this.f105653c;
    }

    public boolean getUseDefaultNameForUnnamedEntries() {
        return this.f105652b;
    }

    public SevenZFileOptions(int i, boolean z, boolean z2) {
        this.f105651a = i;
        this.f105652b = z;
        this.f105653c = z2;
    }
}
