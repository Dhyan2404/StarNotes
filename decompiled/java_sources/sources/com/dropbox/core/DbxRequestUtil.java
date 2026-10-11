package com.dropbox.core;

import com.couchbase.lite.internal.core.C4Replicator;
import com.dropbox.core.C2260a;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.p006v2.auth.AccessError;
import com.dropbox.core.p006v2.auth.AuthError;
import com.dropbox.core.p006v2.callbacks.DbxGlobalCallbackFactory;
import com.dropbox.core.p006v2.common.PathRoot;
import com.dropbox.core.p006v2.common.PathRootError;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.CharacterCodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.scribe.model.ParameterList;

/* loaded from: classes4.dex */
public final class DbxRequestUtil {

    /* renamed from: a */
    public static final Random f16409a = new Random();
    public static DbxGlobalCallbackFactory sharedCallbackFactory;

    /* loaded from: classes4.dex */
    public static abstract class RequestMaker<T, E extends Throwable> {
        public abstract T run() throws DbxException, Throwable;
    }

    /* loaded from: classes4.dex */
    public static abstract class ResponseHandler<T> {
        public abstract T handle(HttpRequestor.Response response) throws DbxException;
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.dropbox.core.DbxRequestUtil$a */
    /* loaded from: classes4.dex */
    public static class C2256a<T> extends RequestMaker<T, DbxException> {

        /* renamed from: a */
        public final /* synthetic */ DbxRequestConfig f16410a;

        /* renamed from: b */
        public final /* synthetic */ String f16411b;

        /* renamed from: c */
        public final /* synthetic */ String f16412c;

        /* renamed from: d */
        public final /* synthetic */ String f16413d;

        /* renamed from: e */
        public final /* synthetic */ String f16414e;

        /* renamed from: f */
        public final /* synthetic */ String[] f16415f;

        /* renamed from: g */
        public final /* synthetic */ List f16416g;

        /* renamed from: h */
        public final /* synthetic */ ResponseHandler f16417h;

        public C2256a(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String str4, String[] strArr, List list, ResponseHandler responseHandler) {
            this.f16410a = dbxRequestConfig;
            this.f16411b = str;
            this.f16412c = str2;
            this.f16413d = str3;
            this.f16414e = str4;
            this.f16415f = strArr;
            this.f16416g = list;
            this.f16417h = responseHandler;
        }

