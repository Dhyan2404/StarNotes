package org.apache.commons.math3.optim.linear;

/* loaded from: classes12.dex */
public enum Relationship {
    EQ("="),
    LEQ("<="),
    GEQ(">=");

    private final String stringValue;

    /* renamed from: org.apache.commons.math3.optim.linear.Relationship$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19218a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f109077a;

        static {
            int[] iArr = new int[Relationship.values().length];
            f109077a = iArr;
            try {
                iArr[Relationship.LEQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f109077a[Relationship.GEQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    Relationship(String str) {
        this.stringValue = str;
    }

    public Relationship oppositeRelationship() {
        int i = C19218a.f109077a[ordinal()];
        return i != 1 ? i != 2 ? EQ : LEQ : GEQ;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.stringValue;
    }
}
