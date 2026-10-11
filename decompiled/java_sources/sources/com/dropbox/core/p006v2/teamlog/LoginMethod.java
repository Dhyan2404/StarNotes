package com.dropbox.core.p006v2.teamlog;

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
public enum LoginMethod {
    PASSWORD,
    TWO_FACTOR_AUTHENTICATION,
    SAML,
    GOOGLE_OAUTH,
    WEB_SESSION,
    QR_CODE,
    APPLE_OAUTH,
    FIRST_PARTY_TOKEN_EXCHANGE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.LoginMethod$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3721a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19994a;

        static {
            int[] iArr = new int[LoginMethod.values().length];
            f19994a = iArr;
            try {
                iArr[LoginMethod.PASSWORD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19994a[LoginMethod.TWO_FACTOR_AUTHENTICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19994a[LoginMethod.SAML.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19994a[LoginMethod.GOOGLE_OAUTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19994a[LoginMethod.WEB_SESSION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19994a[LoginMethod.QR_CODE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19994a[LoginMethod.APPLE_OAUTH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19994a[LoginMethod.FIRST_PARTY_TOKEN_EXCHANGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.LoginMethod$b */
    /* loaded from: classes4.dex */
    public static class C3722b extends UnionSerializer<LoginMethod> {

        /* renamed from: b */
        public static final C3722b f19995b = new C3722b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginMethod deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            LoginMethod loginMethod = "password".equals(readTag) ? LoginMethod.PASSWORD : "two_factor_authentication".equals(readTag) ? LoginMethod.TWO_FACTOR_AUTHENTICATION : "saml".equals(readTag) ? LoginMethod.SAML : "google_oauth".equals(readTag) ? LoginMethod.GOOGLE_OAUTH : "web_session".equals(readTag) ? LoginMethod.WEB_SESSION : "qr_code".equals(readTag) ? LoginMethod.QR_CODE : "apple_oauth".equals(readTag) ? LoginMethod.APPLE_OAUTH : "first_party_token_exchange".equals(readTag) ? LoginMethod.FIRST_PARTY_TOKEN_EXCHANGE : LoginMethod.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return loginMethod;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LoginMethod loginMethod, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3721a.f19994a[loginMethod.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("password");
                    return;
                case 2:
                    jsonGenerator.writeString("two_factor_authentication");
                    return;
                case 3:
                    jsonGenerator.writeString("saml");
                    return;
                case 4:
                    jsonGenerator.writeString("google_oauth");
                    return;
                case 5:
                    jsonGenerator.writeString("web_session");
                    return;
                case 6:
                    jsonGenerator.writeString("qr_code");
                    return;
                case 7:
                    jsonGenerator.writeString("apple_oauth");
                    return;
                case 8:
                    jsonGenerator.writeString("first_party_token_exchange");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
