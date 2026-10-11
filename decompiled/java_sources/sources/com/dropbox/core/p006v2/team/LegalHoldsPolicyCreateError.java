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
public enum LegalHoldsPolicyCreateError {
    UNKNOWN_LEGAL_HOLD_ERROR,
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    START_DATE_IS_LATER_THAN_END_DATE,
    EMPTY_MEMBERS_LIST,
    INVALID_MEMBERS,
    NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION,
    TRANSIENT_ERROR,
    NAME_MUST_BE_UNIQUE,
    TEAM_EXCEEDED_LEGAL_HOLD_QUOTA;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyCreateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3110a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18280a;

        static {
            int[] iArr = new int[LegalHoldsPolicyCreateError.values().length];
            f18280a = iArr;
            try {
                iArr[LegalHoldsPolicyCreateError.UNKNOWN_LEGAL_HOLD_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.INSUFFICIENT_PERMISSIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.START_DATE_IS_LATER_THAN_END_DATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.EMPTY_MEMBERS_LIST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.INVALID_MEMBERS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.TRANSIENT_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.NAME_MUST_BE_UNIQUE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18280a[LegalHoldsPolicyCreateError.TEAM_EXCEEDED_LEGAL_HOLD_QUOTA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyCreateError$b */
    /* loaded from: classes4.dex */
    public static class C3111b extends UnionSerializer<LegalHoldsPolicyCreateError> {

        /* renamed from: b */
        public static final C3111b f18281b = new C3111b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsPolicyCreateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LegalHoldsPolicyCreateError legalHoldsPolicyCreateError;
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
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.UNKNOWN_LEGAL_HOLD_ERROR;
            } else if ("insufficient_permissions".equals(readTag)) {
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.OTHER;
            } else if ("start_date_is_later_than_end_date".equals(readTag)) {
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.START_DATE_IS_LATER_THAN_END_DATE;
            } else if ("empty_members_list".equals(readTag)) {
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.EMPTY_MEMBERS_LIST;
            } else if ("invalid_members".equals(readTag)) {
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.INVALID_MEMBERS;
            } else if ("number_of_users_on_hold_is_greater_than_hold_limitation".equals(readTag)) {
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION;
            } else if ("transient_error".equals(readTag)) {
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.TRANSIENT_ERROR;
            } else if ("name_must_be_unique".equals(readTag)) {
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.NAME_MUST_BE_UNIQUE;
            } else {
                if (!"team_exceeded_legal_hold_quota".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                legalHoldsPolicyCreateError = LegalHoldsPolicyCreateError.TEAM_EXCEEDED_LEGAL_HOLD_QUOTA;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return legalHoldsPolicyCreateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsPolicyCreateError legalHoldsPolicyCreateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3110a.f18280a[legalHoldsPolicyCreateError.ordinal()]) {
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
                    jsonGenerator.writeString("start_date_is_later_than_end_date");
                    return;
                case 5:
                    jsonGenerator.writeString("empty_members_list");
                    return;
                case 6:
                    jsonGenerator.writeString("invalid_members");
                    return;
                case 7:
                    jsonGenerator.writeString("number_of_users_on_hold_is_greater_than_hold_limitation");
                    return;
                case 8:
                    jsonGenerator.writeString("transient_error");
                    return;
                case 9:
                    jsonGenerator.writeString("name_must_be_unique");
                    return;
                case 10:
                    jsonGenerator.writeString("team_exceeded_legal_hold_quota");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + legalHoldsPolicyCreateError);
            }
        }
    }
}
