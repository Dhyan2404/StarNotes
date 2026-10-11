package sun.font;

import com.google.android.material.motion.MotionUtils;
import java.awt.Font;
import java.awt.font.FontRenderContext;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes16.dex */
final class StandardTextSource extends TextSource {
    private final char[] chars;
    private final int clen;

    /* renamed from: cm */
    private final CoreMetrics f116369cm;
    private final int cstart;
    private final int flags;
    private final Font font;
    private final FontRenderContext frc;
    private final int len;
    private final int level;
    private final int start;

    public StandardTextSource(char[] cArr, int i, int i2, int i3, int i4, int i5, int i6, Font font, FontRenderContext fontRenderContext, CoreMetrics coreMetrics) {
        if (cArr == null) {
            throw new IllegalArgumentException("bad chars: null");
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("bad cstart: " + i3);
        }
        if (i < i3) {
            throw new IllegalArgumentException("bad start: " + i + " for cstart: " + i3);
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("bad clen: " + i4);
        }
        int i7 = i3 + i4;
        if (i7 > cArr.length) {
            throw new IllegalArgumentException("bad clen: " + i4 + " cstart: " + i3 + " for array len: " + cArr.length);
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("bad len: " + i2);
        }
        if (i + i2 > i7) {
            throw new IllegalArgumentException("bad len: " + i2 + " start: " + i + " for cstart: " + i3 + " clen: " + i4);
        }
        if (font == null) {
            throw new IllegalArgumentException("bad font: null");
        }
        if (fontRenderContext == null) {
            throw new IllegalArgumentException("bad frc: null");
        }
        this.chars = cArr;
        this.start = i;
        this.len = i2;
        this.cstart = i3;
        this.clen = i4;
        this.level = i5;
        this.flags = i6;
        this.font = font;
        this.frc = fontRenderContext;
        if (coreMetrics != null) {
            this.f116369cm = coreMetrics;
        } else {
            this.f116369cm = ((FontLineMetrics) font.getLineMetrics(cArr, i3, i4, fontRenderContext)).f116344cm;
        }
    }

    @Override // sun.font.TextSource
    public int getBidiLevel() {
        return this.level;
    }

    @Override // sun.font.TextSource
    public char[] getChars() {
        return this.chars;
    }

    @Override // sun.font.TextSource
    public int getContextLength() {
        return this.clen;
    }

    @Override // sun.font.TextSource
    public int getContextStart() {
        return this.cstart;
    }

    @Override // sun.font.TextSource
    public CoreMetrics getCoreMetrics() {
        return this.f116369cm;
    }

    @Override // sun.font.TextSource
    public FontRenderContext getFRC() {
        return this.frc;
    }

    @Override // sun.font.TextSource
    public Font getFont() {
        return this.font;
    }

    @Override // sun.font.TextSource
    public int getLayoutFlags() {
        return this.flags;
    }

    @Override // sun.font.TextSource
    public int getLength() {
        return this.len;
    }

    @Override // sun.font.TextSource
    public int getStart() {
        return this.start;
    }

    @Override // sun.font.TextSource
    public TextSource getSubSource(int i, int i2, int i3) {
        if (i < 0 || i2 < 0 || i + i2 > this.len) {
            throw new IllegalArgumentException("bad start (" + i + ") or length (" + i2 + MotionUtils.f31762d);
        }
        int i4 = this.level;
        if (i3 != 2) {
            int i5 = (this.flags & 8) == 0 ? 1 : 0;
            if ((i3 != 0 || i5 == 0) && !(i3 == 1 && i5 == 0)) {
                throw new IllegalArgumentException("direction flag is invalid");
            }
            i4 = i5 ^ 1;
        }
        return new StandardTextSource(this.chars, this.start + i, i2, this.cstart, this.clen, i4, this.flags, this.font, this.frc, this.f116369cm);
    }

    public String toString() {
        return toString(true);
    }

    @Override // sun.font.TextSource
    public String toString(boolean z) {
        int i;
        int i2;
        StringBuffer stringBuffer = new StringBuffer(super.toString());
        stringBuffer.append("[start:");
        stringBuffer.append(this.start);
        stringBuffer.append(", len:");
        stringBuffer.append(this.len);
        stringBuffer.append(", cstart:");
        stringBuffer.append(this.cstart);
        stringBuffer.append(", clen:");
        stringBuffer.append(this.clen);
        stringBuffer.append(", chars:\"");
        if (z) {
            i = this.cstart;
            i2 = this.clen;
        } else {
            i = this.start;
            i2 = this.len;
        }
        int i3 = i2 + i;
        for (int i4 = i; i4 < i3; i4++) {
            if (i4 > i) {
                stringBuffer.append(" ");
            }
            stringBuffer.append(Integer.toHexString(this.chars[i4]));
        }
        stringBuffer.append("\"");
        stringBuffer.append(", level:");
        stringBuffer.append(this.level);
        stringBuffer.append(", flags:");
        stringBuffer.append(this.flags);
        stringBuffer.append(", font:");
        stringBuffer.append(this.font);
        stringBuffer.append(", frc:");
        stringBuffer.append(this.frc);
        stringBuffer.append(", cm:");
        stringBuffer.append(this.f116369cm);
        stringBuffer.append(IteratorUtils.f104924b);
        return stringBuffer.toString();
    }
}
