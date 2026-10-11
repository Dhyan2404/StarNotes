package com.dropbox.core;

import com.dropbox.core.android.AuthActivity;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class DbxHost {
    public static final DbxHost DEFAULT = new DbxHost("api.dropboxapi.com", "content.dropboxapi.com", AuthActivity.f16487s, "notify.dropboxapi.com");
    public static final JsonReader<DbxHost> Reader = new C2249a();
    public static final JsonWriter<DbxHost> Writer = new C2250b();

    /* renamed from: a */
    public final String f16380a;

    /* renamed from: b */
    public final String f16381b;

    /* renamed from: c */
    public final String f16382c;

    /* renamed from: d */
    public final String f16383d;

    /* renamed from: com.dropbox.core.DbxHost$a */
    /* loaded from: classes4.dex */
    public static class C2249a extends JsonReader<DbxHost> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxHost read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                String text = jsonParser.getText();
                JsonReader.nextToken(jsonParser);
                return DbxHost.m9953g(text);
            }
            if (currentToken != JsonToken.START_OBJECT) {
                throw new JsonReadException("expecting a string or an object", jsonParser.getTokenLocation());
            }
            JsonLocation tokenLocation = jsonParser.getTokenLocation();
            JsonReader.nextToken(jsonParser);
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("api")) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("content")) {
                        str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals("web")) {
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    } else {
                        if (!currentName.equals("notify")) {
                            throw new JsonReadException("unknown field", jsonParser.getCurrentLocation());
                        }
                        str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str == null) {
                throw new JsonReadException("missing field \"api\"", tokenLocation);
            }
            if (str2 == null) {
                throw new JsonReadException("missing field \"content\"", tokenLocation);
            }
            if (str3 == null) {
                throw new JsonReadException("missing field \"web\"", tokenLocation);
            }
            if (str4 != null) {
                return new DbxHost(str, str2, str3, str4);
            }
            throw new JsonReadException("missing field \"notify\"", tokenLocation);
        }
    }

    /* renamed from: com.dropbox.core.DbxHost$b */
    /* loaded from: classes4.dex */
    public static class C2250b extends JsonWriter<DbxHost> {
        @Override // com.dropbox.core.json.JsonWriter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(DbxHost dbxHost, JsonGenerator jsonGenerator) throws IOException {
            String m9954h = dbxHost.m9954h();
            if (m9954h != null) {
                jsonGenerator.writeString(m9954h);
                return;
            }
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("api", dbxHost.f16380a);
            jsonGenerator.writeStringField("content", dbxHost.f16381b);
            jsonGenerator.writeStringField("web", dbxHost.f16382c);
            jsonGenerator.writeStringField("notify", dbxHost.f16383d);
            jsonGenerator.writeEndObject();
        }
    }

    public DbxHost(String str, String str2, String str3, String str4) {
        this.f16380a = str;
        this.f16381b = str2;
        this.f16382c = str3;
        this.f16383d = str4;
    }

    /* renamed from: g */
    public static DbxHost m9953g(String str) {
        return new DbxHost("api-" + str, "api-content-" + str, "meta-" + str, "api-notify-" + str);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DbxHost)) {
            return false;
        }
        DbxHost dbxHost = (DbxHost) obj;
        return dbxHost.f16380a.equals(this.f16380a) && dbxHost.f16381b.equals(this.f16381b) && dbxHost.f16382c.equals(this.f16382c) && dbxHost.f16383d.equals(this.f16383d);
    }

    public String getApi() {
        return this.f16380a;
    }

    public String getContent() {
        return this.f16381b;
    }

    public String getNotify() {
        return this.f16383d;
    }

    public String getWeb() {
        return this.f16382c;
    }

    /* renamed from: h */
    public final String m9954h() {
        if (!this.f16382c.startsWith("meta-") || !this.f16380a.startsWith("api-") || !this.f16381b.startsWith("api-content-") || !this.f16383d.startsWith("api-notify-")) {
            return null;
        }
        String substring = this.f16382c.substring(5);
        String substring2 = this.f16380a.substring(4);
        String substring3 = this.f16381b.substring(12);
        String substring4 = this.f16383d.substring(11);
        if (substring.equals(substring2) && substring.equals(substring3) && substring.equals(substring4)) {
            return substring;
        }
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(new String[]{this.f16380a, this.f16381b, this.f16382c, this.f16383d});
    }
}
