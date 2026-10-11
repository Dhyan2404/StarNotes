package io.nano.tex;

/* loaded from: classes10.dex */
public final class TeXRender {
    private long nativePtr;
    private ActionRecorder recorder;

    public TeXRender(long j) {
        this.nativePtr = j;
    }

    private static native void nDraw(long j, ActionRecorder actionRecorder, int i, int i2);

    private static native void nFinalize(long j);

    private static native float nGetBaseline(long j);

    private static native int nGetDepth(long j);

    private static native int nGetHeight(long j);

    private static native float nGetTextSize(long j);

    private static native int nGetWidth(long j);

    private static native void nSetForeground(long j, int i);

    private static native void nSetHeight(long j, int i, int i2);

    private static native void nSetTextSize(long j, float f);

    private static native void nSetWidth(long j, int i, int i2);

    public void draw(Graphics2D graphics2D, int i, int i2) {
        if (this.recorder == null) {
            ActionRecorder actionRecorder = new ActionRecorder();
            this.recorder = actionRecorder;
            nDraw(this.nativePtr, actionRecorder, 0, 0);
        }
        this.recorder.setPosition(i, i2);
        this.recorder.play(graphics2D);
    }

    public float getBaseline() {
        return nGetBaseline(this.nativePtr);
    }

    public int getDepth() {
        return nGetDepth(this.nativePtr);
    }

    public int getHeight() {
        return nGetHeight(this.nativePtr);
    }

    public float getTextSize() {
        return nGetTextSize(this.nativePtr);
    }

    public int getWidth() {
        return nGetWidth(this.nativePtr);
    }

    public void invalidateDrawingCache() {
        this.recorder = null;
    }

    public void release() {
        nFinalize(this.nativePtr);
        this.recorder = null;
    }

    public void setForeground(int i) {
        this.recorder = null;
        nSetForeground(this.nativePtr, i);
    }

    public void setHeight(int i, int i2) {
        nSetHeight(this.nativePtr, i, i2);
    }

    public void setTextSize(float f) {
        nSetTextSize(this.nativePtr, f);
    }

    public void setWidth(int i, int i2) {
        nSetWidth(this.nativePtr, i, i2);
    }
}
