package onyx.org.apache.commons.io.charset;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.charset.CharsetEncoders;

/* loaded from: classes11.dex */
public final class CharsetEncoders {
    /* renamed from: b */
    public static /* synthetic */ CharsetEncoder m65199b() {
        return Charset.defaultCharset().newEncoder();
    }

    public static CharsetEncoder toCharsetEncoder(CharsetEncoder charsetEncoder) {
        return toCharsetEncoder(charsetEncoder, new Supplier() { // from class: com.sunia.HTREnginev2.prd
            @Override // java.util.function.Supplier
            public final Object get() {
                CharsetEncoder m65199b;
                m65199b = CharsetEncoders.m65199b();
                return m65199b;
            }
        });
    }

    public static CharsetEncoder toCharsetEncoder(CharsetEncoder charsetEncoder, Supplier<CharsetEncoder> supplier) {
        return charsetEncoder != null ? charsetEncoder : supplier.get();
    }
}
