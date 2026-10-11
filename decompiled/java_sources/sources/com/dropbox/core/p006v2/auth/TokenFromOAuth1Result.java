package com.dropbox.core.p006v2.auth;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class TokenFromOAuth1Result {
    protected final String oauth2Token;

    /* renamed from: com.dropbox.core.v2.auth.TokenFromOAuth1Result$a */
    /* loaded from: classes4.dex */
    public static class C2381a extends StructSerializer<TokenFromOAuth1Result> {

        /* renamed from: b */
        public static final C2381a f16818b = new C2381a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TokenFromOAuth1Result deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("oauth2_token".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"oauth2_token\" missing.");
            }
            TokenFromOAuth1Result tokenFromOAuth1Result = new TokenFromOAuth1Result(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(tokenFromOAuth1Result, tokenFromOAuth1Result.toStringMultiline());
            return tokenFromOAuth1Result;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TokenFromOAuth1Result tokenFromOAuth1Result, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("oauth2_token");
            StoneSerializers.string().serialize((StoneSerializer<String>) tokenFromOAuth1Result.oauth2Token, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TokenFromOAuth1Result(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'oauth2Token' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'oauth2Token' is shorter than 1");
        }
        this.oauth2Token = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.oauth2Token;
        String str2 = ((TokenFromOAuth1Result) obj).oauth2Token;
        return str == str2 || str.equals(str2);
    }

    public String getOauth2Token() {
        return this.oauth2Token;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.oauth2Token});
    }

    public String toString() {
        return C2381a.f16818b.serialize((C2381a) this, false);
    }

    public String toStringMultiline() {
        return C2381a.f16818b.serialize((C2381a) this, true);
    }
}
