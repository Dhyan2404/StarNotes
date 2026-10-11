package com.onyx.android.sdk.cloudstorage.common.utils;

import com.couchbase.lite.internal.core.C4Replicator;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/utils/InterceptorUtils;", "", "Lokhttp3/Response;", AbstractLogger.RESPONSE, "", "getPlainTextResponseBodyString", "Lokhttp3/Headers;", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "", "a", "Lokio/Buffer;", "buffer", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class InterceptorUtils {

    @NotNull
    public static final InterceptorUtils INSTANCE = new InterceptorUtils();

    /* renamed from: a */
    public final boolean m32302a(Headers headers) {
        boolean equals;
        String str = headers.get("Content-Encoding");
        if (str != null) {
            equals = StringsKt__StringsJVMKt.equals(str, "identity", true);
            if (!equals) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m32303b(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, buffer.size() < 64 ? buffer.size() : 64L);
            for (int i = 0; i < 16; i++) {
                if (buffer2.exhausted()) {
                    break;
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

    @Nullable
    public final String getPlainTextResponseBodyString(@NotNull Response response) throws IOException {
        Intrinsics.checkNotNullParameter(response, "response");
        ResponseBody body = response.body();
        if (body == null || m32302a(response.headers())) {
            return null;
        }
        long contentLength = body.getContentLength();
        BufferedSource source = body.getSource();
        source.request(Long.MAX_VALUE);
        Buffer buffer = source.getBuffer();
        Charset charset = StandardCharsets.UTF_8;
        MediaType f103417f = body.getF103417f();
        if (f103417f != null) {
            try {
                charset = f103417f.charset(StandardCharsets.UTF_8);
            } catch (UnsupportedCharsetException unused) {
                return null;
            }
        }
        if (!m32303b(buffer) || contentLength == 0) {
            return null;
        }
        Buffer clone = buffer.clone();
        Intrinsics.checkNotNull(charset);
        return clone.readString(charset);
    }
}
