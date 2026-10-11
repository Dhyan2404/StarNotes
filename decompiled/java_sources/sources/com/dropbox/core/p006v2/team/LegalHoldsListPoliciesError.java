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
public enum LegalHoldsListPoliciesError {
    UNKNOWN_LEGAL_HOLD_ERROR,
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    TRANSIENT_ERROR;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsListPoliciesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3106a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18271a;

        static {
            int[] iArr = new int[LegalHoldsListPoliciesError.values().length];
            f18271a = iArr;
            try {
                iArr[LegalHoldsListPoliciesError.UNKNOWN_LEGAL_HOLD_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18271a[LegalHoldsListPoliciesError.INSUFFICIENT_PERMISSIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18271a[LegalHoldsListPoliciesError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18271a[LegalHoldsListPoliciesError.TRANSIENT_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsListPoliciesError$b */
    /* loaded from: classes4.dex */
    public static class C3107b extends UnionSerializer<LegalHoldsListPoliciesError> {

        /* renamed from: b */
        public static final C3107b f18272b = new C3107b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsListPoliciesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LegalHoldsListPoliciesError legalHoldsListPoliciesError;
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
                legalHoldsListPoliciesError = LegalHoldsListPoliciesError.UNKNOWN_LEGAL_HOLD_ERROR;
            } else if ("insufficient_permissions".equals(readTag)) {
                legalHoldsListPoliciesError = LegalHoldsListPoliciesError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                legalHoldsListPoliciesError = LegalHoldsListPoliciesError.OTHER;
            } else {
                if (!"transient_error".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                legalHoldsListPoliciesError = LegalHoldsListPoliciesError.TRANSIENT_ERROR;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return legalHoldsListPoliciesError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsListPoliciesError legalHoldsListPoliciesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3106a.f18271a[legalHoldsListPoliciesError.ordinal()];
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
                    jsonGenerator.writeString("transient_error");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + legalHoldsListPoliciesError);
            }
        }
    }
}