        @Override // com.dropbox.core.DbxRequestUtil.RequestMaker
        public T run() throws DbxException {
            HttpRequestor.Response startGet = DbxRequestUtil.startGet(this.f16410a, this.f16411b, this.f16412c, this.f16413d, this.f16414e, this.f16415f, this.f16416g);
            try {
                T t = (T) this.f16417h.handle(startGet);
                try {
                    startGet.getBody().close();
                    return t;
                } catch (IOException e) {
                    throw new NetworkIOException(e);
                }
            } catch (Throwable th) {
                try {
                    startGet.getBody().close();
                    throw th;
                } catch (IOException e2) {
                    throw new NetworkIOException(e2);
                }
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.dropbox.core.DbxRequestUtil$b */
    /* loaded from: classes4.dex */
    public static class C2257b<T> extends RequestMaker<T, DbxException> {

        /* renamed from: a */
        public final /* synthetic */ DbxRequestConfig f16418a;

        /* renamed from: b */
        public final /* synthetic */ String f16419b;

        /* renamed from: c */
        public final /* synthetic */ String f16420c;

        /* renamed from: d */
        public final /* synthetic */ String f16421d;

        /* renamed from: e */
        public final /* synthetic */ String[] f16422e;

        /* renamed from: f */
        public final /* synthetic */ List f16423f;

        /* renamed from: g */
        public final /* synthetic */ ResponseHandler f16424g;

        public C2257b(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String[] strArr, List list, ResponseHandler responseHandler) {
            this.f16418a = dbxRequestConfig;
            this.f16419b = str;
            this.f16420c = str2;
            this.f16421d = str3;
            this.f16422e = strArr;
            this.f16423f = list;
            this.f16424g = responseHandler;
        }

        @Override // com.dropbox.core.DbxRequestUtil.RequestMaker
        public T run() throws DbxException {
            return (T) DbxRequestUtil.finishResponse(DbxRequestUtil.startPostNoAuth(this.f16418a, this.f16419b, this.f16420c, this.f16421d, this.f16422e, this.f16423f), this.f16424g);
        }
    }

    /* renamed from: a */
    public static List<HttpRequestor.Header> m9970a(List<HttpRequestor.Header> list) {
        return list == null ? new ArrayList() : new ArrayList(list);
    }

    public static List<HttpRequestor.Header> addAuthHeader(List<HttpRequestor.Header> list, String str) {
        if (str == null) {
            throw new NullPointerException("accessToken");
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new HttpRequestor.Header("Authorization", BaseCloudRequest.BEARER_TOKEN_PREFIX + str));
        return list;
    }

    public static List<HttpRequestor.Header> addBasicAuthHeader(List<HttpRequestor.Header> list, String str, String str2) {
        if (str == null) {
            throw new NullPointerException(C4Replicator.REPLICATOR_AUTH_USER_NAME);
        }
        if (str2 == null) {
            throw new NullPointerException("password");
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        String base64Encode = StringUtil.base64Encode(StringUtil.stringToUtf8(str + ":" + str2));
        StringBuilder sb = new StringBuilder();
        sb.append("Basic ");
        sb.append(base64Encode);
        list.add(new HttpRequestor.Header("Authorization", sb.toString()));
        return list;
    }

    public static List<HttpRequestor.Header> addPathRootHeader(List<HttpRequestor.Header> list, PathRoot pathRoot) {
        if (pathRoot == null) {
            return list;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new HttpRequestor.Header("Dropbox-API-Path-Root", pathRoot.toString()));
        return list;
    }

    public static List<HttpRequestor.Header> addSelectAdminHeader(List<HttpRequestor.Header> list, String str) {
        if (str == null) {
            throw new NullPointerException("adminId");
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new HttpRequestor.Header("Dropbox-API-Select-Admin", str));
        return list;
    }

    public static List<HttpRequestor.Header> addSelectUserHeader(List<HttpRequestor.Header> list, String str) {
        if (str == null) {
            throw new NullPointerException("memberId");
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new HttpRequestor.Header("Dropbox-API-Select-User", str));
        return list;
    }

    public static List<HttpRequestor.Header> addUserAgentHeader(List<HttpRequestor.Header> list, DbxRequestConfig dbxRequestConfig, String str) {
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(buildUserAgentHeader(dbxRequestConfig, str));
        return list;
    }

    public static List<HttpRequestor.Header> addUserLocaleHeader(List<HttpRequestor.Header> list, DbxRequestConfig dbxRequestConfig) {
        if (dbxRequestConfig.getUserLocale() == null) {
            return list;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new HttpRequestor.Header("Dropbox-API-User-Locale", dbxRequestConfig.getUserLocale()));
        return list;
    }

    /* renamed from: b */
    public static String m9971b(String str, String[] strArr) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append("locale=");
            sb.append(encodeUrlParam(str));
            str2 = ParameterList.f115951c;
        } else {
            str2 = "";
        }
        if (strArr != null) {
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("'params.length' is " + strArr.length + "; expecting a multiple of two");
            }
            for (int i = 0; i < strArr.length; i += 2) {
                String str3 = strArr[i];
                String str4 = strArr[i + 1];
                if (str3 == null) {
                    throw new IllegalArgumentException("params[" + i + "] is null");
                }
                if (str4 != null) {
                    sb.append(str2);
                    sb.append(encodeUrlParam(str3));
                    sb.append("=");
                    sb.append(encodeUrlParam(str4));
                    str2 = ParameterList.f115951c;
                }
            }
        }
        return sb.toString();
    }

