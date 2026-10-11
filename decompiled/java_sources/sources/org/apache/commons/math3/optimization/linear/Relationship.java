package org.apache.commons.math3.optimization.linear;

@Deprecated
/* loaded from: classes12.dex */
public enum Relationship {
    EQ("="),
    LEQ("<="),
    GEQ(">=");

    private final String stringValue;

    /* renamed from: org.apache.commons.math3.optimization.linear.Relationship$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19252a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f109534a;

        static {
            int[] iArr = new int[Relationship.values().length];
            f109534a = iArr;
            try {
                iArr[Relationship.LEQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f109534a[Relationship.GEQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    Relationship(String str) {
        this.stringValue = str;
    }

    public Relationship oppositeRelationship() {
        int i = C19252a.f109534a[ordinal()];
        return i != 1 ? i != 2 ? EQ : LEQ : GEQ;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.stringValue;
    }
}
