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
public final class RelinquishFolderMembershipError {

    /* renamed from: a */
    public Tag f17895a;

    /* renamed from: b */
    public SharedFolderAccessError f17896b;
    public static final RelinquishFolderMembershipError FOLDER_OWNER = new RelinquishFolderMembershipError().m11815b(Tag.FOLDER_OWNER);
    public static final RelinquishFolderMembershipError MOUNTED = new RelinquishFolderMembershipError().m11815b(Tag.MOUNTED);
    public static final RelinquishFolderMembershipError GROUP_ACCESS = new RelinquishFolderMembershipError().m11815b(Tag.GROUP_ACCESS);
    public static final RelinquishFolderMembershipError TEAM_FOLDER = new RelinquishFolderMembershipError().m11815b(Tag.TEAM_FOLDER);
    public static final RelinquishFolderMembershipError NO_PERMISSION = new RelinquishFolderMembershipError().m11815b(Tag.NO_PERMISSION);
    public static final RelinquishFolderMembershipError NO_EXPLICIT_ACCESS = new RelinquishFolderMembershipError().m11815b(Tag.NO_EXPLICIT_ACCESS);
    public static final RelinquishFolderMembershipError OTHER = new RelinquishFolderMembershipError().m11815b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        FOLDER_OWNER,
        MOUNTED,
        GROUP_ACCESS,
        TEAM_FOLDER,
        NO_PERMISSION,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.RelinquishFolderMembershipError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2910a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17897a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17897a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17897a[Tag.FOLDER_OWNER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17897a[Tag.MOUNTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17897a[Tag.GROUP_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17897a[Tag.TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17897a[Tag.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17897a[Tag.NO_EXPLICIT_ACCESS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17897a[Tag.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.RelinquishFolderMembershipError$b */
    /* loaded from: classes4.dex */
    public static class C2911b extends UnionSerializer<RelinquishFolderMembershipError> {

        /* renamed from: b */
        public static final C2911b f17898b = new C2911b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelinquishFolderMembershipError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelinquishFolderMembershipError relinquishFolderMembershipError;
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
                relinquishFolderMembershipError = RelinquishFolderMembershipError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else {
                relinquishFolderMembershipError = "folder_owner".equals(readTag) ? RelinquishFolderMembershipError.FOLDER_OWNER : "mounted".equals(readTag) ? RelinquishFolderMembershipError.MOUNTED : "group_access".equals(readTag) ? RelinquishFolderMembershipError.GROUP_ACCESS : "team_folder".equals(readTag) ? RelinquishFolderMembershipError.TEAM_FOLDER : "no_permission".equals(readTag) ? RelinquishFolderMembershipError.NO_PERMISSION : "no_explicit_access".equals(readTag) ? RelinquishFolderMembershipError.NO_EXPLICIT_ACCESS : RelinquishFolderMembershipError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return relinquishFolderMembershipError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelinquishFolderMembershipError relinquishFolderMembershipError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2910a.f17897a[relinquishFolderMembershipError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    SharedFolderAccessError.C2943b.f17965b.serialize(relinquishFolderMembershipError.f17896b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("folder_owner");
                    return;
                case 3:
                    jsonGenerator.writeString("mounted");
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
                    jsonGenerator.writeString("no_explicit_access");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static RelinquishFolderMembershipError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new RelinquishFolderMembershipError().m11816c(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final RelinquishFolderMembershipError m11815b(Tag tag) {
        RelinquishFolderMembershipError relinquishFolderMembershipError = new RelinquishFolderMembershipError();
        relinquishFolderMembershipError.f17895a = tag;
        return relinquishFolderMembershipError;
    }

    /* renamed from: c */
    public final RelinquishFolderMembershipError m11816c(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        RelinquishFolderMembershipError relinquishFolderMembershipError = new RelinquishFolderMembershipError();
        relinquishFolderMembershipError.f17895a = tag;
        relinquishFolderMembershipError.f17896b = sharedFolderAccessError;
        return relinquishFolderMembershipError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelinquishFolderMembershipError)) {
            return false;
        }
        RelinquishFolderMembershipError relinquishFolderMembershipError = (RelinquishFolderMembershipError) obj;
        Tag tag = this.f17895a;
        if (tag != relinquishFolderMembershipError.f17895a) {
            return false;
        }
        switch (C2910a.f17897a[tag.ordinal()]) {
            case 1:
                SharedFolderAccessError sharedFolderAccessError = this.f17896b;
                SharedFolderAccessError sharedFolderAccessError2 = relinquishFolderMembershipError.f17896b;
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
        if (this.f17895a == Tag.ACCESS_ERROR) {
            return this.f17896b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17895a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17895a, this.f17896b});
    }

    public boolean isAccessError() {
        return this.f17895a == Tag.ACCESS_ERROR;
    }

    public boolean isFolderOwner() {
        return this.f17895a == Tag.FOLDER_OWNER;
    }

    public boolean isGroupAccess() {
        return this.f17895a == Tag.GROUP_ACCESS;
    }

    public boolean isMounted() {
        return this.f17895a == Tag.MOUNTED;
    }

    public boolean isNoExplicitAccess() {
        return this.f17895a == Tag.NO_EXPLICIT_ACCESS;
    }

    public boolean isNoPermission() {
        return this.f17895a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f17895a == Tag.OTHER;
    }

    public boolean isTeamFolder() {
        return this.f17895a == Tag.TEAM_FOLDER;
    }

    public Tag tag() {
        return this.f17895a;
    }

    public String toString() {
        return C2911b.f17898b.serialize((C2911b) this, false);
    }

    public String toStringMultiline() {
        return C2911b.f17898b.serialize((C2911b) this, true);
    }
}
