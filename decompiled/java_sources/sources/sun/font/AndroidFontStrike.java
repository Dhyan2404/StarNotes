package sun.font;

import com.trans.android.util.MatrixUtils;
import java.awt.geom.AffineTransform;

/* loaded from: classes16.dex */
public class AndroidFontStrike extends FileFontStrike {
    public AndroidFontStrike(FileFont fileFont, FontStrikeDesc fontStrikeDesc) {
        super(fileFont, fontStrikeDesc);
        AffineTransform affineTransform = fontStrikeDesc.glyphTx;
        if (this.invertDevTx != null) {
            affineTransform = (AffineTransform) affineTransform.clone();
            affineTransform.concatenate(this.invertDevTx);
            this.invertDevTx = null;
        }
        this.pScalerContext = (long) (MatrixUtils.getScaleX(affineTransform) * 10000.0d);
    }
}
