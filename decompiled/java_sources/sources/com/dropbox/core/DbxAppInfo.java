package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import okhttp3.internal.http2.Http2ExchangeCodec;

/* loaded from: classes4.dex */
public class DbxAppInfo extends Dumpable {

    /* renamed from: e */
    public final String f16360e;

    /* renamed from: f */
    public final String f16361f;

    /* renamed from: g */
    public final DbxHost f16362g;
    public static final JsonReader<DbxAppInfo> Reader = new C2241a();
    public static final JsonReader<String> KeyReader = new C2242b();
    public static final JsonReader<String> SecretReader = new C2243c();

    /* renamed from: com.dropbox.core.DbxAppInfo$a */
    /* loaded from: classes4.dex */
    public static class C2241a extends JsonReader<DbxAppInfo> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DbxAppInfo read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            DbxHost dbxHost = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("key")) {
                        str = DbxAppInfo.KeyReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("secret")) {
                        str2 = DbxAppInfo.SecretReader.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals(Http2ExchangeCodec.f103778h)) {
                        dbxHost = DbxHost.Reader.readField(jsonParser, currentName, dbxHost);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str == null) {
                throw new JsonReadException("missing field \"key\"", expectObjectStart);
            }
            if (dbxHost == null) {
                dbxHost = DbxHost.DEFAULT;
            }
            return new DbxAppInfo(str, str2, dbxHost);
        }
    }

    /* renamed from: com.dropbox.core.DbxAppInfo$b */
    /* loaded from: classes4.dex */
    public static class C2242b extends JsonReader<String> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String keyFormatError = DbxAppInfo.getKeyFormatError(text);
                if (keyFormatError == null) {
                    jsonParser.nextToken();
                    return text;
                }
                throw new JsonReadException("bad format for app key: " + keyFormatError, jsonParser.getTokenLocation());
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    }

    /* renamed from: com.dropbox.core.DbxAppInfo$c */
    /* loaded from: classes4.dex */
    public static class C2243c extends JsonReader<String> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String keyFormatError = DbxAppInfo.getKeyFormatError(text);
                if (keyFormatError == null) {
                    jsonParser.nextToken();
                    return text;
                }
                throw new JsonReadException("bad format for app secret: " + keyFormatError, jsonParser.getTokenLocation());
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    }

    public DbxAppInfo(String str) {
        this(str, null);
    }

    public static void checkKeyArg(String str) {
        String tokenPartError = str == null ? "can't be null" : getTokenPartError(str);
        if (tokenPartError == null) {
            return;
        }
        throw new IllegalArgumentException("Bad 'key': " + tokenPartError);
    }

    public static void checkSecretArg(String str) {
        String tokenPartError = getTokenPartError(str);
        if (tokenPartError == null) {
            return;
        }
        throw new IllegalArgumentException("Bad 'secret': " + tokenPartError);
    }

    public static String getKeyFormatError(String str) {
        return getTokenPartError(str);
    }

    public static String getSecretFormatError(String str) {
        return getTokenPartError(str);
    }

    public static String getTokenPartError(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "can't be empty";
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < '!' || charAt > '~') {
                return "invalid character at index " + i + ": " + StringUtil.m10140jq("" + charAt);
            }
        }
        return null;
    }

    @Override // com.dropbox.core.util.Dumpable
    public void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.mo10123f("key").m10131v(this.f16360e);
        dumpWriter.mo10123f("secret").m10131v(this.f16361f);
    }

    public DbxHost getHost() {
        return this.f16362g;
    }

    public String getKey() {
        return this.f16360e;
    }

    public String getSecret() {
        return this.f16361f;
    }

    public boolean hasSecret() {
        return this.f16361f != null;
    }

    public DbxAppInfo(String str, String str2) {
        checkKeyArg(str);
        checkSecretArg(str2);
        this.f16360e = str;
        this.f16361f = str2;
        this.f16362g = DbxHost.DEFAULT;
    }

    public DbxAppInfo(String str, String str2, DbxHost dbxHost) {
        checkKeyArg(str);
        checkSecretArg(str2);
        this.f16360e = str;
        this.f16361f = str2;
        this.f16362g = dbxHost;
    }
}
