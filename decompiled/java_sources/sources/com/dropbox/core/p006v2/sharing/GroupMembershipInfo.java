package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.GroupInfo;
import com.dropbox.core.p006v2.sharing.MemberPermission;
import com.dropbox.core.p006v2.sharing.MembershipInfo;
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
public class GroupMembershipInfo extends MembershipInfo {
    protected final GroupInfo group;

    /* loaded from: classes4.dex */
    public static class Builder extends MembershipInfo.Builder {
        protected final GroupInfo group;

        public Builder(AccessLevel accessLevel, GroupInfo groupInfo) {
            super(accessLevel);
            if (groupInfo == null) {
                throw new IllegalArgumentException("Required value for 'group' is null");
            }
            this.group = groupInfo;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ MembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public GroupMembershipInfo build() {
            return new GroupMembershipInfo(this.accessType, this.group, this.permissions, this.initials, this.isInherited);
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

    /* renamed from: com.dropbox.core.v2.sharing.GroupMembershipInfo$a */
    /* loaded from: classes4.dex */
    public static class C2844a extends StructSerializer<GroupMembershipInfo> {

        /* renamed from: b */
        public static final C2844a f17764b = new C2844a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupMembershipInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GroupInfo groupInfo = null;
            List list = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_type".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("group".equals(currentName)) {
                    groupInfo = GroupInfo.C2843a.f17763b.deserialize(jsonParser);
                } else if ("permissions".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).deserialize(jsonParser);
                } else if ("initials".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("is_inherited".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            if (groupInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"group\" missing.");
            }
            GroupMembershipInfo groupMembershipInfo = new GroupMembershipInfo(accessLevel, groupInfo, list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupMembershipInfo, groupMembershipInfo.toStringMultiline());
            return groupMembershipInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupMembershipInfo groupMembershipInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(groupMembershipInfo.accessType, jsonGenerator);
            jsonGenerator.writeFieldName("group");
            GroupInfo.C2843a.f17763b.serialize((GroupInfo.C2843a) groupMembershipInfo.group, jsonGenerator);
            if (groupMembershipInfo.permissions != null) {
                jsonGenerator.writeFieldName("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).serialize((StoneSerializer) groupMembershipInfo.permissions, jsonGenerator);
            }
            if (groupMembershipInfo.initials != null) {
                jsonGenerator.writeFieldName("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) groupMembershipInfo.initials, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_inherited");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupMembershipInfo.isInherited), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupMembershipInfo(AccessLevel accessLevel, GroupInfo groupInfo, List<MemberPermission> list, String str, boolean z) {
        super(accessLevel, list, str, z);
        if (groupInfo != null) {
            this.group = groupInfo;
            return;
        }
        throw new IllegalArgumentException("Required value for 'group' is null");
    }

    public static Builder newBuilder(AccessLevel accessLevel, GroupInfo groupInfo) {
        return new Builder(accessLevel, groupInfo);
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public boolean equals(Object obj) {
        GroupInfo groupInfo;
        GroupInfo groupInfo2;
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
        GroupMembershipInfo groupMembershipInfo = (GroupMembershipInfo) obj;
        AccessLevel accessLevel = this.accessType;
        AccessLevel accessLevel2 = groupMembershipInfo.accessType;
        return (accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && ((groupInfo = this.group) == (groupInfo2 = groupMembershipInfo.group) || groupInfo.equals(groupInfo2)) && (((list = this.permissions) == (list2 = groupMembershipInfo.permissions) || (list != null && list.equals(list2))) && (((str = this.initials) == (str2 = groupMembershipInfo.initials) || (str != null && str.equals(str2))) && this.isInherited == groupMembershipInfo.isInherited));
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public GroupInfo getGroup() {
        return this.group;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String getInitials() {
        return this.initials;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public boolean getIsInherited() {
        return this.isInherited;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.group});
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String toString() {
        return C2844a.f17764b.serialize((C2844a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String toStringMultiline() {
        return C2844a.f17764b.serialize((C2844a) this, true);
    }

    public GroupMembershipInfo(AccessLevel accessLevel, GroupInfo groupInfo) {
        this(accessLevel, groupInfo, null, null, false);
    }
}
