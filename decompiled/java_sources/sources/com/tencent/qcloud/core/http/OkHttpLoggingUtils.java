package com.tencent.qcloud.core.http;

import com.tencent.qcloud.core.http.HttpLoggingInterceptor;
import com.tencent.qcloud.core.util.OkhttpInternalUtils;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;

/* loaded from: classes10.dex */
public class OkHttpLoggingUtils {
    private static final Charset UTF8 = Charset.forName("UTF-8");

    private static boolean bodyEncoded(Headers headers) {
        String str = headers.get("Content-Encoding");
        return (str == null || str.equalsIgnoreCase("identity")) ? false : true;
    }

    private static boolean isContentLengthTooLarge(long j) {
        return j > 2048;
    }

    private static boolean isPlaintext(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, buffer.size() < 64 ? buffer.size() : 64L);
            for (int i = 0; i < 16; i++) {
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

    public static void logMessage(String str, HttpLoggingInterceptor.Logger logger) {
        logger.logRequest(str);
    }

    public static void logQuicRequestHeaders(Map<String, String> map, HttpLoggingInterceptor.Logger logger) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            logger.logRequest(entry.getKey() + ": " + entry.getValue());
        }
    }

    public static void logRequest(Request request, Protocol protocol, HttpLoggingInterceptor.Level level, HttpLoggingInterceptor.Logger logger) throws IOException {
        boolean z = level == HttpLoggingInterceptor.Level.BODY;
        boolean z2 = z || level == HttpLoggingInterceptor.Level.HEADERS;
        RequestBody body = request.body();
        boolean z3 = body != null;
        String str = "--> " + request.method() + ' ' + request.url() + ' ' + protocol;
        if (!z2 && z3) {
            str = str + " (" + body.contentLength() + "-byte body)";
        }
        logger.logRequest(str);
        if (z2) {
            if (z3) {
                if (body.getContentType() != null) {
                    logger.logRequest("Content-Type: " + body.getContentType());
                }
                if (body.contentLength() != -1) {
                    logger.logRequest("Content-Length: " + body.contentLength());
                }
            }
            Headers headers = request.headers();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                if (!"Content-Type".equalsIgnoreCase(name) && !"Content-Length".equalsIgnoreCase(name)) {
                    logger.logRequest(name + ": " + headers.value(i));
                }
            }
            if (!z || !z3 || isContentLengthTooLarge(body.contentLength())) {
                logger.logRequest("--> END " + request.method());
                return;
            }
            if (bodyEncoded(request.headers())) {
                logger.logRequest("--> END " + request.method() + " (encoded body omitted)");
                return;
            }
            try {
                Buffer buffer = new Buffer();
                body.writeTo(buffer);
                Charset charset = UTF8;
                MediaType contentType = body.getContentType();
                if (contentType != null) {
                    charset = contentType.charset(charset);
                }
                logger.logRequest("");
                if (!isPlaintext(buffer)) {
                    logger.logRequest("--> END " + request.method() + " (binary " + body.contentLength() + "-byte body omitted)");
                    return;
                }
                logger.logRequest(buffer.readString(charset));
                logger.logRequest("--> END " + request.method() + " (" + body.contentLength() + "-byte body)");
            } catch (Exception unused) {
                logger.logRequest("--> END " + request.method());
            }
        }
    }

    public static void logResponse(Response response, long j, HttpLoggingInterceptor.Level level, HttpLoggingInterceptor.Logger logger) {
        boolean z = level == HttpLoggingInterceptor.Level.BODY;
        boolean z2 = z || level == HttpLoggingInterceptor.Level.HEADERS;
        ResponseBody body = response.body();
        boolean z3 = body != null;
        long contentLength = z3 ? body.getContentLength() : 0L;
        String str = contentLength != -1 ? contentLength + "-byte" : "unknown-length";
        StringBuilder sb = new StringBuilder();
        sb.append("<-- ");
        sb.append(response.code());
        sb.append(' ');
        sb.append(response.message());
        sb.append(' ');
        sb.append(response.request().url());
        sb.append(" (");
        sb.append(j);
        sb.append(HttpMeasureConstants.f94668b);
        sb.append(z2 ? "" : ", " + str + " body");
        sb.append(')');
        logger.logResponse(response, sb.toString());
        if (z2) {
            Headers headers = response.headers();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                logger.logResponse(response, headers.name(i) + ": " + headers.value(i));
            }
            if (!z || !OkhttpInternalUtils.hasBody(response) || !z3 || isContentLengthTooLarge(contentLength)) {
                logger.logResponse(response, "<-- END HTTP");
                return;
            }
            if (bodyEncoded(response.headers())) {
                logger.logResponse(response, "<-- END HTTP (encoded body omitted)");
                return;
            }
            try {
                BufferedSource source = body.getSource();
                source.request(Long.MAX_VALUE);
                Buffer bufferField = source.getBufferField();
                Charset charset = UTF8;
                MediaType f103417f = body.getF103417f();
                if (f103417f != null) {
                    try {
                        charset = f103417f.charset(charset);
                    } catch (UnsupportedCharsetException unused) {
                        logger.logResponse(response, "");
                        logger.logResponse(response, "Couldn't decode the response body; charset is likely malformed.");
                        logger.logResponse(response, "<-- END HTTP");
                        return;
                    }
                }
                if (!isPlaintext(bufferField)) {
                    logger.logResponse(response, "");
                    logger.logResponse(response, "<-- END HTTP (binary " + bufferField.size() + "-byte body omitted)");
                    return;
                }
                if (contentLength != 0) {
                    logger.logResponse(response, "");
                    logger.logResponse(response, bufferField.clone().readString(charset));
                }
                logger.logResponse(response, "<-- END HTTP (" + bufferField.size() + "-byte body)");
            } catch (Exception unused2) {
                logger.logResponse(response, "<-- END HTTP");
            }
        }
    }
}
