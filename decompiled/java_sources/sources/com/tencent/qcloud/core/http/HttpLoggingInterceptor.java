package com.tencent.qcloud.core.http;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes10.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private volatile Level level = Level.NONE;
    private final Logger logger;

    /* loaded from: classes10.dex */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* loaded from: classes10.dex */
    public interface Logger {
        void logException(Exception exc, String str);

        void logRequest(String str);

        void logResponse(Response response, String str);
    }

    public HttpLoggingInterceptor(Logger logger) {
        this.logger = logger;
    }

    public Level getLevel() {
        return this.level;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        Connection connection = chain.connection();
        OkHttpLoggingUtils.logRequest(request, connection != null ? connection.protocol() : Protocol.HTTP_1_1, level, this.logger);
        long nanoTime = System.nanoTime();
        try {
            Response proceed = chain.proceed(request);
            OkHttpLoggingUtils.logResponse(proceed, TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime), level, this.logger);
            return proceed;
        } catch (Exception e) {
            this.logger.logException(e, "<-- HTTP FAILED: " + e);
            throw e;
        }
    }

    public HttpLoggingInterceptor setLevel(Level level) {
        if (level == null) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.level = level;
        return this;
    }
}
