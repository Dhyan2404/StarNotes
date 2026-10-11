package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.InsufficientPlan;
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
public final class PermissionDeniedReason {

    /* renamed from: a */
    public Tag f17887a;

    /* renamed from: b */
    public InsufficientPlan f17888b;
    public static final PermissionDeniedReason USER_NOT_SAME_TEAM_AS_OWNER = new PermissionDeniedReason().m11805b(Tag.USER_NOT_SAME_TEAM_AS_OWNER);
    public static final PermissionDeniedReason USER_NOT_ALLOWED_BY_OWNER = new PermissionDeniedReason().m11805b(Tag.USER_NOT_ALLOWED_BY_OWNER);
    public static final PermissionDeniedReason TARGET_IS_INDIRECT_MEMBER = new PermissionDeniedReason().m11805b(Tag.TARGET_IS_INDIRECT_MEMBER);
    public static final PermissionDeniedReason TARGET_IS_OWNER = new PermissionDeniedReason().m11805b(Tag.TARGET_IS_OWNER);
    public static final PermissionDeniedReason TARGET_IS_SELF = new PermissionDeniedReason().m11805b(Tag.TARGET_IS_SELF);
    public static final PermissionDeniedReason TARGET_NOT_ACTIVE = new PermissionDeniedReason().m11805b(Tag.TARGET_NOT_ACTIVE);
    public static final PermissionDeniedReason FOLDER_IS_LIMITED_TEAM_FOLDER = new PermissionDeniedReason().m11805b(Tag.FOLDER_IS_LIMITED_TEAM_FOLDER);
    public static final PermissionDeniedReason OWNER_NOT_ON_TEAM = new PermissionDeniedReason().m11805b(Tag.OWNER_NOT_ON_TEAM);
    public static final PermissionDeniedReason PERMISSION_DENIED = new PermissionDeniedReason().m11805b(Tag.PERMISSION_DENIED);
    public static final PermissionDeniedReason RESTRICTED_BY_TEAM = new PermissionDeniedReason().m11805b(Tag.RESTRICTED_BY_TEAM);
    public static final PermissionDeniedReason USER_ACCOUNT_TYPE = new PermissionDeniedReason().m11805b(Tag.USER_ACCOUNT_TYPE);
    public static final PermissionDeniedReason USER_NOT_ON_TEAM = new PermissionDeniedReason().m11805b(Tag.USER_NOT_ON_TEAM);
    public static final PermissionDeniedReason FOLDER_IS_INSIDE_SHARED_FOLDER = new PermissionDeniedReason().m11805b(Tag.FOLDER_IS_INSIDE_SHARED_FOLDER);
    public static final PermissionDeniedReason RESTRICTED_BY_PARENT_FOLDER = new PermissionDeniedReason().m11805b(Tag.RESTRICTED_BY_PARENT_FOLDER);
    public static final PermissionDeniedReason OTHER = new PermissionDeniedReason().m11805b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_NOT_SAME_TEAM_AS_OWNER,
        USER_NOT_ALLOWED_BY_OWNER,
        TARGET_IS_INDIRECT_MEMBER,
        TARGET_IS_OWNER,
        TARGET_IS_SELF,
        TARGET_NOT_ACTIVE,
        FOLDER_IS_LIMITED_TEAM_FOLDER,
        OWNER_NOT_ON_TEAM,
        PERMISSION_DENIED,
        RESTRICTED_BY_TEAM,
        USER_ACCOUNT_TYPE,
        USER_NOT_ON_TEAM,
        FOLDER_IS_INSIDE_SHARED_FOLDER,
        RESTRICTED_BY_PARENT_FOLDER,
        INSUFFICIENT_PLAN,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.PermissionDeniedReason$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2906a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17889a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17889a = iArr;
            try {
                iArr[Tag.USER_NOT_SAME_TEAM_AS_OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17889a[Tag.USER_NOT_ALLOWED_BY_OWNER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17889a[Tag.TARGET_IS_INDIRECT_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17889a[Tag.TARGET_IS_OWNER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17889a[Tag.TARGET_IS_SELF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17889a[Tag.TARGET_NOT_ACTIVE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17889a[Tag.FOLDER_IS_LIMITED_TEAM_FOLDER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17889a[Tag.OWNER_NOT_ON_TEAM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17889a[Tag.PERMISSION_DENIED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17889a[Tag.RESTRICTED_BY_TEAM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17889a[Tag.USER_ACCOUNT_TYPE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17889a[Tag.USER_NOT_ON_TEAM.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17889a[Tag.FOLDER_IS_INSIDE_SHARED_FOLDER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17889a[Tag.RESTRICTED_BY_PARENT_FOLDER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17889a[Tag.INSUFFICIENT_PLAN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f17889a[Tag.OTHER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.PermissionDeniedReason$b */
    /* loaded from: classes4.dex */
    public static class C2907b extends UnionSerializer<PermissionDeniedReason> {

        /* renamed from: b */
        public static final C2907b f17890b = new C2907b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PermissionDeniedReason deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PermissionDeniedReason insufficientPlan = "user_not_same_team_as_owner".equals(readTag) ? PermissionDeniedReason.USER_NOT_SAME_TEAM_AS_OWNER : "user_not_allowed_by_owner".equals(readTag) ? PermissionDeniedReason.USER_NOT_ALLOWED_BY_OWNER : "target_is_indirect_member".equals(readTag) ? PermissionDeniedReason.TARGET_IS_INDIRECT_MEMBER : "target_is_owner".equals(readTag) ? PermissionDeniedReason.TARGET_IS_OWNER : "target_is_self".equals(readTag) ? PermissionDeniedReason.TARGET_IS_SELF : "target_not_active".equals(readTag) ? PermissionDeniedReason.TARGET_NOT_ACTIVE : "folder_is_limited_team_folder".equals(readTag) ? PermissionDeniedReason.FOLDER_IS_LIMITED_TEAM_FOLDER : "owner_not_on_team".equals(readTag) ? PermissionDeniedReason.OWNER_NOT_ON_TEAM : "permission_denied".equals(readTag) ? PermissionDeniedReason.PERMISSION_DENIED : "restricted_by_team".equals(readTag) ? PermissionDeniedReason.RESTRICTED_BY_TEAM : "user_account_type".equals(readTag) ? PermissionDeniedReason.USER_ACCOUNT_TYPE : "user_not_on_team".equals(readTag) ? PermissionDeniedReason.USER_NOT_ON_TEAM : "folder_is_inside_shared_folder".equals(readTag) ? PermissionDeniedReason.FOLDER_IS_INSIDE_SHARED_FOLDER : "restricted_by_parent_folder".equals(readTag) ? PermissionDeniedReason.RESTRICTED_BY_PARENT_FOLDER : "insufficient_plan".equals(readTag) ? PermissionDeniedReason.insufficientPlan(InsufficientPlan.C2845a.f17765b.deserialize(jsonParser, true)) : PermissionDeniedReason.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return insufficientPlan;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PermissionDeniedReason permissionDeniedReason, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2906a.f17889a[permissionDeniedReason.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeString("user_not_same_team_as_owner");
                    return;
                case 2:
                    jsonGenerator.writeString("user_not_allowed_by_owner");
                    return;
                case 3:
                    jsonGenerator.writeString("target_is_indirect_member");
                    return;
                case 4:
                    jsonGenerator.writeString("target_is_owner");
                    return;
                case 5:
                    jsonGenerator.writeString("target_is_self");
                    return;
                case 6:
                    jsonGenerator.writeString("target_not_active");
                    return;
                case 7:
                    jsonGenerator.writeString("folder_is_limited_team_folder");
                    return;
                case 8:
                    jsonGenerator.writeString("owner_not_on_team");
                    return;
                case 9:
                    jsonGenerator.writeString("permission_denied");
                    return;
                case 10:
                    jsonGenerator.writeString("restricted_by_team");
                    return;
                case 11:
                    jsonGenerator.writeString("user_account_type");
                    return;
                case 12:
                    jsonGenerator.writeString("user_not_on_team");
                    return;
                case 13:
                    jsonGenerator.writeString("folder_is_inside_shared_folder");
                    return;
                case 14:
                    jsonGenerator.writeString("restricted_by_parent_folder");
                    return;
                case 15:
                    jsonGenerator.writeStartObject();
                    writeTag("insufficient_plan", jsonGenerator);
                    InsufficientPlan.C2845a.f17765b.serialize(permissionDeniedReason.f17888b, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static PermissionDeniedReason insufficientPlan(InsufficientPlan insufficientPlan) {
        if (insufficientPlan != null) {
            return new PermissionDeniedReason().m11806c(Tag.INSUFFICIENT_PLAN, insufficientPlan);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final PermissionDeniedReason m11805b(Tag tag) {
        PermissionDeniedReason permissionDeniedReason = new PermissionDeniedReason();
        permissionDeniedReason.f17887a = tag;
        return permissionDeniedReason;
    }

    /* renamed from: c */
    public final PermissionDeniedReason m11806c(Tag tag, InsufficientPlan insufficientPlan) {
        PermissionDeniedReason permissionDeniedReason = new PermissionDeniedReason();
        permissionDeniedReason.f17887a = tag;
        permissionDeniedReason.f17888b = insufficientPlan;
        return permissionDeniedReason;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PermissionDeniedReason)) {
            return false;
        }
        PermissionDeniedReason permissionDeniedReason = (PermissionDeniedReason) obj;
        Tag tag = this.f17887a;
        if (tag != permissionDeniedReason.f17887a) {
            return false;
        }
        switch (C2906a.f17889a[tag.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return true;
            case 15:
                InsufficientPlan insufficientPlan = this.f17888b;
                InsufficientPlan insufficientPlan2 = permissionDeniedReason.f17888b;
                return insufficientPlan == insufficientPlan2 || insufficientPlan.equals(insufficientPlan2);
            case 16:
                return true;
            default:
                return false;
        }
    }

    public InsufficientPlan getInsufficientPlanValue() {
        if (this.f17887a == Tag.INSUFFICIENT_PLAN) {
            return this.f17888b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INSUFFICIENT_PLAN, but was Tag." + this.f17887a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17887a, this.f17888b});
    }

    public boolean isFolderIsInsideSharedFolder() {
        return this.f17887a == Tag.FOLDER_IS_INSIDE_SHARED_FOLDER;
    }

    public boolean isFolderIsLimitedTeamFolder() {
        return this.f17887a == Tag.FOLDER_IS_LIMITED_TEAM_FOLDER;
    }

    public boolean isInsufficientPlan() {
        return this.f17887a == Tag.INSUFFICIENT_PLAN;
    }

    public boolean isOther() {
        return this.f17887a == Tag.OTHER;
    }

    public boolean isOwnerNotOnTeam() {
        return this.f17887a == Tag.OWNER_NOT_ON_TEAM;
    }

    public boolean isPermissionDenied() {
        return this.f17887a == Tag.PERMISSION_DENIED;
    }

    public boolean isRestrictedByParentFolder() {
        return this.f17887a == Tag.RESTRICTED_BY_PARENT_FOLDER;
    }

    public boolean isRestrictedByTeam() {
        return this.f17887a == Tag.RESTRICTED_BY_TEAM;
    }

    public boolean isTargetIsIndirectMember() {
        return this.f17887a == Tag.TARGET_IS_INDIRECT_MEMBER;
    }

    public boolean isTargetIsOwner() {
        return this.f17887a == Tag.TARGET_IS_OWNER;
    }

    public boolean isTargetIsSelf() {
        return this.f17887a == Tag.TARGET_IS_SELF;
    }

    public boolean isTargetNotActive() {
        return this.f17887a == Tag.TARGET_NOT_ACTIVE;
    }

    public boolean isUserAccountType() {
        return this.f17887a == Tag.USER_ACCOUNT_TYPE;
    }

    public boolean isUserNotAllowedByOwner() {
        return this.f17887a == Tag.USER_NOT_ALLOWED_BY_OWNER;
    }

    public boolean isUserNotOnTeam() {
        return this.f17887a == Tag.USER_NOT_ON_TEAM;
    }

    public boolean isUserNotSameTeamAsOwner() {
        return this.f17887a == Tag.USER_NOT_SAME_TEAM_AS_OWNER;
    }

    public Tag tag() {
        return this.f17887a;
    }

    public String toString() {
        return C2907b.f17890b.serialize((C2907b) this, false);
    }

    public String toStringMultiline() {
        return C2907b.f17890b.serialize((C2907b) this, true);
    }
}
