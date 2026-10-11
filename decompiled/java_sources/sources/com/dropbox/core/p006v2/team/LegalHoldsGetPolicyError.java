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
public enum LegalHoldsGetPolicyError {
    UNKNOWN_LEGAL_HOLD_ERROR,
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    LEGAL_HOLD_POLICY_NOT_FOUND;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsGetPolicyError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3101a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18266a;

        static {
            int[] iArr = new int[LegalHoldsGetPolicyError.values().length];
            f18266a = iArr;
            try {
                iArr[LegalHoldsGetPolicyError.UNKNOWN_LEGAL_HOLD_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18266a[LegalHoldsGetPolicyError.INSUFFICIENT_PERMISSIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18266a[LegalHoldsGetPolicyError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18266a[LegalHoldsGetPolicyError.LEGAL_HOLD_POLICY_NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsGetPolicyError$b */
    /* loaded from: classes4.dex */
    public static class C3102b extends UnionSerializer<LegalHoldsGetPolicyError> {

        /* renamed from: b */
        public static final C3102b f18267b = new C3102b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsGetPolicyError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LegalHoldsGetPolicyError legalHoldsGetPolicyError;
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
            if ("unknown_legal_hold_error".equals(readTag)) {
                legalHoldsGetPolicyError = LegalHoldsGetPolicyError.UNKNOWN_LEGAL_HOLD_ERROR;
            } else if ("insufficient_permissions".equals(readTag)) {
                legalHoldsGetPolicyError = LegalHoldsGetPolicyError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                legalHoldsGetPolicyError = LegalHoldsGetPolicyError.OTHER;
            } else {
                if (!"legal_hold_policy_not_found".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                legalHoldsGetPolicyError = LegalHoldsGetPolicyError.LEGAL_HOLD_POLICY_NOT_FOUND;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return legalHoldsGetPolicyError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsGetPolicyError legalHoldsGetPolicyError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3101a.f18266a[legalHoldsGetPolicyError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("unknown_legal_hold_error");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("insufficient_permissions");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                if (i == 4) {
                    jsonGenerator.writeString("legal_hold_policy_not_found");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + legalHoldsGetPolicyError);
            }
        }
    }
}
