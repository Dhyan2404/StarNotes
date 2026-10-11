package com.dropbox.core.oauth;

import com.dropbox.core.DbxAuthFinish;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public class DbxRefreshResult {
    public static final JsonReader<DbxRefreshResult> Reader = new C2294a();

    /* renamed from: a */
    public final String f16604a;

    /* renamed from: b */
    public final long f16605b;

    /* renamed from: c */
    public long f16606c;

    /* renamed from: d */
    public String f16607d;

    /* renamed from: com.dropbox.core.oauth.DbxRefreshResult$a */
    /* loaded from: classes4.dex */
    public static class C2294a extends JsonReader<DbxRefreshResult> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxRefreshResult read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            Long l = null;
            String str3 = null;
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
                    } else if (currentName.equals("scope")) {
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
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
            if (l != null) {
                return new DbxRefreshResult(str2, l.longValue(), str3);
            }
            throw new JsonReadException("missing field \"expires_in\"", expectObjectStart);
        }
    }

    public DbxRefreshResult(String str, long j) {
        this(str, j, null);
    }

    /* renamed from: a */
    public void m10097a(long j) {
        this.f16606c = j;
    }

    public String getAccessToken() {
        return this.f16604a;
    }

    public Long getExpiresAt() {
        return Long.valueOf(this.f16606c + (this.f16605b * 1000));
    }

    public String getScope() {
        return this.f16607d;
    }

    public DbxRefreshResult(String str, long j, String str2) {
        if (str != null) {
            this.f16604a = str;
            this.f16605b = j;
            this.f16606c = System.currentTimeMillis();
            this.f16607d = str2;
            return;
        }
        throw new IllegalArgumentException("access token can't be null.");
    }
}
