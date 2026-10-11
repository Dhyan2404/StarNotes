package androidx.constraintlayout.core.parser;

/* loaded from: classes3.dex */
public class CLNumber extends CLElement {

    /* renamed from: g */
    public float f3082g;

    public CLNumber(char[] cArr) {
        super(cArr);
        this.f3082g = Float.NaN;
    }

    public static CLElement allocate(char[] cArr) {
        return new CLNumber(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public float getFloat() {
        if (Float.isNaN(this.f3082g)) {
            this.f3082g = Float.parseFloat(content());
        }
        return this.f3082g;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int getInt() {
        if (Float.isNaN(this.f3082g)) {
            this.f3082g = Integer.parseInt(content());
        }
        return (int) this.f3082g;
    }

    public boolean isInt() {
        float f = getFloat();
        return ((float) ((int) f)) == f;
    }

    public void putValue(float f) {
        this.f3082g = f;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        addIndent(sb, i);
        float f = getFloat();
        int i3 = (int) f;
        if (i3 == f) {
            sb.append(i3);
        } else {
            sb.append(f);
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        float f = getFloat();
        int i = (int) f;
        if (i == f) {
            return "" + i;
        }
        return "" + f;
    }

    public CLNumber(float f) {
        super(null);
        this.f3082g = f;
    }
}
