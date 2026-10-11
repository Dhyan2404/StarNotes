package sun.java2d.loops;

/* loaded from: classes16.dex */
class SolidPixelWriter extends PixelWriter {
    protected Object srcData;

    public SolidPixelWriter(Object obj) {
        this.srcData = obj;
    }

    @Override // sun.java2d.loops.PixelWriter
    public void writePixel(int i, int i2) {
        this.dstRast.setDataElements(i, i2, this.srcData);
    }
}
