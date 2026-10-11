package sun.font;

/* loaded from: classes16.dex */
public final class TextRecord {
    public int limit;
    public int max;
    public int min;
    public int start;
    public char[] text;

    public void init(char[] cArr, int i, int i2, int i3, int i4) {
        this.text = cArr;
        this.start = i;
        this.limit = i2;
        this.min = i3;
        this.max = i4;
    }
}
