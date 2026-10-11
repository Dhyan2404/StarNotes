package com.evernote.thrift.transport;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class THttpClient extends TTransport {

    /* renamed from: a */
    public URL f21205a;

    /* renamed from: b */
    public final ByteArrayOutputStream f21206b = new ByteArrayOutputStream();

    /* renamed from: c */
    public InputStream f21207c = null;

    /* renamed from: d */
    public int f21208d = 0;

    /* renamed from: e */
    public int f21209e = 0;

    /* renamed from: f */
    public Map<String, String> f21210f = null;

    public THttpClient(String str) throws TTransportException {
        this.f21205a = null;
        try {
            this.f21205a = new URL(str);
        } catch (IOException e) {
            throw new TTransportException(e);
        }
    }

    @Override // com.evernote.thrift.transport.TTransport
    public void close() {
        InputStream inputStream = this.f21207c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            this.f21207c = null;
        }
    }

    @Override // com.evernote.thrift.transport.TTransport
    public void flush() throws TTransportException {
        byte[] byteArray = this.f21206b.toByteArray();
        this.f21206b.reset();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) this.f21205a.openConnection();
            int i = this.f21208d;
            if (i > 0) {
                httpURLConnection.setConnectTimeout(i);
            }
            int i2 = this.f21209e;
            if (i2 > 0) {
                httpURLConnection.setReadTimeout(i2);
            }
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", "application/x-thrift");
            httpURLConnection.setRequestProperty("Accept", "application/x-thrift");
            httpURLConnection.setRequestProperty("User-Agent", "Java/THttpClient");
            Map<String, String> map = this.f21210f;
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            httpURLConnection.setDoOutput(true);
            httpURLConnection.connect();
            httpURLConnection.getOutputStream().write(byteArray);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                this.f21207c = httpURLConnection.getInputStream();
                return;
            }
            throw new TTransportException("HTTP Response code: " + responseCode);
        } catch (IOException e) {
            throw new TTransportException(e);
        }
    }

    @Override // com.evernote.thrift.transport.TTransport
    public boolean isOpen() {
        return true;
    }

    @Override // com.evernote.thrift.transport.TTransport
    public void open() {
    }

    @Override // com.evernote.thrift.transport.TTransport
    public int read(byte[] bArr, int i, int i2) throws TTransportException {
        InputStream inputStream = this.f21207c;
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

    public void setConnectTimeout(int i) {
        this.f21208d = i;
    }

    public void setCustomHeader(String str, String str2) {
        if (this.f21210f == null) {
            this.f21210f = new HashMap();
        }
        this.f21210f.put(str, str2);
    }

    public void setCustomHeaders(Map<String, String> map) {
        this.f21210f = map;
    }

    public void setReadTimeout(int i) {
        this.f21209e = i;
    }

    @Override // com.evernote.thrift.transport.TTransport
    public void write(byte[] bArr, int i, int i2) {
        this.f21206b.write(bArr, i, i2);
    }
}
