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
public final class UpdateFolderPolicyError {

    /* renamed from: a */
    public Tag f18026a;

    /* renamed from: b */
    public SharedFolderAccessError f18027b;
    public static final UpdateFolderPolicyError NOT_ON_TEAM = new UpdateFolderPolicyError().m11980b(Tag.NOT_ON_TEAM);
    public static final UpdateFolderPolicyError TEAM_POLICY_DISALLOWS_MEMBER_POLICY = new UpdateFolderPolicyError().m11980b(Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);
    public static final UpdateFolderPolicyError DISALLOWED_SHARED_LINK_POLICY = new UpdateFolderPolicyError().m11980b(Tag.DISALLOWED_SHARED_LINK_POLICY);
    public static final UpdateFolderPolicyError NO_PERMISSION = new UpdateFolderPolicyError().m11980b(Tag.NO_PERMISSION);
    public static final UpdateFolderPolicyError TEAM_FOLDER = new UpdateFolderPolicyError().m11980b(Tag.TEAM_FOLDER);
    public static final UpdateFolderPolicyError OTHER = new UpdateFolderPolicyError().m11980b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        NOT_ON_TEAM,
        TEAM_POLICY_DISALLOWS_MEMBER_POLICY,
        DISALLOWED_SHARED_LINK_POLICY,
        NO_PERMISSION,
        TEAM_FOLDER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.UpdateFolderPolicyError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2976a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18028a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18028a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18028a[Tag.NOT_ON_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18028a[Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18028a[Tag.DISALLOWED_SHARED_LINK_POLICY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18028a[Tag.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18028a[Tag.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18028a[Tag.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.UpdateFolderPolicyError$b */
    /* loaded from: classes4.dex */
    public static class C2977b extends UnionSerializer<UpdateFolderPolicyError> {

        /* renamed from: b */
        public static final C2977b f18029b = new C2977b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UpdateFolderPolicyError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UpdateFolderPolicyError updateFolderPolicyError;
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
                updateFolderPolicyError = UpdateFolderPolicyError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else {
                updateFolderPolicyError = "not_on_team".equals(readTag) ? UpdateFolderPolicyError.NOT_ON_TEAM : "team_policy_disallows_member_policy".equals(readTag) ? UpdateFolderPolicyError.TEAM_POLICY_DISALLOWS_MEMBER_POLICY : "disallowed_shared_link_policy".equals(readTag) ? UpdateFolderPolicyError.DISALLOWED_SHARED_LINK_POLICY : "no_permission".equals(readTag) ? UpdateFolderPolicyError.NO_PERMISSION : "team_folder".equals(readTag) ? UpdateFolderPolicyError.TEAM_FOLDER : UpdateFolderPolicyError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return updateFolderPolicyError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UpdateFolderPolicyError updateFolderPolicyError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2976a.f18028a[updateFolderPolicyError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    SharedFolderAccessError.C2943b.f17965b.serialize(updateFolderPolicyError.f18027b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("not_on_team");
                    return;
                case 3:
                    jsonGenerator.writeString("team_policy_disallows_member_policy");
                    return;
                case 4:
                    jsonGenerator.writeString("disallowed_shared_link_policy");
                    return;
                case 5:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 6:
                    jsonGenerator.writeString("team_folder");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static UpdateFolderPolicyError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new UpdateFolderPolicyError().m11981c(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final UpdateFolderPolicyError m11980b(Tag tag) {
        UpdateFolderPolicyError updateFolderPolicyError = new UpdateFolderPolicyError();
        updateFolderPolicyError.f18026a = tag;
        return updateFolderPolicyError;
    }

    /* renamed from: c */
    public final UpdateFolderPolicyError m11981c(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        UpdateFolderPolicyError updateFolderPolicyError = new UpdateFolderPolicyError();
        updateFolderPolicyError.f18026a = tag;
        updateFolderPolicyError.f18027b = sharedFolderAccessError;
        return updateFolderPolicyError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateFolderPolicyError)) {
            return false;
        }
        UpdateFolderPolicyError updateFolderPolicyError = (UpdateFolderPolicyError) obj;
        Tag tag = this.f18026a;
        if (tag != updateFolderPolicyError.f18026a) {
            return false;
        }
        switch (C2976a.f18028a[tag.ordinal()]) {
            case 1:
                SharedFolderAccessError sharedFolderAccessError = this.f18027b;
                SharedFolderAccessError sharedFolderAccessError2 = updateFolderPolicyError.f18027b;
                return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f18026a == Tag.ACCESS_ERROR) {
            return this.f18027b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18026a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18026a, this.f18027b});
    }

    public boolean isAccessError() {
        return this.f18026a == Tag.ACCESS_ERROR;
    }

    public boolean isDisallowedSharedLinkPolicy() {
        return this.f18026a == Tag.DISALLOWED_SHARED_LINK_POLICY;
    }

    public boolean isNoPermission() {
        return this.f18026a == Tag.NO_PERMISSION;
    }

    public boolean isNotOnTeam() {
        return this.f18026a == Tag.NOT_ON_TEAM;
    }

    public boolean isOther() {
        return this.f18026a == Tag.OTHER;
    }

    public boolean isTeamFolder() {
        return this.f18026a == Tag.TEAM_FOLDER;
    }

    public boolean isTeamPolicyDisallowsMemberPolicy() {
        return this.f18026a == Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
    }

    public Tag tag() {
        return this.f18026a;
    }

    public String toString() {
        return C2977b.f18029b.serialize((C2977b) this, false);
    }

    public String toStringMultiline() {
        return C2977b.f18029b.serialize((C2977b) this, true);
    }
}
