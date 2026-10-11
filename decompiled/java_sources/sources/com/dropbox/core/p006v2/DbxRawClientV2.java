package com.dropbox.core.p006v2;

import com.dropbox.core.BadResponseException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.InvalidAccessTokenException;
import com.dropbox.core.NetworkIOException;
import com.dropbox.core.RetryException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.oauth.DbxOAuthError;
import com.dropbox.core.oauth.DbxOAuthException;
import com.dropbox.core.oauth.DbxRefreshResult;
import com.dropbox.core.p006v2.auth.AuthError;
import com.dropbox.core.p006v2.common.PathRoot;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import okhttp3.internal.http2.Http2ExchangeCodec;

/* loaded from: classes4.dex */
public abstract class DbxRawClientV2 {
    public static final String USER_AGENT_ID = "OfficialDropboxJavaSDKv2";

    /* renamed from: e */
    public static final JsonFactory f16757e = new JsonFactory();

    /* renamed from: f */
    public static final Random f16758f = new Random();

    /* renamed from: a */
    public final DbxRequestConfig f16759a;

    /* renamed from: b */
    public final DbxHost f16760b;

    /* renamed from: c */
    public final String f16761c;

    /* renamed from: d */
    public final PathRoot f16762d;

    /* JADX INFO: Add missing generic type declarations: [ResT] */
    /* renamed from: com.dropbox.core.v2.DbxRawClientV2$a */
    /* loaded from: classes4.dex */
    public class C2361a<ResT> implements InterfaceC2363c<ResT> {

        /* renamed from: a */
        public String f16763a;

        /* renamed from: b */
        public final /* synthetic */ boolean f16764b;

        /* renamed from: c */
        public final /* synthetic */ List f16765c;

        /* renamed from: d */
        public final /* synthetic */ String f16766d;

        /* renamed from: e */
        public final /* synthetic */ String f16767e;

        /* renamed from: f */
        public final /* synthetic */ byte[] f16768f;

        /* renamed from: g */
        public final /* synthetic */ StoneSerializer f16769g;

        /* renamed from: h */
        public final /* synthetic */ StoneSerializer f16770h;

        public C2361a(boolean z, List list, String str, String str2, byte[] bArr, StoneSerializer stoneSerializer, StoneSerializer stoneSerializer2) {
            this.f16764b = z;
            this.f16765c = list;
            this.f16766d = str;
            this.f16767e = str2;
            this.f16768f = bArr;
            this.f16769g = stoneSerializer;
            this.f16770h = stoneSerializer2;
        }

