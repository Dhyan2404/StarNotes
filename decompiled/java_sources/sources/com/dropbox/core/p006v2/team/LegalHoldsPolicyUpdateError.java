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
public enum LegalHoldsPolicyUpdateError {
    UNKNOWN_LEGAL_HOLD_ERROR,
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    INACTIVE_LEGAL_HOLD,
    LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION,
    INVALID_MEMBERS,
    NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION,
    EMPTY_MEMBERS_LIST,
    NAME_MUST_BE_UNIQUE,
    LEGAL_HOLD_POLICY_NOT_FOUND;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyUpdateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3115a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18290a;

        static {
            int[] iArr = new int[LegalHoldsPolicyUpdateError.values().length];
            f18290a = iArr;
            try {
                iArr[LegalHoldsPolicyUpdateError.UNKNOWN_LEGAL_HOLD_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.INSUFFICIENT_PERMISSIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.INACTIVE_LEGAL_HOLD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.INVALID_MEMBERS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.EMPTY_MEMBERS_LIST.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.NAME_MUST_BE_UNIQUE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18290a[LegalHoldsPolicyUpdateError.LEGAL_HOLD_POLICY_NOT_FOUND.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyUpdateError$b */
    /* loaded from: classes4.dex */
    public static class C3116b extends UnionSerializer<LegalHoldsPolicyUpdateError> {

        /* renamed from: b */
        public static final C3116b f18291b = new C3116b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsPolicyUpdateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LegalHoldsPolicyUpdateError legalHoldsPolicyUpdateError;
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
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.UNKNOWN_LEGAL_HOLD_ERROR;
            } else if ("insufficient_permissions".equals(readTag)) {
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.OTHER;
            } else if ("inactive_legal_hold".equals(readTag)) {
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.INACTIVE_LEGAL_HOLD;
            } else if ("legal_hold_performing_another_operation".equals(readTag)) {
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION;
            } else if ("invalid_members".equals(readTag)) {
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.INVALID_MEMBERS;
            } else if ("number_of_users_on_hold_is_greater_than_hold_limitation".equals(readTag)) {
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION;
            } else if ("empty_members_list".equals(readTag)) {
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.EMPTY_MEMBERS_LIST;
            } else if ("name_must_be_unique".equals(readTag)) {
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.NAME_MUST_BE_UNIQUE;
            } else {
                if (!"legal_hold_policy_not_found".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                legalHoldsPolicyUpdateError = LegalHoldsPolicyUpdateError.LEGAL_HOLD_POLICY_NOT_FOUND;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return legalHoldsPolicyUpdateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsPolicyUpdateError legalHoldsPolicyUpdateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3115a.f18290a[legalHoldsPolicyUpdateError.ordinal()]) {
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
                    jsonGenerator.writeString("inactive_legal_hold");
                    return;
                case 5:
                    jsonGenerator.writeString("legal_hold_performing_another_operation");
                    return;
                case 6:
                    jsonGenerator.writeString("invalid_members");
                    return;
                case 7:
                    jsonGenerator.writeString("number_of_users_on_hold_is_greater_than_hold_limitation");
                    return;
                case 8:
                    jsonGenerator.writeString("empty_members_list");
                    return;
                case 9:
                    jsonGenerator.writeString("name_must_be_unique");
                    return;
                case 10:
                    jsonGenerator.writeString("legal_hold_policy_not_found");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + legalHoldsPolicyUpdateError);
            }
        }
    }
}
