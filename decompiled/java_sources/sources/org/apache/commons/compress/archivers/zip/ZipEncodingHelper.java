package org.apache.commons.compress.archivers.zip;

import com.sunia.HTREnginev2.ytj;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.function.Predicate;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;

/* loaded from: classes12.dex */
public abstract class ZipEncodingHelper {

    /* renamed from: a */
    public static final String f105931a = "UTF8";

    /* renamed from: b */
    public static final ZipEncoding f105932b = getZipEncoding("UTF8");

    /* renamed from: b */
    public static ByteBuffer m66532b(ByteBuffer byteBuffer, int i) {
        byteBuffer.limit(byteBuffer.position());
        byteBuffer.rewind();
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.capacity() + i);
        allocate.put(byteBuffer);
        return allocate;
    }

    /* renamed from: c */
    public static boolean m66533c(final String str) {
        if (str == null) {
            str = Charset.defaultCharset().name();
        }
        if (StandardCharsets.UTF_8.name().equalsIgnoreCase(str)) {
            return true;
        }
        return StandardCharsets.UTF_8.aliases().stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.hxo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m66534d;
                m66534d = ZipEncodingHelper.m66534d(str, (String) obj);
                return m66534d;
            }
        });
    }

    /* renamed from: d */
    public static /* synthetic */ boolean m66534d(String str, String str2) {
        return str2.equalsIgnoreCase(str);
    }

    public static ZipEncoding getZipEncoding(String str) {
        Charset defaultCharset = Charset.defaultCharset();
        if (str != null) {
            try {
                defaultCharset = Charset.forName(str);
            } catch (UnsupportedCharsetException unused) {
            }
        }
        return new ytj(defaultCharset, m66533c(defaultCharset.name()));
    }
}
