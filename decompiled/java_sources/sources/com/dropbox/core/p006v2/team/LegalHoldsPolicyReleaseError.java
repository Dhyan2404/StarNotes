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
public enum LegalHoldsPolicyReleaseError {
    UNKNOWN_LEGAL_HOLD_ERROR,
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION,
    LEGAL_HOLD_ALREADY_RELEASING,
    LEGAL_HOLD_POLICY_NOT_FOUND;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyReleaseError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3112a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18282a;

        static {
            int[] iArr = new int[LegalHoldsPolicyReleaseError.values().length];
            f18282a = iArr;
            try {
                iArr[LegalHoldsPolicyReleaseError.UNKNOWN_LEGAL_HOLD_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18282a[LegalHoldsPolicyReleaseError.INSUFFICIENT_PERMISSIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18282a[LegalHoldsPolicyReleaseError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18282a[LegalHoldsPolicyReleaseError.LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18282a[LegalHoldsPolicyReleaseError.LEGAL_HOLD_ALREADY_RELEASING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18282a[LegalHoldsPolicyReleaseError.LEGAL_HOLD_POLICY_NOT_FOUND.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyReleaseError$b */
    /* loaded from: classes4.dex */
    public static class C3113b extends UnionSerializer<LegalHoldsPolicyReleaseError> {

        /* renamed from: b */
        public static final C3113b f18283b = new C3113b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsPolicyReleaseError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LegalHoldsPolicyReleaseError legalHoldsPolicyReleaseError;
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
                legalHoldsPolicyReleaseError = LegalHoldsPolicyReleaseError.UNKNOWN_LEGAL_HOLD_ERROR;
            } else if ("insufficient_permissions".equals(readTag)) {
                legalHoldsPolicyReleaseError = LegalHoldsPolicyReleaseError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                legalHoldsPolicyReleaseError = LegalHoldsPolicyReleaseError.OTHER;
            } else if ("legal_hold_performing_another_operation".equals(readTag)) {
                legalHoldsPolicyReleaseError = LegalHoldsPolicyReleaseError.LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION;
            } else if ("legal_hold_already_releasing".equals(readTag)) {
                legalHoldsPolicyReleaseError = LegalHoldsPolicyReleaseError.LEGAL_HOLD_ALREADY_RELEASING;
            } else {
                if (!"legal_hold_policy_not_found".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                legalHoldsPolicyReleaseError = LegalHoldsPolicyReleaseError.LEGAL_HOLD_POLICY_NOT_FOUND;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return legalHoldsPolicyReleaseError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsPolicyReleaseError legalHoldsPolicyReleaseError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3112a.f18282a[legalHoldsPolicyReleaseError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("unknown_legal_hold_error");
                    return;
                case 2:
                    jsonGenerator.writeString("insufficient_permissions");
                    return;
                case 3:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 4:
                    jsonGenerator.writeString("legal_hold_performing_another_operation");
                    return;
                case 5:
                    jsonGenerator.writeString("legal_hold_already_releasing");
                    return;
                case 6:
                    jsonGenerator.writeString("legal_hold_policy_not_found");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + legalHoldsPolicyReleaseError);
            }
        }
    }
}
