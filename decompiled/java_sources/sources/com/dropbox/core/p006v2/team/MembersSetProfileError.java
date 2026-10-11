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
public enum MembersSetProfileError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE,
    NO_NEW_DATA_SPECIFIED,
    EMAIL_RESERVED_FOR_OTHER_USER,
    EXTERNAL_ID_USED_BY_OTHER_USER,
    SET_PROFILE_DISALLOWED,
    PARAM_CANNOT_BE_EMPTY,
    PERSISTENT_ID_DISABLED,
    PERSISTENT_ID_USED_BY_OTHER_USER,
    DIRECTORY_RESTRICTED_OFF,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.MembersSetProfileError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3173a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18402a;

        static {
            int[] iArr = new int[MembersSetProfileError.values().length];
            f18402a = iArr;
            try {
                iArr[MembersSetProfileError.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18402a[MembersSetProfileError.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18402a[MembersSetProfileError.EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18402a[MembersSetProfileError.NO_NEW_DATA_SPECIFIED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18402a[MembersSetProfileError.EMAIL_RESERVED_FOR_OTHER_USER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18402a[MembersSetProfileError.EXTERNAL_ID_USED_BY_OTHER_USER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18402a[MembersSetProfileError.SET_PROFILE_DISALLOWED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18402a[MembersSetProfileError.PARAM_CANNOT_BE_EMPTY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18402a[MembersSetProfileError.PERSISTENT_ID_DISABLED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18402a[MembersSetProfileError.PERSISTENT_ID_USED_BY_OTHER_USER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f18402a[MembersSetProfileError.DIRECTORY_RESTRICTED_OFF.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersSetProfileError$b */
    /* loaded from: classes4.dex */
    public static class C3174b extends UnionSerializer<MembersSetProfileError> {

        /* renamed from: b */
        public static final C3174b f18403b = new C3174b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersSetProfileError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MembersSetProfileError membersSetProfileError = "user_not_found".equals(readTag) ? MembersSetProfileError.USER_NOT_FOUND : "user_not_in_team".equals(readTag) ? MembersSetProfileError.USER_NOT_IN_TEAM : "external_id_and_new_external_id_unsafe".equals(readTag) ? MembersSetProfileError.EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE : "no_new_data_specified".equals(readTag) ? MembersSetProfileError.NO_NEW_DATA_SPECIFIED : "email_reserved_for_other_user".equals(readTag) ? MembersSetProfileError.EMAIL_RESERVED_FOR_OTHER_USER : "external_id_used_by_other_user".equals(readTag) ? MembersSetProfileError.EXTERNAL_ID_USED_BY_OTHER_USER : "set_profile_disallowed".equals(readTag) ? MembersSetProfileError.SET_PROFILE_DISALLOWED : "param_cannot_be_empty".equals(readTag) ? MembersSetProfileError.PARAM_CANNOT_BE_EMPTY : "persistent_id_disabled".equals(readTag) ? MembersSetProfileError.PERSISTENT_ID_DISABLED : "persistent_id_used_by_other_user".equals(readTag) ? MembersSetProfileError.PERSISTENT_ID_USED_BY_OTHER_USER : "directory_restricted_off".equals(readTag) ? MembersSetProfileError.DIRECTORY_RESTRICTED_OFF : MembersSetProfileError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersSetProfileError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersSetProfileError membersSetProfileError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3173a.f18402a[membersSetProfileError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("user_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString("user_not_in_team");
                    return;
                case 3:
                    jsonGenerator.writeString("external_id_and_new_external_id_unsafe");
                    return;
                case 4:
                    jsonGenerator.writeString("no_new_data_specified");
                    return;
                case 5:
                    jsonGenerator.writeString("email_reserved_for_other_user");
                    return;
                case 6:
                    jsonGenerator.writeString("external_id_used_by_other_user");
                    return;
                case 7:
                    jsonGenerator.writeString("set_profile_disallowed");
                    return;
                case 8:
                    jsonGenerator.writeString("param_cannot_be_empty");
                    return;
                case 9:
                    jsonGenerator.writeString("persistent_id_disabled");
                    return;
                case 10:
                    jsonGenerator.writeString("persistent_id_used_by_other_user");
                    return;
                case 11:
                    jsonGenerator.writeString("directory_restricted_off");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
