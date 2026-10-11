package com.evernote.client.conn.mobile;

import androidx.annotation.NonNull;
import com.evernote.thrift.transport.TTransport;
import com.evernote.thrift.transport.TTransportException;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import okio.BufferedSink;

/* loaded from: classes4.dex */
public class TAndroidTransport extends TTransport {

    /* renamed from: f */
    public static final MediaType f21171f = MediaType.parse("application/x-thrift");

    /* renamed from: a */
    public final OkHttpClient f21172a;

    /* renamed from: b */
    public final ByteStore f21173b;

    /* renamed from: c */
    public final String f21174c;

    /* renamed from: d */
    public InputStream f21175d;

    /* renamed from: e */
    public Map<String, String> f21176e;

    /* renamed from: com.evernote.client.conn.mobile.TAndroidTransport$a */
    /* loaded from: classes4.dex */
    public class C4572a extends RequestBody {
        public C4572a() {
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return (TAndroidTransport.this.f21176e == null || !TAndroidTransport.this.f21176e.containsKey("Content-Type")) ? TAndroidTransport.f21171f : MediaType.parse((String) TAndroidTransport.this.f21176e.get("Content-Type"));
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            bufferedSink.write(TAndroidTransport.this.f21173b.getData(), 0, TAndroidTransport.this.f21173b.getBytesWritten());
        }
    }

    public TAndroidTransport(@NonNull OkHttpClient okHttpClient, @NonNull ByteStore byteStore, @NonNull String str) {
        this(okHttpClient, byteStore, str, null);
    }

    public void addHeader(String str, String str2) {
        if (this.f21176e == null) {
            this.f21176e = new HashMap();
        }
        this.f21176e.put(str, str2);
    }

    public void addHeaders(Map<String, String> map) {
        if (this.f21176e == null) {
            this.f21176e = new HashMap();
        }
        this.f21176e.putAll(map);
    }

    @Override // com.evernote.thrift.transport.TTransport
    public void close() {
        Util.closeQuietly(this.f21175d);
        this.f21175d = null;
    }

    @Override // com.evernote.thrift.transport.TTransport
    public void flush() throws TTransportException {
        Util.closeQuietly(this.f21175d);
        this.f21175d = null;
        try {
            try {
                Request.Builder post = new Request.Builder().url(this.f21174c).post(new C4572a());
                Map<String, String> map = this.f21176e;
                if (map != null) {
                    for (String str : map.keySet()) {
                        post.header(str, this.f21176e.get(str));
                    }
                }
                Response execute = this.f21172a.newCall(post.build()).execute();
                if (execute.code() != 200) {
                    throw new TTransportException("HTTP Response code: " + execute.code() + ", message " + execute.message());
                }
                this.f21175d = execute.body().byteStream();
                try {
                    this.f21173b.reset();
                } catch (IOException unused) {
                }
            } catch (Exception e) {
                throw new TTransportException(e);
            }
        } catch (Throwable th) {
            try {
                this.f21173b.reset();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }

    @Override // com.evernote.thrift.transport.TTransport
    public boolean isOpen() {
        return true;
    }

    @Override // com.evernote.thrift.transport.TTransport
    public void open() throws TTransportException {
    }

    @Override // com.evernote.thrift.transport.TTransport
    public int read(byte[] bArr, int i, int i2) throws TTransportException {
        InputStream inputStream = this.f21175d;
        if (inputStream == null) {
            throw new TTransportException("Response buffer is empty, no request.");
        }
        try {
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                return read;
            }
            throw new TTransportException("No more data available.");
        } catch (IOException e) {
            throw new TTransportException(e);
        }
    }

    @Override // com.evernote.thrift.transport.TTransport
    public void write(byte[] bArr, int i, int i2) throws TTransportException {
        try {
            this.f21173b.write(bArr, i, i2);
        } catch (IOException e) {
            throw new TTransportException(e);
        }
    }

    public TAndroidTransport(OkHttpClient okHttpClient, ByteStore byteStore, String str, Map<String, String> map) {
        this.f21172a = okHttpClient;
        this.f21173b = byteStore;
        this.f21174c = str;
        this.f21176e = map;
    }
}
