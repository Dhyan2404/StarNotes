package sun.java2d.loops;

import com.onyx.android.sdk.base.utils.ColorUtils;
import java.awt.Font;
import org.apache.commons.collections4.IteratorUtils;
import sun.font.Font2D;
import sun.font.FontStrike;

/* loaded from: classes16.dex */
public class FontInfo implements Cloneable {
    public int aaHint;
    public double[] devTx;
    public Font font;
    public Font2D font2D;
    public FontStrike fontStrike;
    public double[] glyphTx;
    public boolean lcdRGBOrder;
    public boolean lcdSubPixPos;
    public float originX;
    public float originY;
    public int pixelHeight;

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String mtx(double[] dArr) {
        return IteratorUtils.f104923a + dArr[0] + ", " + dArr[1] + ", " + dArr[2] + ", " + dArr[3] + IteratorUtils.f104924b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontInfo[font=");
        sb.append(this.font);
        sb.append(", devTx=");
        sb.append(mtx(this.devTx));
        sb.append(", glyphTx=");
        sb.append(mtx(this.glyphTx));
        sb.append(", pixelHeight=");
        sb.append(this.pixelHeight);
        sb.append(", origin=(");
        sb.append(this.originX);
        sb.append(",");
        sb.append(this.originY);
        sb.append("), aaHint=");
        sb.append(this.aaHint);
        sb.append(", lcdRGBOrder=");
        sb.append(this.lcdRGBOrder ? ColorUtils.RGB_COLOR_START : "BGR");
        sb.append("lcdSubPixPos=");
        sb.append(this.lcdSubPixPos);
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }
}
