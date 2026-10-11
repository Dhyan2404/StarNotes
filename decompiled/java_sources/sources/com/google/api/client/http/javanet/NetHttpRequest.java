package com.google.api.client.http.javanet;

import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StreamingContent;
import com.google.common.annotations.VisibleForTesting;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes6.dex */
final class NetHttpRequest extends LowLevelHttpRequest {
    private static final OutputWriter DEFAULT_CONNECTION_WRITER = new DefaultOutputWriter();
    private final HttpURLConnection connection;
    private int writeTimeout = 0;

    /* loaded from: classes6.dex */
    public static class DefaultOutputWriter implements OutputWriter {
        @Override // com.google.api.client.http.javanet.NetHttpRequest.OutputWriter
        public void write(OutputStream outputStream, StreamingContent streamingContent) throws IOException {
            streamingContent.writeTo(outputStream);
        }
    }

    /* loaded from: classes6.dex */
    public interface OutputWriter {
        void write(OutputStream outputStream, StreamingContent streamingContent) throws IOException;
    }

    public NetHttpRequest(HttpURLConnection httpURLConnection) {
        this.connection = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    private boolean hasResponse(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode() > 0;
        } catch (IOException unused) {
            return false;
        }
    }

    private void writeContentToOutputStream(final OutputWriter outputWriter, final OutputStream outputStream) throws IOException {
        if (this.writeTimeout == 0) {
            outputWriter.write(outputStream, getStreamingContent());
            return;
        }
        final StreamingContent streamingContent = getStreamingContent();
        Callable<Boolean> callable = new Callable<Boolean>() { // from class: com.google.api.client.http.javanet.NetHttpRequest.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws IOException {
                outputWriter.write(outputStream, streamingContent);
                return Boolean.TRUE;
            }
        };
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Future submit = newSingleThreadExecutor.submit(new FutureTask(callable), null);
        newSingleThreadExecutor.shutdown();
        try {
            submit.get(this.writeTimeout, TimeUnit.MILLISECONDS);
            if (newSingleThreadExecutor.isTerminated()) {
                return;
            }
            newSingleThreadExecutor.shutdown();
        } catch (InterruptedException e) {
            throw new IOException("Socket write interrupted", e);
        } catch (ExecutionException e2) {
            throw new IOException("Exception in socket write", e2);
        } catch (TimeoutException e3) {
            throw new IOException("Socket write timed out", e3);
        }
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void addHeader(String str, String str2) {
        this.connection.addRequestProperty(str, str2);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public LowLevelHttpResponse execute() throws IOException {
        return execute(DEFAULT_CONNECTION_WRITER);
    }

    @VisibleForTesting
    public String getRequestProperty(String str) {
        return this.connection.getRequestProperty(str);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void setTimeout(int i, int i2) {
        this.connection.setReadTimeout(i2);
        this.connection.setConnectTimeout(i);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void setWriteTimeout(int i) throws IOException {
        this.writeTimeout = i;
    }

    @VisibleForTesting
    public LowLevelHttpResponse execute(OutputWriter outputWriter) throws IOException {
        HttpURLConnection httpURLConnection = this.connection;
        if (getStreamingContent() != null) {
            String contentType = getContentType();
            if (contentType != null) {
                addHeader("Content-Type", contentType);
            }
            String contentEncoding = getContentEncoding();
            if (contentEncoding != null) {
                addHeader("Content-Encoding", contentEncoding);
            }
            long contentLength = getContentLength();
            if (contentLength >= 0) {
                httpURLConnection.setRequestProperty("Content-Length", Long.toString(contentLength));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if (!"POST".equals(requestMethod) && !"PUT".equals(requestMethod)) {
                Preconditions.checkArgument(contentLength == 0, "%s with non-zero content length is not supported", requestMethod);
            } else {
                httpURLConnection.setDoOutput(true);
                if (contentLength >= 0 && contentLength <= 2147483647L) {
                    httpURLConnection.setFixedLengthStreamingMode((int) contentLength);
                } else {
                    httpURLConnection.setChunkedStreamingMode(0);
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    try {
                        writeContentToOutputStream(outputWriter, outputStream);
                        outputStream.close();
                    } catch (IOException e) {
                        if (hasResponse(httpURLConnection)) {
                            try {
                                outputStream.close();
                            } catch (IOException unused) {
                            }
                        } else {
                            throw e;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        outputStream.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            }
        } else if ("DELETE".equals(httpURLConnection.getRequestMethod())) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setFixedLengthStreamingMode(0L);
        }
        try {
            httpURLConnection.connect();
            return new NetHttpResponse(httpURLConnection);
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            throw th2;
        }
    }
}
