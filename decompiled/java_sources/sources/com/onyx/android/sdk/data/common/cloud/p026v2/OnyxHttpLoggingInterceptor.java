package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.utils.ProgressRequestBody;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okhttp3.logging.HttpLoggingInterceptor;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 &2\u00020\u0001:\u0001&B\u0011\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\"\u0010 \u001a\u00020\u00182\b\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u0011H\u0002J\u000e\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxHttpLoggingInterceptor;", "Lokhttp3/Interceptor;", "logger", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "headersToRedact", "", "", "level", "Lokhttp3/logging/HttpLoggingInterceptor$Level;", "getLevel", "()Lokhttp3/logging/HttpLoggingInterceptor$Level;", "setLevel", "(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V", "checkContentTooLarge", "", "length", "", "message", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "logHeader", "", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "Lokhttp3/Headers;", "i", "", "logRequestBody", AbstractLogger.REQUEST, "Lokhttp3/Request;", "logResponseBody", "responseBody", "Lokhttp3/ResponseBody;", "contentLength", "redactHeader", "name", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxHttpLoggingInterceptor implements Interceptor {
    private static final long ACTUAL_MB = 1048576;
    private static final int ACTUAL_SIZE_FORMAT_BASE = 1024;
    private static final long MAX_LOG_CONTENT_LENGTH = 1048576;

    @NotNull
    private volatile Set<String> headersToRedact;

    @NotNull
    private volatile HttpLoggingInterceptor.Level level;

    @NotNull
    private final HttpLoggingInterceptor.Logger logger;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static final Charset UTF8 = StandardCharsets.UTF_8;

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxHttpLoggingInterceptor$Companion;", "", "()V", "ACTUAL_MB", "", "ACTUAL_SIZE_FORMAT_BASE", "", "MAX_LOG_CONTENT_LENGTH", "UTF8", "Ljava/nio/charset/Charset;", "kotlin.jvm.PlatformType", "bodyHasUnknownEncoding", "", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "Lokhttp3/Headers;", "isPlaintext", "buffer", "Lokio/Buffer;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean bodyHasUnknownEncoding(Headers headers) {
            boolean equals;
            boolean equals2;
            String str = headers.get("Content-Encoding");
            if (str != null) {
                equals = StringsKt__StringsJVMKt.equals(str, "identity", true);
                if (!equals) {
                    equals2 = StringsKt__StringsJVMKt.equals(str, "gzip", true);
                    if (!equals2) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final boolean isPlaintext(@NotNull Buffer buffer) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
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

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public OnyxHttpLoggingInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean checkContentTooLarge(long length, String message) {
        if (length <= 1048576) {
            return false;
        }
        this.logger.log("--> skip log " + message + " content more than large:" + FileUtils.INSTANCE.getFileSize(length));
        return true;
    }

    private final void logHeader(Headers headers, int i) {
        String value = this.headersToRedact.contains(headers.name(i)) ? "██" : headers.value(i);
        this.logger.log(headers.name(i) + ": " + value);
    }

    private final void logRequestBody(Request request) throws IOException {
        RequestBody body = request.body();
        if (body == null) {
            return;
        }
        if (body instanceof MultipartBody) {
            this.logger.log("--> skip log MultipartBody");
            return;
        }
        if (body instanceof ProgressRequestBody) {
            this.logger.log("--> skip log ProgressRequestBody");
            return;
        }
        if (checkContentTooLarge(body.contentLength(), "RequestBody")) {
            return;
        }
        Buffer buffer = new Buffer();
        body.writeTo(buffer);
        Charset charset = UTF8;
        MediaType contentType = body.getContentType();
        if (contentType != null) {
            charset = contentType.charset(charset);
        }
        this.logger.log("");
        if (!INSTANCE.isPlaintext(buffer)) {
            this.logger.log("--> END " + request.method() + " (binary " + body.contentLength() + "-byte body omitted)");
            return;
        }
        if (!checkContentTooLarge(buffer.size(), "RequestBody")) {
            HttpLoggingInterceptor.Logger logger = this.logger;
            Buffer clone = buffer.clone();
            Intrinsics.checkNotNull(charset);
            logger.log(clone.readString(charset));
        }
        this.logger.log("--> END " + request.method() + " (" + body.contentLength() + "-byte body)");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.lang.Long] */
    private final void logResponseBody(ResponseBody responseBody, Headers headers, long contentLength) throws IOException {
        boolean equals;
        if (checkContentTooLarge(contentLength, "ResponseBody")) {
            return;
        }
        Intrinsics.checkNotNull(responseBody);
        BufferedSource source = responseBody.getSource();
        source.request(Long.MAX_VALUE);
        Buffer buffer = source.getBuffer();
        equals = StringsKt__StringsJVMKt.equals("gzip", headers.get("Content-Encoding"), true);
        GzipSource gzipSource = null;
        if (equals) {
            ?? valueOf = Long.valueOf(buffer.size());
            try {
                GzipSource gzipSource2 = new GzipSource(buffer.clone());
                try {
                    buffer = new Buffer();
                    buffer.writeAll(gzipSource2);
                    gzipSource2.close();
                    gzipSource = valueOf;
                } catch (Throwable th) {
                    th = th;
                    gzipSource = gzipSource2;
                    if (gzipSource != null) {
                        gzipSource.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Charset charset = UTF8;
        MediaType f103417f = responseBody.getF103417f();
        if (f103417f != null) {
            charset = f103417f.charset(charset);
        }
        if (!INSTANCE.isPlaintext(buffer)) {
            this.logger.log("");
            this.logger.log("<-- END HTTP (binary " + buffer.size() + "-byte body omitted)");
            return;
        }
        if (contentLength != 0) {
            this.logger.log("");
            if (!checkContentTooLarge(buffer.size(), "ResponseBody")) {
                HttpLoggingInterceptor.Logger logger = this.logger;
                Buffer clone = buffer.clone();
                Intrinsics.checkNotNull(charset);
                logger.log(clone.readString(charset));
            }
        }
        if (gzipSource == null) {
            this.logger.log("<-- END HTTP (" + buffer.size() + "-byte body)");
            return;
        }
        this.logger.log("<-- END HTTP (" + buffer.size() + "-byte, " + gzipSource + "-gzipped-byte body)");
    }

    @NotNull
    public final HttpLoggingInterceptor.Level getLevel() {
        return this.level;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0112  */
    @Override // okhttp3.Interceptor
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(@org.jetbrains.annotations.NotNull okhttp3.Interceptor.Chain r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.common.cloud.p026v2.OnyxHttpLoggingInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    public final void redactHeader(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        treeSet.addAll(this.headersToRedact);
        treeSet.add(name);
        this.headersToRedact = treeSet;
    }

    public final void setLevel(@NotNull HttpLoggingInterceptor.Level level) {
        Intrinsics.checkNotNullParameter(level, "<set-?>");
        this.level = level;
    }

    @JvmOverloads
    public OnyxHttpLoggingInterceptor(@NotNull HttpLoggingInterceptor.Logger logger) {
        Set<String> emptySet;
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.level = HttpLoggingInterceptor.Level.NONE;
        emptySet = SetsKt__SetsKt.emptySet();
        this.headersToRedact = emptySet;
        this.logger = logger;
    }

    public /* synthetic */ OnyxHttpLoggingInterceptor(HttpLoggingInterceptor.Logger logger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? HttpLoggingInterceptor.Logger.DEFAULT : logger);
    }
}
