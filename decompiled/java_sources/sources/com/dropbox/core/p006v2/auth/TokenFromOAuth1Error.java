package com.dropbox.core.p006v2.auth;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum TokenFromOAuth1Error {
    INVALID_OAUTH1_TOKEN_INFO,
    APP_ID_MISMATCH,
    OTHER;

    /* renamed from: com.dropbox.core.v2.auth.TokenFromOAuth1Error$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2379a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16816a;

        static {
            int[] iArr = new int[TokenFromOAuth1Error.values().length];
            f16816a = iArr;
            try {
                iArr[TokenFromOAuth1Error.INVALID_OAUTH1_TOKEN_INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16816a[TokenFromOAuth1Error.APP_ID_MISMATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.TokenFromOAuth1Error$b */
    /* loaded from: classes4.dex */
    public static class C2380b extends UnionSerializer<TokenFromOAuth1Error> {

        /* renamed from: b */
        public static final C2380b f16817b = new C2380b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TokenFromOAuth1Error deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            TokenFromOAuth1Error tokenFromOAuth1Error = "invalid_oauth1_token_info".equals(readTag) ? TokenFromOAuth1Error.INVALID_OAUTH1_TOKEN_INFO : "app_id_mismatch".equals(readTag) ? TokenFromOAuth1Error.APP_ID_MISMATCH : TokenFromOAuth1Error.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return tokenFromOAuth1Error;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TokenFromOAuth1Error tokenFromOAuth1Error, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2379a.f16816a[tokenFromOAuth1Error.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_oauth1_token_info");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("app_id_mismatch");
            }
        }
    }
}
