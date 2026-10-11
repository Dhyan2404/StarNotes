package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFolderAccessError;
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
public final class TransferFolderError {

    /* renamed from: a */
    public Tag f17993a;

    /* renamed from: b */
    public SharedFolderAccessError f17994b;
    public static final TransferFolderError INVALID_DROPBOX_ID = new TransferFolderError().m11938b(Tag.INVALID_DROPBOX_ID);
    public static final TransferFolderError NEW_OWNER_NOT_A_MEMBER = new TransferFolderError().m11938b(Tag.NEW_OWNER_NOT_A_MEMBER);
    public static final TransferFolderError NEW_OWNER_UNMOUNTED = new TransferFolderError().m11938b(Tag.NEW_OWNER_UNMOUNTED);
    public static final TransferFolderError NEW_OWNER_EMAIL_UNVERIFIED = new TransferFolderError().m11938b(Tag.NEW_OWNER_EMAIL_UNVERIFIED);
    public static final TransferFolderError TEAM_FOLDER = new TransferFolderError().m11938b(Tag.TEAM_FOLDER);
    public static final TransferFolderError NO_PERMISSION = new TransferFolderError().m11938b(Tag.NO_PERMISSION);
    public static final TransferFolderError OTHER = new TransferFolderError().m11938b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        INVALID_DROPBOX_ID,
        NEW_OWNER_NOT_A_MEMBER,
        NEW_OWNER_UNMOUNTED,
        NEW_OWNER_EMAIL_UNVERIFIED,
        TEAM_FOLDER,
        NO_PERMISSION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.TransferFolderError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2965a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17995a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17995a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17995a[Tag.INVALID_DROPBOX_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17995a[Tag.NEW_OWNER_NOT_A_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17995a[Tag.NEW_OWNER_UNMOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17995a[Tag.NEW_OWNER_EMAIL_UNVERIFIED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17995a[Tag.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17995a[Tag.NO_PERMISSION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17995a[Tag.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.TransferFolderError$b */
    /* loaded from: classes4.dex */
    public static class C2966b extends UnionSerializer<TransferFolderError> {

        /* renamed from: b */
        public static final C2966b f17996b = new C2966b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TransferFolderError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TransferFolderError transferFolderError;
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
            if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                transferFolderError = TransferFolderError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else {
                transferFolderError = "invalid_dropbox_id".equals(readTag) ? TransferFolderError.INVALID_DROPBOX_ID : "new_owner_not_a_member".equals(readTag) ? TransferFolderError.NEW_OWNER_NOT_A_MEMBER : "new_owner_unmounted".equals(readTag) ? TransferFolderError.NEW_OWNER_UNMOUNTED : "new_owner_email_unverified".equals(readTag) ? TransferFolderError.NEW_OWNER_EMAIL_UNVERIFIED : "team_folder".equals(readTag) ? TransferFolderError.TEAM_FOLDER : "no_permission".equals(readTag) ? TransferFolderError.NO_PERMISSION : TransferFolderError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return transferFolderError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TransferFolderError transferFolderError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2965a.f17995a[transferFolderError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    SharedFolderAccessError.C2943b.f17965b.serialize(transferFolderError.f17994b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("invalid_dropbox_id");
                    return;
                case 3:
                    jsonGenerator.writeString("new_owner_not_a_member");
                    return;
                case 4:
                    jsonGenerator.writeString("new_owner_unmounted");
                    return;
                case 5:
                    jsonGenerator.writeString("new_owner_email_unverified");
                    return;
                case 6:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 7:
                    jsonGenerator.writeString("no_permission");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static TransferFolderError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new TransferFolderError().m11939c(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final TransferFolderError m11938b(Tag tag) {
        TransferFolderError transferFolderError = new TransferFolderError();
        transferFolderError.f17993a = tag;
        return transferFolderError;
    }

    /* renamed from: c */
    public final TransferFolderError m11939c(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        TransferFolderError transferFolderError = new TransferFolderError();
        transferFolderError.f17993a = tag;
        transferFolderError.f17994b = sharedFolderAccessError;
        return transferFolderError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TransferFolderError)) {
            return false;
        }
        TransferFolderError transferFolderError = (TransferFolderError) obj;
        Tag tag = this.f17993a;
        if (tag != transferFolderError.f17993a) {
            return false;
        }
        switch (C2965a.f17995a[tag.ordinal()]) {
            case 1:
                SharedFolderAccessError sharedFolderAccessError = this.f17994b;
                SharedFolderAccessError sharedFolderAccessError2 = transferFolderError.f17994b;
                return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f17993a == Tag.ACCESS_ERROR) {
            return this.f17994b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17993a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17993a, this.f17994b});
    }

    public boolean isAccessError() {
        return this.f17993a == Tag.ACCESS_ERROR;
    }

    public boolean isInvalidDropboxId() {
        return this.f17993a == Tag.INVALID_DROPBOX_ID;
    }

    public boolean isNewOwnerEmailUnverified() {
        return this.f17993a == Tag.NEW_OWNER_EMAIL_UNVERIFIED;
    }

    public boolean isNewOwnerNotAMember() {
        return this.f17993a == Tag.NEW_OWNER_NOT_A_MEMBER;
    }

    public boolean isNewOwnerUnmounted() {
        return this.f17993a == Tag.NEW_OWNER_UNMOUNTED;
    }

    public boolean isNoPermission() {
        return this.f17993a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f17993a == Tag.OTHER;
    }

    public boolean isTeamFolder() {
        return this.f17993a == Tag.TEAM_FOLDER;
    }

    public Tag tag() {
        return this.f17993a;
    }

    public String toString() {
        return C2966b.f17996b.serialize((C2966b) this, false);
    }

    public String toStringMultiline() {
        return C2966b.f17996b.serialize((C2966b) this, true);
    }
}
