package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.IOException;

/* loaded from: classes4.dex */
public final class DbxAuthFinish {

    /* renamed from: a */
    public final String f16363a;

    /* renamed from: b */
    public final Long f16364b;

    /* renamed from: c */
    public final String f16365c;

    /* renamed from: d */
    public final String f16366d;

    /* renamed from: e */
    public final String f16367e;

    /* renamed from: f */
    public final String f16368f;

    /* renamed from: g */
    public final String f16369g;

    /* renamed from: h */
    public long f16370h;

    /* renamed from: i */
    public final String f16371i;
    public static final JsonReader<DbxAuthFinish> Reader = new C2244a();
    public static final JsonReader<String> BearerTokenTypeReader = new C2245b();
    public static final JsonReader<String> AccessTokenReader = new C2246c();

    /* renamed from: com.dropbox.core.DbxAuthFinish$a */
    /* loaded from: classes4.dex */
    public static class C2244a extends JsonReader<DbxAuthFinish> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxAuthFinish read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            Long l = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                try {
                    if (currentName.equals("token_type")) {
                        str = DbxAuthFinish.BearerTokenTypeReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("access_token")) {
                        str2 = DbxAuthFinish.AccessTokenReader.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals("expires_in")) {
                        l = JsonReader.UInt64Reader.readField(jsonParser, currentName, l);
                    } else if (currentName.equals("refresh_token")) {
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    } else if (currentName.equals(CouchFieldKey.KEY_UID)) {
                        str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                    } else if (currentName.equals("account_id")) {
                        str6 = JsonReader.StringReader.readField(jsonParser, currentName, str6);
                    } else if (currentName.equals("team_id")) {
                        str5 = JsonReader.StringReader.readField(jsonParser, currentName, str5);
                    } else if (currentName.equals("state")) {
                        str7 = JsonReader.StringReader.readField(jsonParser, currentName, str7);
                    } else if (currentName.equals("scope")) {
                        str8 = JsonReader.StringReader.readField(jsonParser, currentName, str8);
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
            if (str2 == null) {
                throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
            }
            if (str4 == null) {
                throw new JsonReadException("missing field \"uid\"", expectObjectStart);
            }
            if (str6 == null && str5 == null) {
                throw new JsonReadException("missing field \"account_id\" and missing field \"team_id\"", expectObjectStart);
            }
            if (str3 == null || l != null) {
                return new DbxAuthFinish(str2, l, str3, str4, str5, str6, str7, str8);
            }
            throw new JsonReadException("missing field \"expires_in\"", expectObjectStart);
        }
    }

    /* renamed from: com.dropbox.core.DbxAuthFinish$b */
    /* loaded from: classes4.dex */
    public static class C2245b extends JsonReader<String> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                if (!text.equals(CloudStorageConstants.BEARER) && !text.equals("bearer")) {
                    throw new JsonReadException("expecting \"Bearer\": got " + StringUtil.m10140jq(text), jsonParser.getTokenLocation());
                }
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    }

    /* renamed from: com.dropbox.core.DbxAuthFinish$c */
    /* loaded from: classes4.dex */
    public static class C2246c extends JsonReader<String> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String tokenPartError = DbxAppInfo.getTokenPartError(text);
                if (tokenPartError != null) {
                    throw new JsonReadException(tokenPartError, jsonParser.getTokenLocation());
                }
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    }

    @Deprecated
    public DbxAuthFinish(String str, String str2, String str3, String str4, String str5) {
        this(str, null, null, str2, str4, str3, str5);
    }

    /* renamed from: a */
    public void m9935a(long j) {
        this.f16370h = j;
    }

    /* renamed from: b */
    public DbxAuthFinish m9936b(String str) {
        if (this.f16369g != null) {
            throw new IllegalStateException("Already have URL state.");
        }
        DbxAuthFinish dbxAuthFinish = new DbxAuthFinish(this.f16363a, this.f16364b, this.f16365c, this.f16366d, this.f16368f, this.f16367e, str, this.f16371i);
        dbxAuthFinish.m9935a(this.f16370h);
        return dbxAuthFinish;
    }

    public String getAccessToken() {
        return this.f16363a;
    }

    public String getAccountId() {
        return this.f16367e;
    }

    public Long getExpiresAt() {
        Long l = this.f16364b;
        if (l == null) {
            return null;
        }
        return Long.valueOf(this.f16370h + (l.longValue() * 1000));
    }

    public String getRefreshToken() {
        return this.f16365c;
    }

    public String getScope() {
        return this.f16371i;
    }

    public String getTeamId() {
        return this.f16368f;
    }

    public String getUrlState() {
        return this.f16369g;
    }

    public String getUserId() {
        return this.f16366d;
    }

    public DbxAuthFinish(String str, Long l, String str2, String str3, String str4, String str5, String str6) {
        this(str, l, str2, str3, str4, str5, str6, null);
    }

    public DbxAuthFinish(String str, Long l, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f16363a = str;
        this.f16364b = l;
        this.f16365c = str2;
        this.f16366d = str3;
        this.f16367e = str5;
        this.f16368f = str4;
        this.f16369g = str6;
        this.f16370h = System.currentTimeMillis();
        this.f16371i = str7;
    }
}
