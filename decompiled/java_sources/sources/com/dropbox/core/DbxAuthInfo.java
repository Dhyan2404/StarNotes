package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import okhttp3.internal.http2.Http2ExchangeCodec;

/* loaded from: classes4.dex */
public final class DbxAuthInfo {
    public static final JsonReader<DbxAuthInfo> Reader = new C2247a();
    public static final JsonWriter<DbxAuthInfo> Writer = new C2248b();

    /* renamed from: a */
    public final String f16372a;

    /* renamed from: b */
    public final Long f16373b;

    /* renamed from: c */
    public final String f16374c;

    /* renamed from: d */
    public final DbxHost f16375d;

    /* renamed from: com.dropbox.core.DbxAuthInfo$a */
    /* loaded from: classes4.dex */
    public static class C2247a extends JsonReader<DbxAuthInfo> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DbxAuthInfo read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            DbxHost dbxHost = null;
            Long l = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals(Http2ExchangeCodec.f103778h)) {
                        dbxHost = DbxHost.Reader.readField(jsonParser, currentName, dbxHost);
                    } else if (currentName.equals("expires_at")) {
                        l = JsonReader.Int64Reader.readField(jsonParser, currentName, l);
                    } else if (currentName.equals("refresh_token")) {
                        str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals("access_token")) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str == null) {
                throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
            }
            if (dbxHost == null) {
                dbxHost = DbxHost.DEFAULT;
            }
            return new DbxAuthInfo(str, l, str2, dbxHost);
        }
    }

    /* renamed from: com.dropbox.core.DbxAuthInfo$b */
    /* loaded from: classes4.dex */
    public static class C2248b extends JsonWriter<DbxAuthInfo> {
        @Override // com.dropbox.core.json.JsonWriter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(DbxAuthInfo dbxAuthInfo, JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("access_token", dbxAuthInfo.f16372a);
            if (dbxAuthInfo.f16373b != null) {
                jsonGenerator.writeNumberField("expires_at", dbxAuthInfo.f16373b.longValue());
            }
            if (dbxAuthInfo.f16374c != null) {
                jsonGenerator.writeStringField("refresh_token", dbxAuthInfo.f16374c);
            }
            if (!dbxAuthInfo.f16375d.equals(DbxHost.DEFAULT)) {
                jsonGenerator.writeFieldName(Http2ExchangeCodec.f103778h);
                DbxHost.Writer.write(dbxAuthInfo.f16375d, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DbxAuthInfo(String str, DbxHost dbxHost) {
        this(str, null, null, dbxHost);
    }

    public String getAccessToken() {
        return this.f16372a;
    }

    public Long getExpiresAt() {
        return this.f16373b;
    }

    public DbxHost getHost() {
        return this.f16375d;
    }

    public String getRefreshToken() {
        return this.f16374c;
    }

    public DbxAuthInfo(String str, Long l, String str2, DbxHost dbxHost) {
        if (str == null) {
            throw new IllegalArgumentException("'accessToken' can't be null");
        }
        if (dbxHost != null) {
            this.f16372a = str;
            this.f16373b = l;
            this.f16374c = str2;
            this.f16375d = dbxHost;
            return;
        }
        throw new IllegalArgumentException("'host' can't be null");
    }
}
