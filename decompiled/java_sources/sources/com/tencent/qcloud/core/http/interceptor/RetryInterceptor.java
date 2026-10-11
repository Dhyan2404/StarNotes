package com.tencent.qcloud.core.http.interceptor;

import com.tencent.qcloud.core.common.QCloudServiceException;
import com.tencent.qcloud.core.http.HttpTask;
import com.tencent.qcloud.core.http.QCloudHttpClient;
import com.tencent.qcloud.core.logger.QCloudLogger;
import com.tencent.qcloud.core.task.RetryStrategy;
import com.tencent.qcloud.core.task.TaskManager;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.security.cert.CertificateException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* loaded from: classes10.dex */
public class RetryInterceptor implements Interceptor {
    private static final int MIN_CLOCK_SKEWED_OFFSET = 600;
    private static volatile Map<String, HostReliable> hostReliables = new HashMap();
    private RetryStrategy.WeightAndReliableAddition additionComputer = new RetryStrategy.WeightAndReliableAddition();
    private RetryStrategy retryStrategy;

    /* loaded from: classes10.dex */
    public static class HostReliable {
        private static final int defaultReliable = 2;
        private final String host;
        private final int maxReliable;
        private final int minReliable;
        private int reliable;
        private final long resetPeriod;

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void decreaseReliable() {
            int i = this.reliable;
            if (i > 0) {
                this.reliable = i - 1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized int getReliable() {
            return this.reliable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void increaseReliable() {
            int i = this.reliable;
            if (i < 4) {
                this.reliable = i + 1;
            }
        }

        private synchronized void resetReliable() {
            this.reliable = 2;
        }

        private synchronized void zeroReliable() {
            this.reliable = 0;
        }

        private HostReliable(String str) {
            this.maxReliable = 4;
            this.minReliable = 0;
            this.resetPeriod = 300000L;
            this.host = str;
            this.reliable = 2;
            new Timer(str + "reliable").schedule(new TimerTask() { // from class: com.tencent.qcloud.core.http.interceptor.RetryInterceptor.HostReliable.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                }
            }, 300000L, 300000L);
        }
    }

    public RetryInterceptor(RetryStrategy retryStrategy) {
        this.retryStrategy = retryStrategy;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private okhttp3.Request buildNewRangeRequest(okhttp3.Request r11, long r12) {
        /*
            r10 = this;
            java.lang.String r10 = "Range"
            java.lang.String r0 = r11.header(r10)
            r1 = 0
            java.lang.String r2 = ""
            r3 = 1
            r4 = -1
            if (r0 == 0) goto L39
            java.lang.String r6 = "bytes="
            java.lang.String r0 = r0.replace(r6, r2)
            java.lang.String r6 = "-"
            java.lang.String[] r0 = r0.split(r6)
            int r6 = r0.length
            if (r6 <= 0) goto L28
            r6 = r0[r1]     // Catch: java.lang.NumberFormatException -> L24
            long r6 = java.lang.Long.parseLong(r6)     // Catch: java.lang.NumberFormatException -> L24
            goto L29
        L24:
            r6 = move-exception
            r6.printStackTrace()
        L28:
            r6 = r4
        L29:
            int r8 = r0.length
            if (r8 <= r3) goto L37
            r0 = r0[r3]     // Catch: java.lang.NumberFormatException -> L33
            long r8 = java.lang.Long.parseLong(r0)     // Catch: java.lang.NumberFormatException -> L33
            goto L3b
        L33:
            r0 = move-exception
            r0.printStackTrace()
        L37:
            r8 = r4
            goto L3b
        L39:
            r6 = r4
            r8 = r6
        L3b:
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L40
            long r12 = r12 + r6
        L40:
            okhttp3.Request$Builder r0 = r11.newBuilder()
            okhttp3.Headers r11 = r11.headers()
            okhttp3.Headers$Builder r11 = r11.newBuilder()
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]
            java.lang.Long r12 = java.lang.Long.valueOf(r12)
            r6[r1] = r12
            int r12 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r12 != 0) goto L5a
            goto L5e
        L5a:
            java.lang.String r2 = java.lang.String.valueOf(r8)
        L5e:
            r6[r3] = r2
            java.lang.String r12 = "bytes=%s-%s"
            java.lang.String r12 = java.lang.String.format(r12, r6)
            r11.set(r10, r12)
            okhttp3.Headers r10 = r11.build()
            r0.headers(r10)
            okhttp3.Request r10 = r0.build()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.core.http.interceptor.RetryInterceptor.buildNewRangeRequest(okhttp3.Request, long):okhttp3.Request");
    }

    private void decreaseHostAccess(String str) {
        HostReliable hostReliable = hostReliables.get(str);
        if (hostReliable != null) {
            hostReliable.decreaseReliable();
        } else {
            hostReliables.put(str, new HostReliable(str));
        }
    }

    private Response executeTaskOnce(Interceptor.Chain chain, Request request, HttpTask httpTask) throws IOException {
        try {
            if (httpTask.isCanceled()) {
                throw new IOException("CANCELED");
            }
            if (httpTask.isResponseFilePathConverter()) {
                long transferBodySize = httpTask.getTransferBodySize();
                if (transferBodySize > 0) {
                    request = buildNewRangeRequest(request, transferBodySize);
                }
            }
            return processSingleRequest(chain, request);
        } catch (ProtocolException e) {
            if (e.getMessage() != null && e.getMessage().contains("HTTP 204 had non-zero Content-Length: ")) {
                return new Response.Builder().request(request).message(e.toString()).code(204).protocol(Protocol.HTTP_1_1).build();
            }
            e.printStackTrace();
            throw e;
        } catch (IOException e2) {
            e2.printStackTrace();
            throw e2;
        }
    }

    private int getHostReliable(String str) {
        HostReliable hostReliable = hostReliables.get(str);
        if (hostReliable != null) {
            return hostReliable.getReliable();
        }
        return 2;
    }

    private void increaseHostReliable(String str) {
        HostReliable hostReliable = hostReliables.get(str);
        if (hostReliable != null) {
            hostReliable.increaseReliable();
        } else {
            hostReliables.put(str, new HostReliable(str));
        }
    }

    private boolean isRecoverable(IOException iOException) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? iOException instanceof SocketTimeoutException : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private boolean isUserCancelled(IOException iOException) {
        return (iOException == null || iOException.getMessage() == null || !iOException.getMessage().toLowerCase(Locale.ROOT).equals("canceled")) ? false : true;
    }

    private boolean shouldRetry(Request request, Response response, int i, int i2, long j, IOException iOException, int i3) {
        if (isUserCancelled(iOException)) {
            return false;
        }
        int hostReliable = getHostReliable(request.url().host());
        int retryAddition = this.additionComputer.getRetryAddition(i2, hostReliable);
        QCloudLogger.m59786i(QCloudHttpClient.HTTP_LOG_TAG, String.format(Locale.ENGLISH, "attempts = %d, weight = %d, reliable = %d, addition = %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(hostReliable), Integer.valueOf(retryAddition)), new Object[0]);
        if (!this.retryStrategy.shouldRetry(i, System.nanoTime() - j, retryAddition) || !this.retryStrategy.getQCloudHttpRetryHandler().shouldRetry(request, response, iOException)) {
            return false;
        }
        if (iOException == null || !isRecoverable(iOException)) {
            return i3 == 500 || i3 == 502 || i3 == 503 || i3 == 504;
        }
        return true;
    }

    public String getClockSkewError(Response response, int i) {
        if (response == null || i != 403) {
            return null;
        }
        if (response.request().method().toUpperCase(Locale.ROOT).equals("HEAD")) {
            return QCloudServiceException.ERR0R_REQUEST_IS_EXPIRED;
        }
        ResponseBody body = response.body();
        if (body == null) {
            return null;
        }
        try {
            BufferedSource source = body.getSource();
            source.request(Long.MAX_VALUE);
            String readString = source.getBufferField().clone().readString(Charset.forName("UTF-8"));
            Pattern compile = Pattern.compile("<Code>(RequestTimeTooSkewed|AccessDenied)</Code>");
            Pattern compile2 = Pattern.compile("<Message>Request has expired</Message>");
            Matcher matcher = compile.matcher(readString);
            Matcher matcher2 = compile2.matcher(readString);
            if (!matcher.find()) {
                return null;
            }
            String group = matcher.group(1);
            if (QCloudServiceException.ERR0R_REQUEST_TIME_TOO_SKEWED.equals(group)) {
                return QCloudServiceException.ERR0R_REQUEST_TIME_TOO_SKEWED;
            }
            if (!"AccessDenied".equals(group)) {
                return null;
            }
            if (matcher2.find()) {
                return QCloudServiceException.ERR0R_REQUEST_IS_EXPIRED;
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        return processRequest(chain, request, (HttpTask) TaskManager.getInstance().get((String) request.tag()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x016b, code lost:
    
        r16 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01b5, code lost:
    
        if (r0 != null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01b7, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01b8, code lost:
    
        decreaseHostAccess(r21.url().host());
        r19.retryStrategy.onTaskEnd(false, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01c8, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01a8, code lost:
    
        com.tencent.qcloud.core.logger.QCloudLogger.m59786i(com.tencent.qcloud.core.http.QCloudHttpClient.HTTP_LOG_TAG, "%s ends for %s, code is %d", r21, r0, java.lang.Integer.valueOf(r17));
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response processRequest(okhttp3.Interceptor.Chain r20, okhttp3.Request r21, @androidx.annotation.Nullable com.tencent.qcloud.core.http.HttpTask r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.core.http.interceptor.RetryInterceptor.processRequest(okhttp3.Interceptor$Chain, okhttp3.Request, com.tencent.qcloud.core.http.HttpTask):okhttp3.Response");
    }

    public Response processSingleRequest(Interceptor.Chain chain, Request request) throws IOException {
        return chain.proceed(request);
    }
}
