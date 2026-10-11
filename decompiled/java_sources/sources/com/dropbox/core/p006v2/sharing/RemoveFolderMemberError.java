package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFolderAccessError;
import com.dropbox.core.p006v2.sharing.SharedFolderMemberError;
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
public final class RemoveFolderMemberError {

    /* renamed from: a */
    public Tag f17905a;

    /* renamed from: b */
    public SharedFolderAccessError f17906b;

    /* renamed from: c */
    public SharedFolderMemberError f17907c;
    public static final RemoveFolderMemberError FOLDER_OWNER = new RemoveFolderMemberError().m11830c(Tag.FOLDER_OWNER);
    public static final RemoveFolderMemberError GROUP_ACCESS = new RemoveFolderMemberError().m11830c(Tag.GROUP_ACCESS);
    public static final RemoveFolderMemberError TEAM_FOLDER = new RemoveFolderMemberError().m11830c(Tag.TEAM_FOLDER);
    public static final RemoveFolderMemberError NO_PERMISSION = new RemoveFolderMemberError().m11830c(Tag.NO_PERMISSION);
    public static final RemoveFolderMemberError TOO_MANY_FILES = new RemoveFolderMemberError().m11830c(Tag.TOO_MANY_FILES);
    public static final RemoveFolderMemberError OTHER = new RemoveFolderMemberError().m11830c(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        MEMBER_ERROR,
        FOLDER_OWNER,
        GROUP_ACCESS,
        TEAM_FOLDER,
        NO_PERMISSION,
        TOO_MANY_FILES,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.RemoveFolderMemberError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2914a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17908a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17908a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17908a[Tag.MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17908a[Tag.FOLDER_OWNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17908a[Tag.GROUP_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17908a[Tag.TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17908a[Tag.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17908a[Tag.TOO_MANY_FILES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17908a[Tag.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.RemoveFolderMemberError$b */
    /* loaded from: classes4.dex */
    public static class C2915b extends UnionSerializer<RemoveFolderMemberError> {

        /* renamed from: b */
        public static final C2915b f17909b = new C2915b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RemoveFolderMemberError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RemoveFolderMemberError removeFolderMemberError;
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
                removeFolderMemberError = RemoveFolderMemberError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else if ("member_error".equals(readTag)) {
                StoneSerializer.expectField("member_error", jsonParser);
                removeFolderMemberError = RemoveFolderMemberError.memberError(SharedFolderMemberError.C2945b.f17969b.deserialize(jsonParser));
            } else {
                removeFolderMemberError = "folder_owner".equals(readTag) ? RemoveFolderMemberError.FOLDER_OWNER : "group_access".equals(readTag) ? RemoveFolderMemberError.GROUP_ACCESS : "team_folder".equals(readTag) ? RemoveFolderMemberError.TEAM_FOLDER : "no_permission".equals(readTag) ? RemoveFolderMemberError.NO_PERMISSION : "too_many_files".equals(readTag) ? RemoveFolderMemberError.TOO_MANY_FILES : RemoveFolderMemberError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return removeFolderMemberError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RemoveFolderMemberError removeFolderMemberError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2914a.f17908a[removeFolderMemberError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    SharedFolderAccessError.C2943b.f17965b.serialize(removeFolderMemberError.f17906b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("member_error", jsonGenerator);
                    jsonGenerator.writeFieldName("member_error");
                    SharedFolderMemberError.C2945b.f17969b.serialize(removeFolderMemberError.f17907c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("folder_owner");
                    return;
                case 4:
                    jsonGenerator.writeString("group_access");
                    return;
                case 5:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_files");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static RemoveFolderMemberError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new RemoveFolderMemberError().m11831d(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RemoveFolderMemberError memberError(SharedFolderMemberError sharedFolderMemberError) {
        if (sharedFolderMemberError != null) {
            return new RemoveFolderMemberError().m11832e(Tag.MEMBER_ERROR, sharedFolderMemberError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final RemoveFolderMemberError m11830c(Tag tag) {
        RemoveFolderMemberError removeFolderMemberError = new RemoveFolderMemberError();
        removeFolderMemberError.f17905a = tag;
        return removeFolderMemberError;
    }

    /* renamed from: d */
    public final RemoveFolderMemberError m11831d(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        RemoveFolderMemberError removeFolderMemberError = new RemoveFolderMemberError();
        removeFolderMemberError.f17905a = tag;
        removeFolderMemberError.f17906b = sharedFolderAccessError;
        return removeFolderMemberError;
    }

    /* renamed from: e */
    public final RemoveFolderMemberError m11832e(Tag tag, SharedFolderMemberError sharedFolderMemberError) {
        RemoveFolderMemberError removeFolderMemberError = new RemoveFolderMemberError();
        removeFolderMemberError.f17905a = tag;
        removeFolderMemberError.f17907c = sharedFolderMemberError;
        return removeFolderMemberError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RemoveFolderMemberError)) {
            return false;
        }
        RemoveFolderMemberError removeFolderMemberError = (RemoveFolderMemberError) obj;
        Tag tag = this.f17905a;
        if (tag != removeFolderMemberError.f17905a) {
            return false;
        }
        switch (C2914a.f17908a[tag.ordinal()]) {
            case 1:
                SharedFolderAccessError sharedFolderAccessError = this.f17906b;
                SharedFolderAccessError sharedFolderAccessError2 = removeFolderMemberError.f17906b;
                return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
            case 2:
                SharedFolderMemberError sharedFolderMemberError = this.f17907c;
                SharedFolderMemberError sharedFolderMemberError2 = removeFolderMemberError.f17907c;
                return sharedFolderMemberError == sharedFolderMemberError2 || sharedFolderMemberError.equals(sharedFolderMemberError2);
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
        if (this.f17905a == Tag.ACCESS_ERROR) {
            return this.f17906b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17905a.name());
    }

    public SharedFolderMemberError getMemberErrorValue() {
        if (this.f17905a == Tag.MEMBER_ERROR) {
            return this.f17907c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ERROR, but was Tag." + this.f17905a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17905a, this.f17906b, this.f17907c});
    }

    public boolean isAccessError() {
        return this.f17905a == Tag.ACCESS_ERROR;
    }

    public boolean isFolderOwner() {
        return this.f17905a == Tag.FOLDER_OWNER;
    }

    public boolean isGroupAccess() {
        return this.f17905a == Tag.GROUP_ACCESS;
    }

    public boolean isMemberError() {
        return this.f17905a == Tag.MEMBER_ERROR;
    }

    public boolean isNoPermission() {
        return this.f17905a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f17905a == Tag.OTHER;
    }

    public boolean isTeamFolder() {
        return this.f17905a == Tag.TEAM_FOLDER;
    }

    public boolean isTooManyFiles() {
        return this.f17905a == Tag.TOO_MANY_FILES;
    }

    public Tag tag() {
        return this.f17905a;
    }

    public String toString() {
        return C2915b.f17909b.serialize((C2915b) this, false);
    }

    public String toStringMultiline() {
        return C2915b.f17909b.serialize((C2915b) this, true);
    }
}