    public static String buildUri(String str, String str2) {
        try {
            return new URI("https", str, "/" + str2, null).toASCIIString();
        } catch (URISyntaxException e) {
            throw LangUtil.mkAssert("URI creation failed, host=" + StringUtil.m10140jq(str) + ", path=" + StringUtil.m10140jq(str2), e);
        }
    }

    public static String buildUrlWithParams(String str, String str2, String str3, String[] strArr) {
        return buildUri(str2, str3) + "?" + m9971b(str, strArr);
    }

    public static HttpRequestor.Header buildUserAgentHeader(DbxRequestConfig dbxRequestConfig, String str) {
        return new HttpRequestor.Header("User-Agent", dbxRequestConfig.getClientIdentifier() + " " + str + "/" + DbxSdkVersion.Version);
    }

    /* renamed from: c */
    public static String m9972c(HttpRequestor.Response response, String str) throws NetworkIOException, BadResponseException {
        return parseErrorBody(str, response.getStatusCode(), loadErrorBody(response));
    }

    public static <T> T doGet(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String str4, String[] strArr, List<HttpRequestor.Header> list, ResponseHandler<T> responseHandler) throws DbxException {
        return (T) runAndRetry(dbxRequestConfig.getMaxRetries(), new C2256a(dbxRequestConfig, str, str2, str3, str4, strArr, list, responseHandler));
    }

    public static <T> T doPost(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String str4, String[] strArr, List<HttpRequestor.Header> list, ResponseHandler<T> responseHandler) throws DbxException {
        return (T) doPostNoAuth(dbxRequestConfig, str2, str3, str4, strArr, addAuthHeader(m9970a(list), str), responseHandler);
    }

    public static <T> T doPostNoAuth(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String[] strArr, List<HttpRequestor.Header> list, ResponseHandler<T> responseHandler) throws DbxException {
        return (T) runAndRetry(dbxRequestConfig.getMaxRetries(), new C2257b(dbxRequestConfig, str, str2, str3, strArr, list, responseHandler));
    }

    public static String encodeUrlParam(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw LangUtil.mkAssert("UTF-8 should always be supported", e);
        }
    }

    public static <T> T finishResponse(HttpRequestor.Response response, ResponseHandler<T> responseHandler) throws DbxException {
        try {
            return responseHandler.handle(response);
        } finally {
            IOUtil.closeInput(response.getBody());
        }
    }

    public static String getContentType(HttpRequestor.Response response) {
        return getFirstHeaderMaybe(response, "Content-Type");
    }

    public static String getFirstHeader(HttpRequestor.Response response, String str) throws BadResponseException {
        List<String> list = response.getHeaders().get(str);
        if (list != null && !list.isEmpty()) {
            return list.get(0);
        }
        throw new BadResponseException(getRequestId(response), "missing HTTP header \"" + str + "\"");
    }

