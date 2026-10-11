package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AddMemberSelectorError;
import com.dropbox.core.p006v2.sharing.SharedFolderAccessError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
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
public final class AddFolderMemberError {

    /* renamed from: a */
    public Tag f17676a;

    /* renamed from: b */
    public SharedFolderAccessError f17677b;

    /* renamed from: c */
    public AddMemberSelectorError f17678c;

    /* renamed from: d */
    public Long f17679d;

    /* renamed from: e */
    public Long f17680e;
    public static final AddFolderMemberError EMAIL_UNVERIFIED = new AddFolderMemberError().m11471e(Tag.EMAIL_UNVERIFIED);
    public static final AddFolderMemberError BANNED_MEMBER = new AddFolderMemberError().m11471e(Tag.BANNED_MEMBER);
    public static final AddFolderMemberError CANT_SHARE_OUTSIDE_TEAM = new AddFolderMemberError().m11471e(Tag.CANT_SHARE_OUTSIDE_TEAM);
    public static final AddFolderMemberError RATE_LIMIT = new AddFolderMemberError().m11471e(Tag.RATE_LIMIT);
    public static final AddFolderMemberError TOO_MANY_INVITEES = new AddFolderMemberError().m11471e(Tag.TOO_MANY_INVITEES);
    public static final AddFolderMemberError INSUFFICIENT_PLAN = new AddFolderMemberError().m11471e(Tag.INSUFFICIENT_PLAN);
    public static final AddFolderMemberError TEAM_FOLDER = new AddFolderMemberError().m11471e(Tag.TEAM_FOLDER);
    public static final AddFolderMemberError NO_PERMISSION = new AddFolderMemberError().m11471e(Tag.NO_PERMISSION);
    public static final AddFolderMemberError INVALID_SHARED_FOLDER = new AddFolderMemberError().m11471e(Tag.INVALID_SHARED_FOLDER);
    public static final AddFolderMemberError OTHER = new AddFolderMemberError().m11471e(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        EMAIL_UNVERIFIED,
        BANNED_MEMBER,
        BAD_MEMBER,
        CANT_SHARE_OUTSIDE_TEAM,
        TOO_MANY_MEMBERS,
        TOO_MANY_PENDING_INVITES,
        RATE_LIMIT,
        TOO_MANY_INVITEES,
        INSUFFICIENT_PLAN,
        TEAM_FOLDER,
        NO_PERMISSION,
        INVALID_SHARED_FOLDER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.AddFolderMemberError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2801a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17681a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17681a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17681a[Tag.EMAIL_UNVERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17681a[Tag.BANNED_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17681a[Tag.BAD_MEMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17681a[Tag.CANT_SHARE_OUTSIDE_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17681a[Tag.TOO_MANY_MEMBERS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17681a[Tag.TOO_MANY_PENDING_INVITES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17681a[Tag.RATE_LIMIT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17681a[Tag.TOO_MANY_INVITEES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17681a[Tag.INSUFFICIENT_PLAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17681a[Tag.TEAM_FOLDER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17681a[Tag.NO_PERMISSION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17681a[Tag.INVALID_SHARED_FOLDER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17681a[Tag.OTHER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.AddFolderMemberError$b */
    /* loaded from: classes4.dex */
    public static class C2802b extends UnionSerializer<AddFolderMemberError> {

        /* renamed from: b */
        public static final C2802b f17682b = new C2802b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddFolderMemberError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AddFolderMemberError addFolderMemberError;
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
                addFolderMemberError = AddFolderMemberError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else if ("email_unverified".equals(readTag)) {
                addFolderMemberError = AddFolderMemberError.EMAIL_UNVERIFIED;
            } else if ("banned_member".equals(readTag)) {
                addFolderMemberError = AddFolderMemberError.BANNED_MEMBER;
            } else if ("bad_member".equals(readTag)) {
                StoneSerializer.expectField("bad_member", jsonParser);
                addFolderMemberError = AddFolderMemberError.badMember(AddMemberSelectorError.C2805b.f17689b.deserialize(jsonParser));
            } else if ("cant_share_outside_team".equals(readTag)) {
                addFolderMemberError = AddFolderMemberError.CANT_SHARE_OUTSIDE_TEAM;
            } else if ("too_many_members".equals(readTag)) {
                StoneSerializer.expectField("too_many_members", jsonParser);
                addFolderMemberError = AddFolderMemberError.tooManyMembers(StoneSerializers.uInt64().deserialize(jsonParser).longValue());
            } else if ("too_many_pending_invites".equals(readTag)) {
                StoneSerializer.expectField("too_many_pending_invites", jsonParser);
                addFolderMemberError = AddFolderMemberError.tooManyPendingInvites(StoneSerializers.uInt64().deserialize(jsonParser).longValue());
            } else {
                addFolderMemberError = "rate_limit".equals(readTag) ? AddFolderMemberError.RATE_LIMIT : "too_many_invitees".equals(readTag) ? AddFolderMemberError.TOO_MANY_INVITEES : "insufficient_plan".equals(readTag) ? AddFolderMemberError.INSUFFICIENT_PLAN : "team_folder".equals(readTag) ? AddFolderMemberError.TEAM_FOLDER : "no_permission".equals(readTag) ? AddFolderMemberError.NO_PERMISSION : "invalid_shared_folder".equals(readTag) ? AddFolderMemberError.INVALID_SHARED_FOLDER : AddFolderMemberError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return addFolderMemberError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddFolderMemberError addFolderMemberError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2801a.f17681a[addFolderMemberError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    SharedFolderAccessError.C2943b.f17965b.serialize(addFolderMemberError.f17677b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("email_unverified");
                    return;
                case 3:
                    jsonGenerator.writeString("banned_member");
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("bad_member", jsonGenerator);
                    jsonGenerator.writeFieldName("bad_member");
                    AddMemberSelectorError.C2805b.f17689b.serialize(addFolderMemberError.f17678c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("cant_share_outside_team");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("too_many_members", jsonGenerator);
                    jsonGenerator.writeFieldName("too_many_members");
                    StoneSerializers.uInt64().serialize((StoneSerializer<Long>) addFolderMemberError.f17679d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("too_many_pending_invites", jsonGenerator);
                    jsonGenerator.writeFieldName("too_many_pending_invites");
                    StoneSerializers.uInt64().serialize((StoneSerializer<Long>) addFolderMemberError.f17680e, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeString("rate_limit");
                    return;
                case 9:
                    jsonGenerator.writeString("too_many_invitees");
                    return;
                case 10:
                    jsonGenerator.writeString("insufficient_plan");
                    return;
                case 11:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 12:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 13:
                    jsonGenerator.writeString("invalid_shared_folder");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static AddFolderMemberError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new AddFolderMemberError().m11472f(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AddFolderMemberError badMember(AddMemberSelectorError addMemberSelectorError) {
        if (addMemberSelectorError != null) {
            return new AddFolderMemberError().m11473g(Tag.BAD_MEMBER, addMemberSelectorError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AddFolderMemberError tooManyMembers(long j) {
        return new AddFolderMemberError().m11474h(Tag.TOO_MANY_MEMBERS, Long.valueOf(j));
    }

    public static AddFolderMemberError tooManyPendingInvites(long j) {
        return new AddFolderMemberError().m11475i(Tag.TOO_MANY_PENDING_INVITES, Long.valueOf(j));
    }

    /* renamed from: e */
    public final AddFolderMemberError m11471e(Tag tag) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError.f17676a = tag;
        return addFolderMemberError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AddFolderMemberError)) {
            return false;
        }
        AddFolderMemberError addFolderMemberError = (AddFolderMemberError) obj;
        Tag tag = this.f17676a;
        if (tag != addFolderMemberError.f17676a) {
            return false;
        }
        switch (C2801a.f17681a[tag.ordinal()]) {
            case 1:
                SharedFolderAccessError sharedFolderAccessError = this.f17677b;
                SharedFolderAccessError sharedFolderAccessError2 = addFolderMemberError.f17677b;
                return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
            case 2:
            case 3:
                return true;
            case 4:
                AddMemberSelectorError addMemberSelectorError = this.f17678c;
                AddMemberSelectorError addMemberSelectorError2 = addFolderMemberError.f17678c;
                return addMemberSelectorError == addMemberSelectorError2 || addMemberSelectorError.equals(addMemberSelectorError2);
            case 5:
                return true;
            case 6:
                return this.f17679d == addFolderMemberError.f17679d;
            case 7:
                return this.f17680e == addFolderMemberError.f17680e;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final AddFolderMemberError m11472f(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError.f17676a = tag;
        addFolderMemberError.f17677b = sharedFolderAccessError;
        return addFolderMemberError;
    }

    /* renamed from: g */
    public final AddFolderMemberError m11473g(Tag tag, AddMemberSelectorError addMemberSelectorError) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError.f17676a = tag;
        addFolderMemberError.f17678c = addMemberSelectorError;
        return addFolderMemberError;
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f17676a == Tag.ACCESS_ERROR) {
            return this.f17677b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17676a.name());
    }

    public AddMemberSelectorError getBadMemberValue() {
        if (this.f17676a == Tag.BAD_MEMBER) {
            return this.f17678c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BAD_MEMBER, but was Tag." + this.f17676a.name());
    }

    public long getTooManyMembersValue() {
        if (this.f17676a == Tag.TOO_MANY_MEMBERS) {
            return this.f17679d.longValue();
        }
        throw new IllegalStateException("Invalid tag: required Tag.TOO_MANY_MEMBERS, but was Tag." + this.f17676a.name());
    }

    public long getTooManyPendingInvitesValue() {
        if (this.f17676a == Tag.TOO_MANY_PENDING_INVITES) {
            return this.f17680e.longValue();
        }
        throw new IllegalStateException("Invalid tag: required Tag.TOO_MANY_PENDING_INVITES, but was Tag." + this.f17676a.name());
    }

    /* renamed from: h */
    public final AddFolderMemberError m11474h(Tag tag, Long l) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError.f17676a = tag;
        addFolderMemberError.f17679d = l;
        return addFolderMemberError;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17676a, this.f17677b, this.f17678c, this.f17679d, this.f17680e});
    }

    /* renamed from: i */
    public final AddFolderMemberError m11475i(Tag tag, Long l) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError.f17676a = tag;
        addFolderMemberError.f17680e = l;
        return addFolderMemberError;
    }

    public boolean isAccessError() {
        return this.f17676a == Tag.ACCESS_ERROR;
    }

    public boolean isBadMember() {
        return this.f17676a == Tag.BAD_MEMBER;
    }

    public boolean isBannedMember() {
        return this.f17676a == Tag.BANNED_MEMBER;
    }

    public boolean isCantShareOutsideTeam() {
        return this.f17676a == Tag.CANT_SHARE_OUTSIDE_TEAM;
    }

    public boolean isEmailUnverified() {
        return this.f17676a == Tag.EMAIL_UNVERIFIED;
    }

    public boolean isInsufficientPlan() {
        return this.f17676a == Tag.INSUFFICIENT_PLAN;
    }

    public boolean isInvalidSharedFolder() {
        return this.f17676a == Tag.INVALID_SHARED_FOLDER;
    }

    public boolean isNoPermission() {
        return this.f17676a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f17676a == Tag.OTHER;
    }

    public boolean isRateLimit() {
        return this.f17676a == Tag.RATE_LIMIT;
    }

    public boolean isTeamFolder() {
        return this.f17676a == Tag.TEAM_FOLDER;
    }

    public boolean isTooManyInvitees() {
        return this.f17676a == Tag.TOO_MANY_INVITEES;
    }

    public boolean isTooManyMembers() {
        return this.f17676a == Tag.TOO_MANY_MEMBERS;
    }

    public boolean isTooManyPendingInvites() {
        return this.f17676a == Tag.TOO_MANY_PENDING_INVITES;
    }

    public Tag tag() {
        return this.f17676a;
    }

    public String toString() {
        return C2802b.f17682b.serialize((C2802b) this, false);
    }

    public String toStringMultiline() {
        return C2802b.f17682b.serialize((C2802b) this, true);
    }
}
