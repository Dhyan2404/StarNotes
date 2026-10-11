package com.dropbox.core;

import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.p005v1.DbxClientV1;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import org.scribe.model.ParameterList;

/* loaded from: classes4.dex */
public final class DbxOAuth1Upgrader {
    public static final JsonReader<String> ResponseReader = new C2253c();

    /* renamed from: a */
    public final DbxRequestConfig f16386a;

    /* renamed from: b */
    public final DbxAppInfo f16387b;

    /* renamed from: com.dropbox.core.DbxOAuth1Upgrader$a */
    /* loaded from: classes4.dex */
    public class C2251a extends DbxRequestUtil.ResponseHandler<String> {
        public C2251a() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (String) DbxRequestUtil.readJsonFromResponse(DbxOAuth1Upgrader.ResponseReader, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.DbxOAuth1Upgrader$b */
    /* loaded from: classes4.dex */
    public class C2252b extends DbxRequestUtil.ResponseHandler<Void> {
        public C2252b() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return null;
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.DbxOAuth1Upgrader$c */
    /* loaded from: classes4.dex */
    public static class C2253c extends JsonReader<String> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                try {
                    if (currentName.equals("token_type")) {
                        str = DbxAuthFinish.BearerTokenTypeReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("access_token")) {
                        str2 = DbxAuthFinish.AccessTokenReader.readField(jsonParser, currentName, str2);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str == null) {
                throw new JsonReadException("missing field \"token_type\"", expectObjectStart);
            }
            if (str2 != null) {
                return str2;
            }
            throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
        }
    }

    public DbxOAuth1Upgrader(DbxRequestConfig dbxRequestConfig, DbxAppInfo dbxAppInfo) {
        if (dbxRequestConfig == null) {
            throw new IllegalArgumentException("'requestConfig' is null");
        }
        if (dbxAppInfo == null) {
            throw new IllegalArgumentException("'appInfo' is null");
        }
        this.f16386a = dbxRequestConfig;
        this.f16387b = dbxAppInfo;
    }

    /* renamed from: b */
    public static String m9957b(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw LangUtil.mkAssert("UTF-8 should always be supported", e);
        }
    }

    /* renamed from: a */
    public final String m9958a(DbxOAuth1AccessToken dbxOAuth1AccessToken) {
        return "OAuth oauth_version=\"1.0\", oauth_signature_method=\"PLAINTEXT\", oauth_consumer_key=\"" + m9957b(this.f16387b.getKey()) + "\", oauth_token=\"" + m9957b(dbxOAuth1AccessToken.getKey()) + "\", oauth_signature=\"" + m9957b(this.f16387b.getSecret()) + ParameterList.f115951c + m9957b(dbxOAuth1AccessToken.getSecret()) + "\"";
    }

    /* renamed from: c */
    public final ArrayList<HttpRequestor.Header> m9959c(DbxOAuth1AccessToken dbxOAuth1AccessToken) {
        ArrayList<HttpRequestor.Header> arrayList = new ArrayList<>(1);
        arrayList.add(new HttpRequestor.Header("Authorization", m9958a(dbxOAuth1AccessToken)));
        return arrayList;
    }

    public String createOAuth2AccessToken(DbxOAuth1AccessToken dbxOAuth1AccessToken) throws DbxException {
        if (dbxOAuth1AccessToken != null) {
            return (String) DbxRequestUtil.doPostNoAuth(this.f16386a, DbxClientV1.USER_AGENT_ID, this.f16387b.getHost().getApi(), "1/oauth2/token_from_oauth1", null, m9959c(dbxOAuth1AccessToken), new C2251a());
        }
        throw new IllegalArgumentException("'token' can't be null");
    }

    public void disableOAuth1AccessToken(DbxOAuth1AccessToken dbxOAuth1AccessToken) throws DbxException {
        if (dbxOAuth1AccessToken == null) {
            throw new IllegalArgumentException("'token' can't be null");
        }
        DbxRequestUtil.doPostNoAuth(this.f16386a, DbxClientV1.USER_AGENT_ID, this.f16387b.getHost().getApi(), "1/disable_access_token", null, m9959c(dbxOAuth1AccessToken), new C2252b());
    }
}
