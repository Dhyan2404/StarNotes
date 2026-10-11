package sun.font;

import android.graphics.Typeface;
import com.onyx.harfbuzz.graphics.HBTypeface;
import java.awt.FontFormatException;
import sun.java2d.Disposer;

/* loaded from: classes16.dex */
public class AndroidFont2D extends TrueTypeFont {
    public AndroidFont2D(String str, Object obj, int i, boolean z) throws FontFormatException {
        this(str, obj, i, z, true);
    }

    @Override // sun.font.FileFont, sun.font.Font2D
    public FontStrike createStrike(FontStrikeDesc fontStrikeDesc) {
        return new AndroidFontStrike(this, fontStrikeDesc);
    }

    @Override // sun.font.Font2D
    public HBTypeface getHBTypeface() {
        return com.trans.android.font.FontManager.getHBTypeface(this.platName);
    }

    @Override // sun.font.TrueTypeFont, sun.font.FileFont
    public synchronized FontScaler getScaler() {
        if (this.scaler == null) {
            try {
                AndroidFontScaler androidFontScaler = new AndroidFontScaler(this, this.fontIndex, this.supportsCJK, this.fileSize);
                this.scaler = androidFontScaler;
                Disposer.addObjectRecord(this, androidFontScaler);
            } catch (Throwable unused) {
                this.scaler = FontScaler.getNullScaler();
                FontManagerFactory.getInstance().deRegisterBadFont(this);
            }
        }
        return this.scaler;
    }

    @Override // sun.font.Font2D
    public Typeface getTypeface() {
        return com.trans.android.font.FontManager.getTypeface(this.platName);
    }

    @Override // sun.font.TrueTypeFont
    public String toString() {
        return "** Android Font: Family=" + this.familyName + " Name=" + this.fullName + " style=" + this.style + " fileName=" + getPublicFileName();
    }

    public AndroidFont2D(String str, Object obj, int i, boolean z, boolean z2) throws FontFormatException {
        super(str, obj, i, z, z2);
    }
}
