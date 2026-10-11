package com.dropbox.core.p006v2.team;

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
public enum TokenGetAuthenticatedAdminError {
    MAPPING_NOT_FOUND,
    ADMIN_NOT_ACTIVE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.TokenGetAuthenticatedAdminError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3257a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18547a;

        static {
            int[] iArr = new int[TokenGetAuthenticatedAdminError.values().length];
            f18547a = iArr;
            try {
                iArr[TokenGetAuthenticatedAdminError.MAPPING_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18547a[TokenGetAuthenticatedAdminError.ADMIN_NOT_ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TokenGetAuthenticatedAdminError$b */
    /* loaded from: classes4.dex */
    public static class C3258b extends UnionSerializer<TokenGetAuthenticatedAdminError> {

        /* renamed from: b */
        public static final C3258b f18548b = new C3258b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TokenGetAuthenticatedAdminError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TokenGetAuthenticatedAdminError tokenGetAuthenticatedAdminError = "mapping_not_found".equals(readTag) ? TokenGetAuthenticatedAdminError.MAPPING_NOT_FOUND : "admin_not_active".equals(readTag) ? TokenGetAuthenticatedAdminError.ADMIN_NOT_ACTIVE : TokenGetAuthenticatedAdminError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return tokenGetAuthenticatedAdminError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TokenGetAuthenticatedAdminError tokenGetAuthenticatedAdminError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3257a.f18547a[tokenGetAuthenticatedAdminError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("mapping_not_found");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("admin_not_active");
            }
        }
    }
}
