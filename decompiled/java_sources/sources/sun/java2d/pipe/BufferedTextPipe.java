package sun.java2d.pipe;

import java.awt.AlphaComposite;
import java.awt.Composite;
import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public abstract class BufferedTextPipe extends GlyphListPipe {
    private static final int BYTES_PER_GLYPH_IMAGE = 8;
    private static final int BYTES_PER_GLYPH_POSITION = 8;
    private static final int OFFSET_CONTRAST = 8;
    private static final int OFFSET_POSITIONS = 0;
    private static final int OFFSET_RGBORDER = 2;
    private static final int OFFSET_SUBPIXPOS = 1;

    /* renamed from: rq */
    protected final RenderQueue f116388rq;

    public BufferedTextPipe(RenderQueue renderQueue) {
        this.f116388rq = renderQueue;
    }

    private static int createPackedParams(SunGraphics2D sunGraphics2D, GlyphList glyphList) {
        return ((sunGraphics2D.lcdTextContrast & 255) << 8) | ((glyphList.isRGBOrder() ? 1 : 0) << 2) | ((glyphList.usePositions() ? 1 : 0) << 0) | ((glyphList.isSubPixPos() ? 1 : 0) << 1);
    }

    private void enqueueGlyphList(final SunGraphics2D sunGraphics2D, final GlyphList glyphList) {
        RenderBuffer buffer = this.f116388rq.getBuffer();
        final int numGlyphs = glyphList.getNumGlyphs();
        int i = numGlyphs * 8;
        int i2 = i + 24 + (glyphList.usePositions() ? i : 0);
        final long[] images = glyphList.getImages();
        final float x = glyphList.getX() + 0.5f;
        final float y = glyphList.getY() + 0.5f;
        this.f116388rq.addReference(glyphList.getStrike());
        if (i2 > buffer.capacity()) {
            this.f116388rq.flushAndInvokeNow(new Runnable() { // from class: sun.java2d.pipe.BufferedTextPipe.1
                @Override // java.lang.Runnable
                public void run() {
                    BufferedTextPipe.this.drawGlyphList(numGlyphs, glyphList.usePositions(), glyphList.isSubPixPos(), glyphList.isRGBOrder(), sunGraphics2D.lcdTextContrast, x, y, images, glyphList.getPositions());
                }
            });
            return;
        }
        if (i2 > buffer.remaining()) {
            this.f116388rq.flushNow();
        }
        this.f116388rq.ensureAlignment(20);
        buffer.putInt(40);
        buffer.putInt(numGlyphs);
        buffer.putInt(createPackedParams(sunGraphics2D, glyphList));
        buffer.putFloat(x);
        buffer.putFloat(y);
        buffer.put(images, 0, numGlyphs);
        if (glyphList.usePositions()) {
            buffer.put(glyphList.getPositions(), 0, numGlyphs * 2);
        }
    }

    public abstract void drawGlyphList(int i, boolean z, boolean z2, boolean z3, int i2, float f, float f2, long[] jArr, float[] fArr);

    @Override // sun.java2d.pipe.GlyphListPipe
    public void drawGlyphList(SunGraphics2D sunGraphics2D, GlyphList glyphList) {
        Composite composite = sunGraphics2D.composite;
        if (composite == AlphaComposite.Src) {
            composite = AlphaComposite.SrcOver;
        }
        this.f116388rq.lock();
        try {
            validateContext(sunGraphics2D, composite);
            enqueueGlyphList(sunGraphics2D, glyphList);
        } finally {
            this.f116388rq.unlock();
        }
    }

    public abstract void validateContext(SunGraphics2D sunGraphics2D, Composite composite);
}
