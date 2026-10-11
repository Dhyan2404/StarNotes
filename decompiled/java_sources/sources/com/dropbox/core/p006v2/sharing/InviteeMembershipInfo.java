package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.InviteeInfo;
import com.dropbox.core.p006v2.sharing.MemberPermission;
import com.dropbox.core.p006v2.sharing.MembershipInfo;
import com.dropbox.core.p006v2.sharing.UserInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes4.dex */
public class InviteeMembershipInfo extends MembershipInfo {
    protected final InviteeInfo invitee;
    protected final UserInfo user;

    /* loaded from: classes4.dex */
    public static class Builder extends MembershipInfo.Builder {
        protected final InviteeInfo invitee;
        protected UserInfo user;

        public Builder(AccessLevel accessLevel, InviteeInfo inviteeInfo) {
            super(accessLevel);
            if (inviteeInfo == null) {
                throw new IllegalArgumentException("Required value for 'invitee' is null");
            }
            this.invitee = inviteeInfo;
            this.user = null;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ MembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        public Builder withUser(UserInfo userInfo) {
            this.user = userInfo;
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public InviteeMembershipInfo build() {
            return new InviteeMembershipInfo(this.accessType, this.invitee, this.permissions, this.initials, this.isInherited, this.user);
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withInitials(String str) {
            super.withInitials(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withIsInherited(Boolean bool) {
            super.withIsInherited(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withPermissions(List<MemberPermission> list) {
            super.withPermissions(list);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.InviteeMembershipInfo$a */
    /* loaded from: classes4.dex */
    public static class C2848a extends StructSerializer<InviteeMembershipInfo> {

        /* renamed from: b */
        public static final C2848a f17770b = new C2848a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public InviteeMembershipInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.FALSE;
            AccessLevel accessLevel = null;
            InviteeInfo inviteeInfo = null;
            List list = null;
            String str2 = null;
            UserInfo userInfo = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_type".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("invitee".equals(currentName)) {
                    inviteeInfo = InviteeInfo.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("permissions".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).deserialize(jsonParser);
                } else if ("initials".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("is_inherited".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("user".equals(currentName)) {
                    userInfo = (UserInfo) StoneSerializers.nullableStruct(UserInfo.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            if (inviteeInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"invitee\" missing.");
            }
            InviteeMembershipInfo inviteeMembershipInfo = new InviteeMembershipInfo(accessLevel, inviteeInfo, list, str2, bool.booleanValue(), userInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(inviteeMembershipInfo, inviteeMembershipInfo.toStringMultiline());
            return inviteeMembershipInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(InviteeMembershipInfo inviteeMembershipInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(inviteeMembershipInfo.accessType, jsonGenerator);
            jsonGenerator.writeFieldName("invitee");
            InviteeInfo.Serializer.INSTANCE.serialize(inviteeMembershipInfo.invitee, jsonGenerator);
            if (inviteeMembershipInfo.permissions != null) {
                jsonGenerator.writeFieldName("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).serialize((StoneSerializer) inviteeMembershipInfo.permissions, jsonGenerator);
            }
            if (inviteeMembershipInfo.initials != null) {
                jsonGenerator.writeFieldName("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) inviteeMembershipInfo.initials, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_inherited");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(inviteeMembershipInfo.isInherited), jsonGenerator);
            if (inviteeMembershipInfo.user != null) {
                jsonGenerator.writeFieldName("user");
                StoneSerializers.nullableStruct(UserInfo.Serializer.INSTANCE).serialize((StructSerializer) inviteeMembershipInfo.user, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public InviteeMembershipInfo(AccessLevel accessLevel, InviteeInfo inviteeInfo, List<MemberPermission> list, String str, boolean z, UserInfo userInfo) {
        super(accessLevel, list, str, z);
        if (inviteeInfo != null) {
            this.invitee = inviteeInfo;
            this.user = userInfo;
            return;
        }
        throw new IllegalArgumentException("Required value for 'invitee' is null");
    }

    public static Builder newBuilder(AccessLevel accessLevel, InviteeInfo inviteeInfo) {
        return new Builder(accessLevel, inviteeInfo);
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public boolean equals(Object obj) {
        InviteeInfo inviteeInfo;
        InviteeInfo inviteeInfo2;
        List<MemberPermission> list;
        List<MemberPermission> list2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        InviteeMembershipInfo inviteeMembershipInfo = (InviteeMembershipInfo) obj;
        AccessLevel accessLevel = this.accessType;
        AccessLevel accessLevel2 = inviteeMembershipInfo.accessType;
        if ((accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && (((inviteeInfo = this.invitee) == (inviteeInfo2 = inviteeMembershipInfo.invitee) || inviteeInfo.equals(inviteeInfo2)) && (((list = this.permissions) == (list2 = inviteeMembershipInfo.permissions) || (list != null && list.equals(list2))) && (((str = this.initials) == (str2 = inviteeMembershipInfo.initials) || (str != null && str.equals(str2))) && this.isInherited == inviteeMembershipInfo.isInherited)))) {
            UserInfo userInfo = this.user;
            UserInfo userInfo2 = inviteeMembershipInfo.user;
            if (userInfo == userInfo2) {
                return true;
            }
            if (userInfo != null && userInfo.equals(userInfo2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String getInitials() {
        return this.initials;
    }

    public InviteeInfo getInvitee() {
        return this.invitee;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public boolean getIsInherited() {
        return this.isInherited;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    public UserInfo getUser() {
        return this.user;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.invitee, this.user});
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String toString() {
        return C2848a.f17770b.serialize((C2848a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String toStringMultiline() {
        return C2848a.f17770b.serialize((C2848a) this, true);
    }

    public InviteeMembershipInfo(AccessLevel accessLevel, InviteeInfo inviteeInfo) {
        this(accessLevel, inviteeInfo, null, null, false, null);
    }
}