    public static String getFirstHeaderMaybe(HttpRequestor.Response response, String str) {
        List<String> list = response.getHeaders().get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static String getRequestId(HttpRequestor.Response response) {
        return getFirstHeaderMaybe(response, "X-Dropbox-Request-Id");
    }

    public static byte[] loadErrorBody(HttpRequestor.Response response) throws NetworkIOException {
        if (response.getBody() == null) {
            return new byte[0];
        }
        try {
            return IOUtil.slurp(response.getBody(), 4096);
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    public static String parseErrorBody(String str, int i, byte[] bArr) throws BadResponseException {
        try {
            return StringUtil.utf8ToString(bArr);
        } catch (CharacterCodingException e) {
            throw new BadResponseException(str, "Got non-UTF8 response body: " + i + ": " + e.getMessage());
        }
    }

    public static <T> T readJsonFromErrorMessage(StoneSerializer<T> stoneSerializer, String str, String str2) throws JsonParseException {
        return new C2260a.a(stoneSerializer).deserialize(str).m9997a();
    }

    public static <T> T readJsonFromResponse(JsonReader<T> jsonReader, HttpRequestor.Response response) throws BadResponseException, NetworkIOException {
        try {
            return jsonReader.readFully(response.getBody());
        } catch (JsonReadException e) {
            throw new BadResponseException(getRequestId(response), "error in response JSON: " + e.getMessage(), e);
        } catch (IOException e2) {
            throw new NetworkIOException(e2);
        }
    }

    public static List<HttpRequestor.Header> removeAuthHeader(List<HttpRequestor.Header> list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (HttpRequestor.Header header : list) {
            if ("Authorization".equals(header.getKey())) {
                arrayList.add(header);
            }
        }
        list.removeAll(arrayList);
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x002e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T, E extends java.lang.Throwable> T runAndRetry(int r8, com.dropbox.core.DbxRequestUtil.RequestMaker<T, E> r9) throws com.dropbox.core.DbxException, java.lang.Throwable {
        /*
            r0 = 0
        L1:
            r1 = 0
            java.lang.Object r8 = r9.run()     // Catch: com.dropbox.core.ServerException -> L8 com.dropbox.core.RetryException -> Lb
            return r8
        L8:
            r3 = move-exception
            r4 = r1
            goto L10
        Lb:
            r3 = move-exception
            long r4 = r3.getBackoffMillis()
        L10:
            if (r0 >= r8) goto L2e
            java.util.Random r3 = com.dropbox.core.DbxRequestUtil.f16409a
            r6 = 1000(0x3e8, float:1.401E-42)
            int r3 = r3.nextInt(r6)
            long r6 = (long) r3
            long r4 = r4 + r6
            int r1 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r1 <= 0) goto L2b
            java.lang.Thread.sleep(r4)     // Catch: java.lang.InterruptedException -> L24
            goto L2b
        L24:
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L2b:
            int r0 = r0 + 1
            goto L1
        L2e:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.DbxRequestUtil.runAndRetry(int, com.dropbox.core.DbxRequestUtil$RequestMaker):java.lang.Object");
    }

    public static HttpRequestor.Response startGet(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String str4, String[] strArr, List<HttpRequestor.Header> list) throws NetworkIOException {
        List<HttpRequestor.Header> addAuthHeader = addAuthHeader(addUserAgentHeader(m9970a(list), dbxRequestConfig, str2), str);
        try {
            return dbxRequestConfig.getHttpRequestor().doGet(buildUrlWithParams(dbxRequestConfig.getUserLocale(), str3, str4, strArr), addAuthHeader);
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    public static HttpRequestor.Response startPostNoAuth(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String[] strArr, List<HttpRequestor.Header> list) throws NetworkIOException {
        byte[] stringToUtf8 = StringUtil.stringToUtf8(m9971b(dbxRequestConfig.getUserLocale(), strArr));
        List<HttpRequestor.Header> m9970a = m9970a(list);
        m9970a.add(new HttpRequestor.Header("Content-Type", "application/x-www-form-urlencoded; charset=utf-8"));
        return startPostRaw(dbxRequestConfig, str, str2, str3, stringToUtf8, m9970a);
    }

    public static HttpRequestor.Response startPostRaw(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, byte[] bArr, List<HttpRequestor.Header> list) throws NetworkIOException {
        String buildUri = buildUri(str2, str3);
        List<HttpRequestor.Header> addUserAgentHeader = addUserAgentHeader(m9970a(list), dbxRequestConfig, str);
        addUserAgentHeader.add(new HttpRequestor.Header("Content-Length", Integer.toString(bArr.length)));
        try {
            HttpRequestor.Uploader startPost = dbxRequestConfig.getHttpRequestor().startPost(buildUri, addUserAgentHeader);
            try {
                startPost.upload(bArr);
                return startPost.finish();
            } finally {
                startPost.close();
            }
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    public static HttpRequestor.Uploader startPut(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, String str4, String[] strArr, List<HttpRequestor.Header> list) throws NetworkIOException {
        List<HttpRequestor.Header> addAuthHeader = addAuthHeader(addUserAgentHeader(m9970a(list), dbxRequestConfig, str2), str);
        try {
            return dbxRequestConfig.getHttpRequestor().startPut(buildUrlWithParams(dbxRequestConfig.getUserLocale(), str3, str4, strArr), addAuthHeader);
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    public static String[] toParamsArray(Map<String, String> map) {
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            strArr[i] = entry.getKey();
            strArr[i + 1] = entry.getValue();
            i += 2;
        }
        return strArr;
    }

    public static DbxException unexpectedStatus(HttpRequestor.Response response) throws NetworkIOException, BadResponseException {
        return unexpectedStatus(response, null);
    }

    public static DbxException unexpectedStatus(HttpRequestor.Response response, String str) throws NetworkIOException, BadResponseException {
        DbxException badRequestException;
        DbxException rateLimitException;
        String requestId = getRequestId(response);
        int statusCode = response.getStatusCode();
        if (statusCode == 400) {
            badRequestException = new BadRequestException(requestId, m9972c(response, requestId));
        } else if (statusCode != 401) {
            if (statusCode == 403) {
                try {
                    C2260a deserialize = new C2260a.a(AccessError.Serializer.INSTANCE).deserialize(response.getBody());
                    badRequestException = new AccessErrorException(requestId, deserialize.m9998b() != null ? deserialize.m9998b().toString() : null, (AccessError) deserialize.m9997a());
                } catch (JsonProcessingException e) {
                    throw new BadResponseException(requestId, "Bad JSON: " + e.getMessage(), e);
                } catch (IOException e2) {
                    throw new NetworkIOException(e2);
                }
            } else if (statusCode != 422) {
                if (statusCode == 429) {
                    try {
                        rateLimitException = new RateLimitException(requestId, null, Integer.parseInt(getFirstHeader(response, "Retry-After")), TimeUnit.SECONDS);
                    } catch (NumberFormatException unused) {
                        badRequestException = new BadResponseException(requestId, "Invalid value for HTTP header: \"Retry-After\"");
                    }
                } else if (statusCode == 500) {
                    badRequestException = new ServerException(requestId, null);
                } else if (statusCode != 503) {
                    badRequestException = new BadResponseCodeException(requestId, "unexpected HTTP status code: " + response.getStatusCode() + ": " + ((String) null), response.getStatusCode());
                } else {
                    String firstHeaderMaybe = getFirstHeaderMaybe(response, "Retry-After");
                    if (firstHeaderMaybe != null) {
                        try {
                            if (!firstHeaderMaybe.trim().isEmpty()) {
                                rateLimitException = new RetryException(requestId, null, Integer.parseInt(firstHeaderMaybe), TimeUnit.SECONDS);
                            }
                        } catch (NumberFormatException unused2) {
                            badRequestException = new BadResponseException(requestId, "Invalid value for HTTP header: \"Retry-After\"");
                        }
                    }
                    badRequestException = new RetryException(requestId, null);
                }
                badRequestException = rateLimitException;
            } else {
                try {
                    C2260a deserialize2 = new C2260a.a(PathRootError.Serializer.INSTANCE).deserialize(response.getBody());
                    badRequestException = new PathRootErrorException(requestId, deserialize2.m9998b() != null ? deserialize2.m9998b().toString() : null, (PathRootError) deserialize2.m9997a());
                } catch (JsonProcessingException e3) {
                    throw new BadResponseException(requestId, "Bad JSON: " + e3.getMessage(), e3);
                } catch (IOException e4) {
                    throw new NetworkIOException(e4);
                }
            }
        } else {
            String m9972c = m9972c(response, requestId);
            try {
                badRequestException = new InvalidAccessTokenException(requestId, m9972c, (AuthError) new C2260a.a(AuthError.Serializer.INSTANCE).deserialize(m9972c).m9997a());
            } catch (JsonParseException e5) {
                throw new BadResponseException(requestId, "Bad JSON: " + e5.getMessage(), e5);
            }
        }
        DbxGlobalCallbackFactory dbxGlobalCallbackFactory = sharedCallbackFactory;
        if (dbxGlobalCallbackFactory != null) {
            dbxGlobalCallbackFactory.createNetworkErrorCallback(str).onNetworkError(badRequestException);
        }
        return badRequestException;
    }
}
