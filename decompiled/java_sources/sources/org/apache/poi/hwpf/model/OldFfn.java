package org.apache.poi.hwpf.model;

import java.nio.charset.Charset;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Chars;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.util.Internal;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes12.dex */
public final class OldFfn {
    private static final Logger LOG = LogManager.getLogger((Class<?>) OldFfn.class);
    private final byte _chs;
    private final String altFontName;
    private final String fontName;
    private final int length;

    public OldFfn(byte b, String str, String str2, int i) {
        this._chs = b;
        this.fontName = str;
        this.altFontName = str2;
        this.length = i;
    }

    public static OldFfn build(byte[] bArr, int i, int i2) {
        Charset charset;
        int i3;
        int i4;
        int i5;
        if (i + 6 > i2) {
            return null;
        }
        short s = bArr[i];
        int i6 = i + 1;
        if (i6 + s > i2) {
            LOG.atWarn().log("Asked to read beyond font table end. Skipping font");
            return null;
        }
        int i7 = i6 + 3;
        byte b = bArr[i7];
        int i8 = b & 255;
        FontCharset valueOf = FontCharset.valueOf(i8);
        if (valueOf == null) {
            LOG.atWarn().log("Couldn't find font for type: {}", Unbox.box(i8));
            charset = null;
        } else {
            charset = valueOf.getCharset();
        }
        if (charset == null) {
            charset = StringUtil.WIN_1252;
        }
        int i9 = i7 + 1 + 1;
        int i10 = i9;
        while (true) {
            i3 = -1;
            if (i10 >= i2) {
                i4 = -1;
                break;
            }
            if (bArr[i10] == 0) {
                i4 = i10 - i9;
                break;
            }
            i10++;
        }
        if (i4 == -1) {
            LOG.atWarn().log("Couldn't find the zero-byte delimited font name length");
            return null;
        }
        String str = new String(bArr, i9, i4, charset);
        int i11 = i9 + i4 + 1;
        if (i11 - i < s) {
            int i12 = i11;
            while (true) {
                if (i12 > i + s) {
                    i5 = -1;
                    break;
                }
                if (bArr[i12] == 0) {
                    i5 = i12 - i11;
                    break;
                }
                i12++;
            }
            r1 = i5 > -1 ? new String(bArr, i11, i5, charset) : null;
            i3 = i5;
        }
        return new OldFfn(b, str, r1, i4 + 6 + (i3 < 0 ? 0 : i3 + 1) + 1);
    }

    public String getAltFontName() {
        return this.altFontName;
    }

    public byte getChs() {
        return this._chs;
    }

    public int getLength() {
        return this.length;
    }

    public String getMainFontName() {
        return this.fontName;
    }

    public String toString() {
        return "OldFfn{_chs=" + (this._chs & 255) + ", fontName='" + this.fontName + Chars.QUOTE + ", altFontName='" + this.altFontName + Chars.QUOTE + ", length=" + this.length + '}';
    }
}
