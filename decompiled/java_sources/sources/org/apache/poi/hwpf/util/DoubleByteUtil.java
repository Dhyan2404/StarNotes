package org.apache.poi.hwpf.util;

import com.onyx.android.sdk.base.data.font.TTFFont;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes12.dex */
public class DoubleByteUtil {
    public static final Charset BIG5;
    public static final Set<Charset> DOUBLE_BYTE_CHARSETS;

    static {
        Charset forName = Charset.forName(TTFFont.CHARSET_BIG5);
        BIG5 = forName;
        DOUBLE_BYTE_CHARSETS = Collections.singleton(forName);
    }

    public static String cp950ToString(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        LittleEndianCP950Reader littleEndianCP950Reader = new LittleEndianCP950Reader(bArr, i, i2);
        try {
            for (int read = littleEndianCP950Reader.read(); read != -1; read = littleEndianCP950Reader.read()) {
                sb.append((char) read);
            }
            littleEndianCP950Reader.close();
            return sb.toString();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    littleEndianCP950Reader.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
