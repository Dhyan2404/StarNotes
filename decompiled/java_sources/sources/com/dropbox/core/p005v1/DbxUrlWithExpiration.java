package com.dropbox.core.p005v1;

import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Date;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public final class DbxUrlWithExpiration {
    public static final JsonReader<DbxUrlWithExpiration> Reader = new C2357a();
    public final Date expires;
    public final String url;

    /* renamed from: com.dropbox.core.v1.DbxUrlWithExpiration$a */
    /* loaded from: classes4.dex */
    public static class C2357a extends JsonReader<DbxUrlWithExpiration> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxUrlWithExpiration read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("url")) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals(ClientCookie.EXPIRES_ATTR)) {
                        date = JsonDateReader.Dropbox.readField(jsonParser, currentName, date);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str == null) {
                throw new JsonReadException("missing field \"url\"", expectObjectStart);
            }
            if (date != null) {
                return new DbxUrlWithExpiration(str, date);
            }
            throw new JsonReadException("missing field \"expires\"", expectObjectStart);
        }
    }

    public DbxUrlWithExpiration(String str, Date date) {
        this.url = str;
        this.expires = date;
    }
}