        /* renamed from: b */
        public final InterfaceC2363c<ResT> m10222b(String str) {
            this.f16763a = str;
            return this;
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2.InterfaceC2363c
        public ResT execute() throws DbxWrappedException, DbxException {
            if (!this.f16764b) {
                DbxRawClientV2.this.addAuthHeaders(this.f16765c);
            }
            HttpRequestor.Response startPostRaw = DbxRequestUtil.startPostRaw(DbxRawClientV2.this.f16759a, DbxRawClientV2.USER_AGENT_ID, this.f16766d, this.f16767e, this.f16768f, this.f16765c);
            try {
                int statusCode = startPostRaw.getStatusCode();
                if (statusCode == 200) {
                    return (ResT) this.f16769g.deserialize(startPostRaw.getBody());
                }
                if (statusCode != 409) {
                    throw DbxRequestUtil.unexpectedStatus(startPostRaw, this.f16763a);
                }
                throw DbxWrappedException.fromResponse(this.f16770h, startPostRaw, this.f16763a);
            } catch (JsonProcessingException e) {
                throw new BadResponseException(DbxRequestUtil.getRequestId(startPostRaw), "Bad JSON: " + e.getMessage(), e);
            } catch (IOException e2) {
                throw new NetworkIOException(e2);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [ResT] */
    /* renamed from: com.dropbox.core.v2.DbxRawClientV2$b */
    /* loaded from: classes4.dex */
    public class C2362b<ResT> implements InterfaceC2363c<DbxDownloader<ResT>> {

        /* renamed from: a */
        public String f16772a;

        /* renamed from: b */
        public final /* synthetic */ boolean f16773b;

        /* renamed from: c */
        public final /* synthetic */ List f16774c;

        /* renamed from: d */
        public final /* synthetic */ String f16775d;

        /* renamed from: e */
        public final /* synthetic */ String f16776e;

        /* renamed from: f */
        public final /* synthetic */ byte[] f16777f;

        /* renamed from: g */
        public final /* synthetic */ StoneSerializer f16778g;

        /* renamed from: h */
        public final /* synthetic */ StoneSerializer f16779h;

        public C2362b(boolean z, List list, String str, String str2, byte[] bArr, StoneSerializer stoneSerializer, StoneSerializer stoneSerializer2) {
            this.f16773b = z;
            this.f16774c = list;
            this.f16775d = str;
            this.f16776e = str2;
            this.f16777f = bArr;
            this.f16778g = stoneSerializer;
            this.f16779h = stoneSerializer2;
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2.InterfaceC2363c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public DbxDownloader<ResT> execute() throws DbxWrappedException, DbxException {
            if (!this.f16773b) {
                DbxRawClientV2.this.addAuthHeaders(this.f16774c);
            }
            HttpRequestor.Response startPostRaw = DbxRequestUtil.startPostRaw(DbxRawClientV2.this.f16759a, DbxRawClientV2.USER_AGENT_ID, this.f16775d, this.f16776e, this.f16777f, this.f16774c);
            String requestId = DbxRequestUtil.getRequestId(startPostRaw);
            String contentType = DbxRequestUtil.getContentType(startPostRaw);
            try {
                int statusCode = startPostRaw.getStatusCode();
                if (statusCode != 200 && statusCode != 206) {
                    if (statusCode != 409) {
                        throw DbxRequestUtil.unexpectedStatus(startPostRaw, this.f16772a);
                    }
                    throw DbxWrappedException.fromResponse(this.f16779h, startPostRaw, this.f16772a);
                }
                List<String> list = startPostRaw.getHeaders().get("dropbox-api-result");
                if (list == null) {
                    throw new BadResponseException(requestId, "Missing Dropbox-API-Result header; " + startPostRaw.getHeaders());
                }
                if (list.size() == 0) {
                    throw new BadResponseException(requestId, "No Dropbox-API-Result header; " + startPostRaw.getHeaders());
                }
                String str = list.get(0);
                if (str != null) {
                    return new DbxDownloader<>(this.f16778g.deserialize(str), startPostRaw.getBody(), contentType);
                }
                throw new BadResponseException(requestId, "Null Dropbox-API-Result header; " + startPostRaw.getHeaders());
            } catch (JsonProcessingException e) {
                throw new BadResponseException(requestId, "Bad JSON: " + e.getMessage(), e);
            } catch (IOException e2) {
                throw new NetworkIOException(e2);
            }
        }

        /* renamed from: c */
        public final InterfaceC2363c<DbxDownloader<ResT>> m10225c(String str) {
            this.f16772a = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.DbxRawClientV2$c */
    /* loaded from: classes4.dex */
    public interface InterfaceC2363c<T> {
        T execute() throws DbxWrappedException, DbxException;
    }

    public DbxRawClientV2(DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, String str, PathRoot pathRoot) {
        if (dbxRequestConfig == null) {
            throw new NullPointerException("requestConfig");
        }
        if (dbxHost == null) {
            throw new NullPointerException(Http2ExchangeCodec.f103778h);
        }
        this.f16759a = dbxRequestConfig;
        this.f16760b = dbxHost;
        this.f16761c = str;
        this.f16762d = pathRoot;
    }

    /* renamed from: c */
    public static <T> T m10215c(int i, InterfaceC2363c<T> interfaceC2363c) throws DbxWrappedException, DbxException {
        if (i == 0) {
            return interfaceC2363c.execute();
        }
        int i2 = 0;
        while (true) {
            try {
                return interfaceC2363c.execute();
            } catch (RetryException e) {
                if (i2 >= i) {
                    throw e;
                }
                i2++;
                m10217h(e.getBackoffMillis());
            }
        }
    }

    /* renamed from: e */
    public static <T> String m10216e(StoneSerializer<T> stoneSerializer, T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonGenerator createGenerator = f16757e.createGenerator(stringWriter);
            createGenerator.setHighestNonEscapedChar(126);
            stoneSerializer.serialize((StoneSerializer<T>) t, createGenerator);
            createGenerator.flush();
            return stringWriter.toString();
        } catch (IOException e) {
            throw LangUtil.mkAssert("Impossible", e);
        }
    }

    /* renamed from: h */
    public static void m10217h(long j) {
        long nextInt = j + f16758f.nextInt(1000);
        if (nextInt <= 0) {
            return;
        }
        try {
            Thread.sleep(nextInt);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: i */
    public static <T> byte[] m10218i(StoneSerializer<T> stoneSerializer, T t) throws DbxException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            stoneSerializer.serialize((StoneSerializer<T>) t, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw LangUtil.mkAssert("Impossible", e);
        }
    }

    public abstract void addAuthHeaders(List<HttpRequestor.Header> list);

    /* renamed from: b */
    public abstract boolean mo10212b();

    /* renamed from: d */
    public final <T> T m10219d(int i, InterfaceC2363c<T> interfaceC2363c) throws DbxWrappedException, DbxException {
        try {
            return (T) m10215c(i, interfaceC2363c);
        } catch (InvalidAccessTokenException e) {
            if (e.getMessage() == null) {
                throw e;
            }
            if (!AuthError.EXPIRED_ACCESS_TOKEN.equals(e.getAuthError()) || !this.mo10212b()) {
                throw e;
            }
            this.refreshAccessToken();
            return (T) m10215c(i, interfaceC2363c);
        }
    }

    public <ArgT, ResT, ErrT> DbxDownloader<ResT> downloadStyle(String str, String str2, ArgT argt, boolean z, List<HttpRequestor.Header> list, StoneSerializer<ArgT> stoneSerializer, StoneSerializer<ResT> stoneSerializer2, StoneSerializer<ErrT> stoneSerializer3) throws DbxWrappedException, DbxException {
        ArrayList arrayList = new ArrayList(list);
        if (!z) {
            m10220g();
        }
        DbxRequestUtil.addUserLocaleHeader(arrayList, this.f16759a);
        DbxRequestUtil.addPathRootHeader(arrayList, this.f16762d);
        arrayList.add(new HttpRequestor.Header("Dropbox-API-Arg", m10216e(stoneSerializer, argt)));
        arrayList.add(new HttpRequestor.Header("Content-Type", ""));
        return (DbxDownloader) m10219d(this.f16759a.getMaxRetries(), new C2362b(z, arrayList, str, str2, new byte[0], stoneSerializer2, stoneSerializer3).m10225c(this.f16761c));
    }

    /* renamed from: f */
    public abstract boolean mo10213f();

    /* renamed from: g */
    public final void m10220g() throws DbxException {
        if (mo10213f()) {
            try {
                refreshAccessToken();
            } catch (DbxOAuthException e) {
                if (!DbxOAuthError.INVALID_GRANT.equals(e.getDbxOAuthError().getError())) {
                    throw e;
                }
            }
        }
    }

    public DbxHost getHost() {
        return this.f16760b;
    }

    public DbxRequestConfig getRequestConfig() {
        return this.f16759a;
    }

    public String getUserId() {
        return this.f16761c;
    }

    public abstract DbxRefreshResult refreshAccessToken() throws DbxException;

    public <ArgT, ResT, ErrT> ResT rpcStyle(String str, String str2, ArgT argt, boolean z, StoneSerializer<ArgT> stoneSerializer, StoneSerializer<ResT> stoneSerializer2, StoneSerializer<ErrT> stoneSerializer3) throws DbxWrappedException, DbxException {
        byte[] m10218i = m10218i(stoneSerializer, argt);
        ArrayList arrayList = new ArrayList();
        if (!z) {
            m10220g();
        }
        if (!this.f16760b.getNotify().equals(str)) {
            DbxRequestUtil.addUserLocaleHeader(arrayList, this.f16759a);
            DbxRequestUtil.addPathRootHeader(arrayList, this.f16762d);
        }
        arrayList.add(new HttpRequestor.Header("Content-Type", "application/json; charset=utf-8"));
        return (ResT) m10219d(this.f16759a.getMaxRetries(), new C2361a(z, arrayList, str, str2, m10218i, stoneSerializer2, stoneSerializer3).m10222b(this.f16761c));
    }

    public <ArgT> HttpRequestor.Uploader uploadStyle(String str, String str2, ArgT argt, boolean z, StoneSerializer<ArgT> stoneSerializer) throws DbxException {
        String buildUri = DbxRequestUtil.buildUri(str, str2);
        ArrayList arrayList = new ArrayList();
        if (!z) {
            m10220g();
            addAuthHeaders(arrayList);
        }
        DbxRequestUtil.addUserLocaleHeader(arrayList, this.f16759a);
        DbxRequestUtil.addPathRootHeader(arrayList, this.f16762d);
        arrayList.add(new HttpRequestor.Header("Content-Type", "application/octet-stream"));
        List<HttpRequestor.Header> addUserAgentHeader = DbxRequestUtil.addUserAgentHeader(arrayList, this.f16759a, USER_AGENT_ID);
        addUserAgentHeader.add(new HttpRequestor.Header("Dropbox-API-Arg", m10216e(stoneSerializer, argt)));
        try {
            return this.f16759a.getHttpRequestor().startPostInStreamingMode(buildUri, addUserAgentHeader);
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    public abstract DbxRawClientV2 withPathRoot(PathRoot pathRoot);
}
