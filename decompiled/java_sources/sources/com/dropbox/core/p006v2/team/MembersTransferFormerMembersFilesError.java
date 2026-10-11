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
public enum MembersTransferFormerMembersFilesError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    OTHER,
    REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER,
    REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER,
    TRANSFER_DEST_USER_NOT_FOUND,
    TRANSFER_DEST_USER_NOT_IN_TEAM,
    TRANSFER_ADMIN_USER_NOT_IN_TEAM,
    TRANSFER_ADMIN_USER_NOT_FOUND,
    UNSPECIFIED_TRANSFER_ADMIN_ID,
    TRANSFER_ADMIN_IS_NOT_ADMIN,
    RECIPIENT_NOT_VERIFIED,
    USER_DATA_IS_BEING_TRANSFERRED,
    USER_NOT_REMOVED,
    USER_DATA_CANNOT_BE_TRANSFERRED,
    USER_DATA_ALREADY_TRANSFERRED;

    /* renamed from: com.dropbox.core.v2.team.MembersTransferFormerMembersFilesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3179a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18410a;

        static {
            int[] iArr = new int[MembersTransferFormerMembersFilesError.values().length];
            f18410a = iArr;
            try {
                iArr[MembersTransferFormerMembersFilesError.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.TRANSFER_DEST_USER_NOT_FOUND.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.TRANSFER_DEST_USER_NOT_IN_TEAM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.TRANSFER_ADMIN_USER_NOT_IN_TEAM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.TRANSFER_ADMIN_USER_NOT_FOUND.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.UNSPECIFIED_TRANSFER_ADMIN_ID.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.TRANSFER_ADMIN_IS_NOT_ADMIN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.RECIPIENT_NOT_VERIFIED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.USER_DATA_IS_BEING_TRANSFERRED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.USER_NOT_REMOVED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.USER_DATA_CANNOT_BE_TRANSFERRED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f18410a[MembersTransferFormerMembersFilesError.USER_DATA_ALREADY_TRANSFERRED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersTransferFormerMembersFilesError$b */
    /* loaded from: classes4.dex */
    public static class C3180b extends UnionSerializer<MembersTransferFormerMembersFilesError> {

        /* renamed from: b */
        public static final C3180b f18411b = new C3180b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersTransferFormerMembersFilesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MembersTransferFormerMembersFilesError membersTransferFormerMembersFilesError;
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
            if ("user_not_found".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.USER_NOT_IN_TEAM;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.OTHER;
            } else if ("removed_and_transfer_dest_should_differ".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER;
            } else if ("removed_and_transfer_admin_should_differ".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER;
            } else if ("transfer_dest_user_not_found".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.TRANSFER_DEST_USER_NOT_FOUND;
            } else if ("transfer_dest_user_not_in_team".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.TRANSFER_DEST_USER_NOT_IN_TEAM;
            } else if ("transfer_admin_user_not_in_team".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.TRANSFER_ADMIN_USER_NOT_IN_TEAM;
            } else if ("transfer_admin_user_not_found".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.TRANSFER_ADMIN_USER_NOT_FOUND;
            } else if ("unspecified_transfer_admin_id".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.UNSPECIFIED_TRANSFER_ADMIN_ID;
            } else if ("transfer_admin_is_not_admin".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.TRANSFER_ADMIN_IS_NOT_ADMIN;
            } else if ("recipient_not_verified".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.RECIPIENT_NOT_VERIFIED;
            } else if ("user_data_is_being_transferred".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.USER_DATA_IS_BEING_TRANSFERRED;
            } else if ("user_not_removed".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.USER_NOT_REMOVED;
            } else if ("user_data_cannot_be_transferred".equals(readTag)) {
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.USER_DATA_CANNOT_BE_TRANSFERRED;
            } else {
                if (!"user_data_already_transferred".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                membersTransferFormerMembersFilesError = MembersTransferFormerMembersFilesError.USER_DATA_ALREADY_TRANSFERRED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersTransferFormerMembersFilesError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersTransferFormerMembersFilesError membersTransferFormerMembersFilesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3179a.f18410a[membersTransferFormerMembersFilesError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("user_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString("user_not_in_team");
                    return;
                case 3:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 4:
                    jsonGenerator.writeString("removed_and_transfer_dest_should_differ");
                    return;
                case 5:
                    jsonGenerator.writeString("removed_and_transfer_admin_should_differ");
                    return;
                case 6:
                    jsonGenerator.writeString("transfer_dest_user_not_found");
                    return;
                case 7:
                    jsonGenerator.writeString("transfer_dest_user_not_in_team");
                    return;
                case 8:
                    jsonGenerator.writeString("transfer_admin_user_not_in_team");
                    return;
                case 9:
                    jsonGenerator.writeString("transfer_admin_user_not_found");
                    return;
                case 10:
                    jsonGenerator.writeString("unspecified_transfer_admin_id");
                    return;
                case 11:
                    jsonGenerator.writeString("transfer_admin_is_not_admin");
                    return;
                case 12:
                    jsonGenerator.writeString("recipient_not_verified");
                    return;
                case 13:
                    jsonGenerator.writeString("user_data_is_being_transferred");
                    return;
                case 14:
                    jsonGenerator.writeString("user_not_removed");
                    return;
                case 15:
                    jsonGenerator.writeString("user_data_cannot_be_transferred");
                    return;
                case 16:
                    jsonGenerator.writeString("user_data_already_transferred");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + membersTransferFormerMembersFilesError);
            }
        }
    }
}
