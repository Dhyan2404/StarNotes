package com.dropbox.core.oauth;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes4.dex */
public class DbxOAuthError {
    public static final String UNKNOWN = "unknown";

    /* renamed from: a */
    public final String f16602a;

    /* renamed from: b */
    public final String f16603b;
    public static final String INVALID_REQUEST = "invalid_request";
    public static final String INVALID_GRANT = "invalid_grant";
    public static final String UNSUPPORTED_GRANT_TYPE = "unsupported_grant_type";
    public static final Set<String> ERRORS = new HashSet(Arrays.asList(INVALID_REQUEST, INVALID_GRANT, UNSUPPORTED_GRANT_TYPE));
    public static final JsonReader<DbxOAuthError> Reader = new C2293a();

    /* renamed from: com.dropbox.core.oauth.DbxOAuthError$a */
    /* loaded from: classes4.dex */
    public static class C2293a extends JsonReader<DbxOAuthError> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DbxOAuthError read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("error")) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("error_description")) {
                        str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                return new DbxOAuthError(str, str2);
            }
            throw new JsonReadException("missing field \"error\"", expectObjectStart);
        }
    }

    public DbxOAuthError(String str, String str2) {
        if (ERRORS.contains(str)) {
            this.f16602a = str;
        } else {
            this.f16602a = "unknown";
        }
        this.f16603b = str2;
    }

    public String getError() {
        return this.f16602a;
    }

    public String getErrorDescription() {
        return this.f16603b;
    }
}
