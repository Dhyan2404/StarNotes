package com.dropbox.core.http;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import okio.BufferedSink;
import okio.Okio;

/* loaded from: classes4.dex */
public final class OkHttpUtil {

    /* loaded from: classes4.dex */
    public static final class PipedStream implements Closeable {

        /* renamed from: g */
        public static final int f16561g = 5242880;

        /* renamed from: e */
        public final PipedInputStream f16562e;

        /* renamed from: f */
        public final PipedOutputStream f16563f;

        public PipedStream() {
            PipedInputStream pipedInputStream = new PipedInputStream(5242880);
            this.f16562e = pipedInputStream;
            try {
                this.f16563f = new PipedOutputStream(pipedInputStream);
            } catch (IOException unused) {
                throw new IllegalStateException("Unable to create piped stream for async upload request.");
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                this.f16563f.close();
            } catch (IOException unused) {
            }
            try {
                this.f16562e.close();
            } catch (IOException unused2) {
            }
        }

        public OutputStream getOutputStream() {
            return this.f16563f;
        }

        public void writeTo(BufferedSink bufferedSink) throws IOException {
            bufferedSink.writeAll(Okio.source(this.f16562e));
        }
    }

    /* renamed from: com.dropbox.core.http.OkHttpUtil$a */
    /* loaded from: classes4.dex */
    public static class CallableC2272a implements Callable<Thread> {
        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Thread call() {
            return Thread.currentThread();
        }
    }

    /* renamed from: a */
    public static void m10050a(ExecutorService executorService) {
        Thread currentThread = Thread.currentThread();
        try {
            if (currentThread.equals((Thread) executorService.submit(new CallableC2272a()).get(2L, TimeUnit.MINUTES))) {
                throw new IllegalArgumentException("OkHttp dispatcher uses same-thread executor. This is not supported by the SDK and may result in dead-locks. Please configure your Dispatcher to use an ExecutorService that runs tasks on separate threads.");
            }
        } catch (InterruptedException e) {
            currentThread.interrupt();
            throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", e);
        } catch (Exception e2) {
            throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", e2);
        }
    }
}
