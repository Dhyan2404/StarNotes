package com.dropbox.core.http;

import com.dropbox.core.util.IOUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public abstract class HttpRequestor {
    public static final long DEFAULT_CONNECT_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(20);
    public static final long DEFAULT_READ_TIMEOUT_MILLIS = TimeUnit.MINUTES.toMillis(2);

    /* loaded from: classes4.dex */
    public static final class Header {

        /* renamed from: a */
        public final String f16525a;

        /* renamed from: b */
        public final String f16526b;

        public Header(String str, String str2) {
            this.f16525a = str;
            this.f16526b = str2;
        }

        public String getKey() {
            return this.f16525a;
        }

        public String getValue() {
            return this.f16526b;
        }
    }

    /* loaded from: classes4.dex */
    public static final class Response {

        /* renamed from: a */
        public final int f16527a;

        /* renamed from: b */
        public final InputStream f16528b;

        /* renamed from: c */
        public final Map<String, List<String>> f16529c;

        public Response(int i, InputStream inputStream, Map<String, ? extends List<String>> map) {
            this.f16527a = i;
            this.f16528b = inputStream;
            this.f16529c = m10029a(map);
        }

        /* renamed from: a */
        public static final Map<String, List<String>> m10029a(Map<String, ? extends List<String>> map) {
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (Map.Entry<String, ? extends List<String>> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getKey().trim().length() != 0) {
                    treeMap.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }

        public InputStream getBody() {
            return this.f16528b;
        }

        public Map<String, List<String>> getHeaders() {
            return this.f16529c;
        }

        public int getStatusCode() {
            return this.f16527a;
        }
    }

    public abstract Response doGet(String str, Iterable<Header> iterable) throws IOException;

    public abstract Uploader startPost(String str, Iterable<Header> iterable) throws IOException;

    public Uploader startPostInStreamingMode(String str, Iterable<Header> iterable) throws IOException {
        return startPost(str, iterable);
    }

    public abstract Uploader startPut(String str, Iterable<Header> iterable) throws IOException;

    /* loaded from: classes4.dex */
    public static abstract class Uploader {
        protected IOUtil.ProgressListener progressListener;

        public abstract void abort();

        public abstract void close();

        public abstract Response finish() throws IOException;

        public abstract OutputStream getBody();

        public void setProgressListener(IOUtil.ProgressListener progressListener) {
            this.progressListener = progressListener;
        }

        public void upload(File file) throws IOException {
            try {
                upload(new FileInputStream(file));
            } catch (IOUtil.ReadException e) {
                throw e.getCause();
            } catch (IOUtil.WriteException e2) {
                throw e2.getCause();
            }
        }

        public void upload(InputStream inputStream, long j) throws IOException {
            upload(IOUtil.limit(inputStream, j));
        }

        public void upload(InputStream inputStream) throws IOException {
            OutputStream body = getBody();
            try {
                IOUtil.copyStreamToStream(inputStream, body);
            } finally {
                body.close();
            }
        }

        public void upload(byte[] bArr) throws IOException {
            OutputStream body = getBody();
            try {
                body.write(bArr);
            } finally {
                body.close();
            }
        }
    }
}
