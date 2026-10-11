package sun.font;

import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphMetrics;
import java.text.CharacterIterator;

/* loaded from: classes16.dex */
public class AndroidGlyphVector extends StandardGlyphVector {

    /* renamed from: ci */
    private CharacterIterator f116336ci;
    private String text;

    public AndroidGlyphVector(Font font, String str, FontRenderContext fontRenderContext) {
        super(font, str, fontRenderContext);
        this.text = str;
    }

    public CharacterIterator getCi() {
        return this.f116336ci;
    }

    @Override // sun.font.StandardGlyphVector, java.awt.font.GlyphVector
    public GlyphMetrics getGlyphMetrics(int i) {
        return super.getGlyphMetrics(i);
    }

    public String getText() {
        return this.text;
    }

    public AndroidGlyphVector(Font font, char[] cArr, FontRenderContext fontRenderContext) {
        super(font, cArr, fontRenderContext);
        this.text = String.valueOf(cArr);
    }

    public AndroidGlyphVector(Font font, char[] cArr, int i, int i2, FontRenderContext fontRenderContext) {
        super(font, cArr, i, i2, fontRenderContext);
        this.text = String.valueOf(cArr, i, i2);
    }

    public AndroidGlyphVector(Font font, FontRenderContext fontRenderContext, int[] iArr, float[] fArr, int[] iArr2, int i) {
        super(font, fontRenderContext, iArr, fArr, iArr2, i);
    }

    public AndroidGlyphVector(Font font, CharacterIterator characterIterator, FontRenderContext fontRenderContext) {
        super(font, characterIterator, fontRenderContext);
        this.f116336ci = characterIterator;
    }

    public AndroidGlyphVector(Font font, int[] iArr, FontRenderContext fontRenderContext) {
        super(font, iArr, fontRenderContext);
    }
}
