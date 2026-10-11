package com.dropbox.core.oauth;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.StatisticConstant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import org.scribe.model.OAuthConstants;

/* loaded from: classes4.dex */
public class DbxCredential {
    public static final long EXPIRE_MARGIN = 300000;
    public static final JsonReader<DbxCredential> Reader = new C2291b();
    public static final JsonWriter<DbxCredential> Writer = new C2292c();

    /* renamed from: a */
    public String f16596a;

    /* renamed from: b */
    public Long f16597b;

    /* renamed from: c */
    public final String f16598c;

    /* renamed from: d */
    public final String f16599d;

    /* renamed from: e */
    public final String f16600e;

    /* renamed from: com.dropbox.core.oauth.DbxCredential$a */
    /* loaded from: classes4.dex */
    public class C2290a extends DbxRequestUtil.ResponseHandler<DbxRefreshResult> {
        public C2290a() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxRefreshResult handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (DbxRefreshResult) DbxRequestUtil.readJsonFromResponse(DbxRefreshResult.Reader, response);
            }
            throw new DbxOAuthException(DbxRequestUtil.getRequestId(response), (DbxOAuthError) DbxRequestUtil.readJsonFromResponse(DbxOAuthError.Reader, response));
        }
    }

    /* renamed from: com.dropbox.core.oauth.DbxCredential$b */
    /* loaded from: classes4.dex */
    public static class C2291b extends JsonReader<DbxCredential> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DbxCredential read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            Long l = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("access_token")) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("expires_at")) {
                        l = JsonReader.Int64Reader.readField(jsonParser, currentName, l);
                    } else if (currentName.equals("refresh_token")) {
                        str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals(StatisticConstant.UMENG_KEY_APP_KEY)) {
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    } else if (currentName.equals("app_secret")) {
                        str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                return new DbxCredential(str, l, str2, str3, str4);
            }
            throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
        }
    }

    /* renamed from: com.dropbox.core.oauth.DbxCredential$c */
    /* loaded from: classes4.dex */
    public static class C2292c extends JsonWriter<DbxCredential> {
        @Override // com.dropbox.core.json.JsonWriter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(DbxCredential dbxCredential, JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("access_token", dbxCredential.f16596a);
            if (dbxCredential.f16597b != null) {
                jsonGenerator.writeNumberField("expires_at", dbxCredential.f16597b.longValue());
            }
            if (dbxCredential.f16598c != null) {
                jsonGenerator.writeStringField("refresh_token", dbxCredential.f16598c);
            }
            if (dbxCredential.f16599d != null) {
                jsonGenerator.writeStringField(StatisticConstant.UMENG_KEY_APP_KEY, dbxCredential.f16599d);
            }
            if (dbxCredential.f16600e != null) {
                jsonGenerator.writeStringField("app_secret", dbxCredential.f16600e);
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DbxCredential(String str) {
        this(str, null, null, null, null);
    }

    public boolean aboutToExpire() {
        return getExpiresAt() != null && System.currentTimeMillis() + 300000 > getExpiresAt().longValue();
    }

    public String getAccessToken() {
        return this.f16596a;
    }

    public String getAppKey() {
        return this.f16599d;
    }

    public String getAppSecret() {
        return this.f16600e;
    }

    public Long getExpiresAt() {
        return this.f16597b;
    }

    public String getRefreshToken() {
        return this.f16598c;
    }

    public DbxRefreshResult refresh(DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, Collection<String> collection) throws DbxException {
        if (this.f16598c != null) {
            if (this.f16599d != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("grant_type", "refresh_token");
                hashMap.put("refresh_token", this.f16598c);
                hashMap.put("locale", dbxRequestConfig.getUserLocale());
                ArrayList arrayList = new ArrayList();
                String str = this.f16600e;
                if (str == null) {
                    hashMap.put(OAuthConstants.CLIENT_ID, this.f16599d);
                } else {
                    DbxRequestUtil.addBasicAuthHeader(arrayList, this.f16599d, str);
                }
                if (collection != null) {
                    hashMap.put("scope", StringUtil.join(collection, " "));
                }
                DbxRefreshResult dbxRefreshResult = (DbxRefreshResult) DbxRequestUtil.doPostNoAuth(dbxRequestConfig, DbxRawClientV2.USER_AGENT_ID, dbxHost.getApi(), "oauth2/token", DbxRequestUtil.toParamsArray(hashMap), arrayList, new C2290a());
                synchronized (this) {
                    this.f16596a = dbxRefreshResult.getAccessToken();
                    this.f16597b = dbxRefreshResult.getExpiresAt();
                }
                return dbxRefreshResult;
            }
            throw new IllegalStateException("DbxCredential's constructor should always guarantee appKey is not null if refreshToken is not null.");
        }
        throw new DbxOAuthException(null, new DbxOAuthError(DbxOAuthError.INVALID_REQUEST, "Cannot refresh becasue there is no refresh token"));
    }

    public String toString() {
        return Writer.writeToString(this);
    }

    public DbxCredential(String str, Long l, String str2, String str3) {
        this(str, l, str2, str3, null);
    }

    public DbxCredential(String str, Long l, String str2, String str3, String str4) {
        if (str == null) {
            throw new IllegalArgumentException("Missing access token.");
        }
        if (str2 != null && str3 == null) {
            throw new IllegalArgumentException("Can't refresh without app Key.");
        }
        if (str2 != null && l == null) {
            throw new IllegalArgumentException("Missing expireAt.");
        }
        this.f16596a = str;
        this.f16597b = l;
        this.f16598c = str2;
        this.f16599d = str3;
        this.f16600e = str4;
    }

    public DbxRefreshResult refresh(DbxRequestConfig dbxRequestConfig) throws DbxException {
        return refresh(dbxRequestConfig, DbxHost.DEFAULT, null);
    }

    public DbxRefreshResult refresh(DbxRequestConfig dbxRequestConfig, Collection<String> collection) throws DbxException {
        return refresh(dbxRequestConfig, DbxHost.DEFAULT, collection);
    }
}
