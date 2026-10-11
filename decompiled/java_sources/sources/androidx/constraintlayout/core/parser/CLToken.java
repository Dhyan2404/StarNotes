package androidx.constraintlayout.core.parser;

/* loaded from: classes3.dex */
public class CLToken extends CLElement {

    /* renamed from: g */
    public int f3091g;

    /* renamed from: h */
    public Type f3092h;

    /* renamed from: i */
    public char[] f3093i;

    /* renamed from: j */
    public char[] f3094j;

    /* renamed from: k */
    public char[] f3095k;

    /* loaded from: classes3.dex */
    public enum Type {
        UNKNOWN,
        TRUE,
        FALSE,
        NULL
    }

    /* renamed from: androidx.constraintlayout.core.parser.CLToken$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0408a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3096a;

        static {
            int[] iArr = new int[Type.values().length];
            f3096a = iArr;
            try {
                iArr[Type.TRUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3096a[Type.FALSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3096a[Type.NULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3096a[Type.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public CLToken(char[] cArr) {
        super(cArr);
        this.f3091g = 0;
        this.f3092h = Type.UNKNOWN;
        this.f3093i = "true".toCharArray();
        this.f3094j = "false".toCharArray();
        this.f3095k = "null".toCharArray();
    }

    public static CLElement allocate(char[] cArr) {
        return new CLToken(cArr);
    }

    public boolean getBoolean() throws CLParsingException {
        Type type = this.f3092h;
        if (type == Type.TRUE) {
            return true;
        }
        if (type == Type.FALSE) {
            return false;
        }
        throw new CLParsingException("this token is not a boolean: <" + content() + ">", this);
    }

    public Type getType() {
        return this.f3092h;
    }

    public boolean isNull() throws CLParsingException {
        if (this.f3092h == Type.NULL) {
            return true;
        }
        throw new CLParsingException("this token is not a null: <" + content() + ">", this);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        addIndent(sb, i);
        sb.append(content());
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (!CLParser.f3086d) {
            return content();
        }
        return "<" + content() + ">";
    }

    public boolean validate(char c, long j) {
        int i = C0408a.f3096a[this.f3092h.ordinal()];
        if (i == 1) {
            char[] cArr = this.f3093i;
            int i2 = this.f3091g;
            r2 = cArr[i2] == c;
            if (r2 && i2 + 1 == cArr.length) {
                setEnd(j);
            }
        } else if (i == 2) {
            char[] cArr2 = this.f3094j;
            int i3 = this.f3091g;
            r2 = cArr2[i3] == c;
            if (r2 && i3 + 1 == cArr2.length) {
                setEnd(j);
            }
        } else if (i == 3) {
            char[] cArr3 = this.f3095k;
            int i4 = this.f3091g;
            r2 = cArr3[i4] == c;
            if (r2 && i4 + 1 == cArr3.length) {
                setEnd(j);
            }
        } else if (i == 4) {
            char[] cArr4 = this.f3093i;
            int i5 = this.f3091g;
            if (cArr4[i5] == c) {
                this.f3092h = Type.TRUE;
            } else if (this.f3094j[i5] == c) {
                this.f3092h = Type.FALSE;
            } else if (this.f3095k[i5] == c) {
                this.f3092h = Type.NULL;
            }
            r2 = true;
        }
        this.f3091g++;
        return r2;
    }
}
