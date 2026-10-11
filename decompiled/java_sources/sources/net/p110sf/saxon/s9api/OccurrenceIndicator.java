package net.p110sf.saxon.s9api;

import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public enum OccurrenceIndicator {
    ZERO,
    ZERO_OR_ONE,
    ZERO_OR_MORE,
    ONE,
    ONE_OR_MORE;

    /* renamed from: net.sf.saxon.s9api.OccurrenceIndicator$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18474a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f101353a;

        static {
            int[] iArr = new int[OccurrenceIndicator.values().length];
            f101353a = iArr;
            try {
                iArr[OccurrenceIndicator.ZERO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f101353a[OccurrenceIndicator.ZERO_OR_ONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f101353a[OccurrenceIndicator.ZERO_OR_MORE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f101353a[OccurrenceIndicator.ONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f101353a[OccurrenceIndicator.ONE_OR_MORE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static OccurrenceIndicator getOccurrenceIndicator(int i) {
        return i != 8192 ? i != 16384 ? i != 24576 ? i != 49152 ? i != 57344 ? ZERO_OR_MORE : ZERO_OR_MORE : ONE_OR_MORE : ZERO_OR_ONE : ONE : ZERO;
    }

    public boolean allowsMany() {
        return Cardinality.allowsMany(getCardinality());
    }

    public boolean allowsZero() {
        return Cardinality.allowsZero(getCardinality());
    }

    public int getCardinality() {
        int i = C18474a.f101353a[ordinal()];
        if (i == 2) {
            return 24576;
        }
        if (i == 3) {
            return 57344;
        }
        if (i != 4) {
            return i != 5 ? 8192 : 49152;
        }
        return 16384;
    }

    public boolean subsumes(OccurrenceIndicator occurrenceIndicator) {
        return Cardinality.subsumes(getCardinality(), occurrenceIndicator.getCardinality());
    }

    @Override // java.lang.Enum
    public String toString() {
        int i = C18474a.f101353a[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "!!!" : "+" : "" : "*" : "?" : "0";
    }
}
