package com.dropbox.core.p006v2.auth;

import com.dropbox.core.p006v2.auth.TokenScopeError;
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
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class AuthError {

    /* renamed from: a */
    public Tag f16808a;

    /* renamed from: b */
    public TokenScopeError f16809b;
    public static final AuthError INVALID_ACCESS_TOKEN = new AuthError().m10248b(Tag.INVALID_ACCESS_TOKEN);
    public static final AuthError INVALID_SELECT_USER = new AuthError().m10248b(Tag.INVALID_SELECT_USER);
    public static final AuthError INVALID_SELECT_ADMIN = new AuthError().m10248b(Tag.INVALID_SELECT_ADMIN);
    public static final AuthError USER_SUSPENDED = new AuthError().m10248b(Tag.USER_SUSPENDED);
    public static final AuthError EXPIRED_ACCESS_TOKEN = new AuthError().m10248b(Tag.EXPIRED_ACCESS_TOKEN);
    public static final AuthError ROUTE_ACCESS_DENIED = new AuthError().m10248b(Tag.ROUTE_ACCESS_DENIED);
    public static final AuthError OTHER = new AuthError().m10248b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<AuthError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public AuthError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AuthError authError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("invalid_access_token".equals(readTag)) {
                    authError = AuthError.INVALID_ACCESS_TOKEN;
                } else if ("invalid_select_user".equals(readTag)) {
                    authError = AuthError.INVALID_SELECT_USER;
                } else if ("invalid_select_admin".equals(readTag)) {
                    authError = AuthError.INVALID_SELECT_ADMIN;
                } else if ("user_suspended".equals(readTag)) {
                    authError = AuthError.USER_SUSPENDED;
                } else if ("expired_access_token".equals(readTag)) {
                    authError = AuthError.EXPIRED_ACCESS_TOKEN;
                } else if ("missing_scope".equals(readTag)) {
                    authError = AuthError.missingScope(TokenScopeError.Serializer.INSTANCE.deserialize(jsonParser, true));
                } else if ("route_access_denied".equals(readTag)) {
                    authError = AuthError.ROUTE_ACCESS_DENIED;
                } else {
                    authError = AuthError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return authError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AuthError authError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2375a.f16810a[authError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeString("invalid_access_token");
                    return;
                case 2:
                    jsonGenerator.writeString("invalid_select_user");
                    return;
                case 3:
                    jsonGenerator.writeString("invalid_select_admin");
                    return;
                case 4:
                    jsonGenerator.writeString("user_suspended");
                    return;
                case 5:
                    jsonGenerator.writeString("expired_access_token");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("missing_scope", jsonGenerator);
                    TokenScopeError.Serializer.INSTANCE.serialize(authError.f16809b, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeString("route_access_denied");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        INVALID_ACCESS_TOKEN,
        INVALID_SELECT_USER,
        INVALID_SELECT_ADMIN,
        USER_SUSPENDED,
        EXPIRED_ACCESS_TOKEN,
        MISSING_SCOPE,
        ROUTE_ACCESS_DENIED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.auth.AuthError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2375a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16810a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16810a = iArr;
            try {
                iArr[Tag.INVALID_ACCESS_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16810a[Tag.INVALID_SELECT_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16810a[Tag.INVALID_SELECT_ADMIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16810a[Tag.USER_SUSPENDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16810a[Tag.EXPIRED_ACCESS_TOKEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16810a[Tag.MISSING_SCOPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16810a[Tag.ROUTE_ACCESS_DENIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16810a[Tag.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static AuthError missingScope(TokenScopeError tokenScopeError) {
        if (tokenScopeError != null) {
            return new AuthError().m10249c(Tag.MISSING_SCOPE, tokenScopeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final AuthError m10248b(Tag tag) {
        AuthError authError = new AuthError();
        authError.f16808a = tag;
        return authError;
    }

    /* renamed from: c */
    public final AuthError m10249c(Tag tag, TokenScopeError tokenScopeError) {
        AuthError authError = new AuthError();
        authError.f16808a = tag;
        authError.f16809b = tokenScopeError;
        return authError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AuthError)) {
            return false;
        }
        AuthError authError = (AuthError) obj;
        Tag tag = this.f16808a;
        if (tag != authError.f16808a) {
            return false;
        }
        switch (C2375a.f16810a[tag.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                TokenScopeError tokenScopeError = this.f16809b;
                TokenScopeError tokenScopeError2 = authError.f16809b;
                return tokenScopeError == tokenScopeError2 || tokenScopeError.equals(tokenScopeError2);
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public TokenScopeError getMissingScopeValue() {
        if (this.f16808a == Tag.MISSING_SCOPE) {
            return this.f16809b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MISSING_SCOPE, but was Tag." + this.f16808a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16808a, this.f16809b});
    }

    public boolean isExpiredAccessToken() {
        return this.f16808a == Tag.EXPIRED_ACCESS_TOKEN;
    }

    public boolean isInvalidAccessToken() {
        return this.f16808a == Tag.INVALID_ACCESS_TOKEN;
    }

    public boolean isInvalidSelectAdmin() {
        return this.f16808a == Tag.INVALID_SELECT_ADMIN;
    }

    public boolean isInvalidSelectUser() {
        return this.f16808a == Tag.INVALID_SELECT_USER;
    }

    public boolean isMissingScope() {
        return this.f16808a == Tag.MISSING_SCOPE;
    }

    public boolean isOther() {
        return this.f16808a == Tag.OTHER;
    }

    public boolean isRouteAccessDenied() {
        return this.f16808a == Tag.ROUTE_ACCESS_DENIED;
    }

    public boolean isUserSuspended() {
        return this.f16808a == Tag.USER_SUSPENDED;
    }

    public Tag tag() {
        return this.f16808a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
