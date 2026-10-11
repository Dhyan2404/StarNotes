package sun.awt;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import sun.awt.AWTCharset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public final class WDefaultFontCharset extends AWTCharset {
    private String fontName;

    /* loaded from: classes16.dex */
    public class Encoder extends AWTCharset.Encoder {
        private Encoder() {
            super(WDefaultFontCharset.this);
        }

        @Override // sun.awt.AWTCharset.Encoder, java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            return WDefaultFontCharset.this.canConvert(c);
        }
    }

    static {
        initIDs();
    }

    public WDefaultFontCharset(String str) {
        super("WDefaultFontCharset", Charset.forName("windows-1252"));
        this.fontName = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native synchronized boolean canConvert(char c);

    private static native void initIDs();

    @Override // sun.awt.AWTCharset, java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder();
    }
}
