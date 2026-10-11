package sun.java2d.pipe;

/* loaded from: classes16.dex */
public interface SpanIterator {
    long getNativeIterator();

    void getPathBox(int[] iArr);

    void intersectClipBox(int i, int i2, int i3, int i4);

    boolean nextSpan(int[] iArr);

    void skipDownTo(int i);
}
