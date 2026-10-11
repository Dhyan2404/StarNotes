package okhttp3.logging;

import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, m61528d2 = {"isProbablyUtf8", "", "Lokio/Buffer;", "okhttp-logging-interceptor"}, m61529k = 2, m61530mv = {1, 6, 0}, m61532xi = 48)
/* loaded from: classes11.dex */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(@NotNull Buffer buffer) {
        long coerceAtMost;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        try {
            Buffer buffer2 = new Buffer();
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(buffer.size(), 64L);
            buffer.copyTo(buffer2, 0L, coerceAtMost);
            int i = 0;
            while (i < 16) {
                i++;
                if (buffer2.exhausted()) {
                    return true;
                }
                int readUtf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
