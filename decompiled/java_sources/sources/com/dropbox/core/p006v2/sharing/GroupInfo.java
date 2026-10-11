package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.teamcommon.GroupManagementType;
import com.dropbox.core.p006v2.teamcommon.GroupSummary;
import com.dropbox.core.p006v2.teamcommon.GroupType;
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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class GroupInfo extends GroupSummary {
    protected final GroupType groupType;
    protected final boolean isMember;
    protected final boolean isOwner;
    protected final boolean sameTeam;

    /* loaded from: classes4.dex */
    public static class Builder extends GroupSummary.Builder {
        protected final GroupType groupType;
        protected final boolean isMember;
        protected final boolean isOwner;
        protected final boolean sameTeam;

        public Builder(String str, String str2, GroupManagementType groupManagementType, GroupType groupType, boolean z, boolean z2, boolean z3) {
            super(str, str2, groupManagementType);
            if (groupType == null) {
                throw new IllegalArgumentException("Required value for 'groupType' is null");
            }
            this.groupType = groupType;
            this.isMember = z;
            this.isOwner = z2;
            this.sameTeam = z3;
        }

        @Override // com.dropbox.core.v2.teamcommon.GroupSummary.Builder
        public GroupInfo build() {
            return new GroupInfo(this.groupName, this.groupId, this.groupManagementType, this.groupType, this.isMember, this.isOwner, this.sameTeam, this.groupExternalId, this.memberCount);
        }

        @Override // com.dropbox.core.v2.teamcommon.GroupSummary.Builder
        public Builder withGroupExternalId(String str) {
            super.withGroupExternalId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamcommon.GroupSummary.Builder
        public Builder withMemberCount(Long l) {
            super.withMemberCount(l);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.GroupInfo$a */
    /* loaded from: classes4.dex */
    public static class C2843a extends StructSerializer<GroupInfo> {

        /* renamed from: b */
        public static final C2843a f17763b = new C2843a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool2 = null;
            Boolean bool3 = null;
            String str2 = null;
            String str3 = null;
            GroupManagementType groupManagementType = null;
            GroupType groupType = null;
            String str4 = null;
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.GROUP_ID.equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("group_management_type".equals(currentName)) {
                    groupManagementType = GroupManagementType.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("group_type".equals(currentName)) {
                    groupType = GroupType.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("is_member".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("is_owner".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("same_team".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("group_external_id".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("member_count".equals(currentName)) {
                    l = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"group_name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"group_id\" missing.");
            }
            if (groupManagementType == null) {
                throw new JsonParseException(jsonParser, "Required field \"group_management_type\" missing.");
            }
            if (groupType == null) {
                throw new JsonParseException(jsonParser, "Required field \"group_type\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_member\" missing.");
            }
            if (bool2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_owner\" missing.");
            }
            if (bool3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"same_team\" missing.");
            }
            GroupInfo groupInfo = new GroupInfo(str2, str3, groupManagementType, groupType, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), str4, l);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupInfo, groupInfo.toStringMultiline());
            return groupInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupInfo groupInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) ((GroupSummary) groupInfo).groupName, jsonGenerator);
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.GROUP_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) ((GroupSummary) groupInfo).groupId, jsonGenerator);
            jsonGenerator.writeFieldName("group_management_type");
            GroupManagementType.Serializer.INSTANCE.serialize(((GroupSummary) groupInfo).groupManagementType, jsonGenerator);
            jsonGenerator.writeFieldName("group_type");
            GroupType.Serializer.INSTANCE.serialize(groupInfo.groupType, jsonGenerator);
            jsonGenerator.writeFieldName("is_member");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupInfo.isMember), jsonGenerator);
            jsonGenerator.writeFieldName("is_owner");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupInfo.isOwner), jsonGenerator);
            jsonGenerator.writeFieldName("same_team");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupInfo.sameTeam), jsonGenerator);
            if (((GroupSummary) groupInfo).groupExternalId != null) {
                jsonGenerator.writeFieldName("group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) ((GroupSummary) groupInfo).groupExternalId, jsonGenerator);
            }
            if (((GroupSummary) groupInfo).memberCount != null) {
                jsonGenerator.writeFieldName("member_count");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize((StoneSerializer) ((GroupSummary) groupInfo).memberCount, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupInfo(String str, String str2, GroupManagementType groupManagementType, GroupType groupType, boolean z, boolean z2, boolean z3, String str3, Long l) {
        super(str, str2, groupManagementType, str3, l);
        if (groupType != null) {
            this.groupType = groupType;
            this.isMember = z;
            this.isOwner = z2;
            this.sameTeam = z3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'groupType' is null");
    }

    public static Builder newBuilder(String str, String str2, GroupManagementType groupManagementType, GroupType groupType, boolean z, boolean z2, boolean z3) {
        return new Builder(str, str2, groupManagementType, groupType, z, z2, z3);
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public boolean equals(Object obj) {
        String str;
        String str2;
        GroupManagementType groupManagementType;
        GroupManagementType groupManagementType2;
        GroupType groupType;
        GroupType groupType2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupInfo groupInfo = (GroupInfo) obj;
        String str5 = this.groupName;
        String str6 = groupInfo.groupName;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.groupId) == (str2 = groupInfo.groupId) || str.equals(str2)) && (((groupManagementType = this.groupManagementType) == (groupManagementType2 = groupInfo.groupManagementType) || groupManagementType.equals(groupManagementType2)) && (((groupType = this.groupType) == (groupType2 = groupInfo.groupType) || groupType.equals(groupType2)) && this.isMember == groupInfo.isMember && this.isOwner == groupInfo.isOwner && this.sameTeam == groupInfo.sameTeam && ((str3 = this.groupExternalId) == (str4 = groupInfo.groupExternalId) || (str3 != null && str3.equals(str4))))))) {
            Long l = this.memberCount;
            Long l2 = groupInfo.memberCount;
            if (l == l2) {
                return true;
            }
            if (l != null && l.equals(l2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public String getGroupExternalId() {
        return this.groupExternalId;
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public String getGroupId() {
        return this.groupId;
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public GroupManagementType getGroupManagementType() {
        return this.groupManagementType;
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public String getGroupName() {
        return this.groupName;
    }

    public GroupType getGroupType() {
        return this.groupType;
    }

    public boolean getIsMember() {
        return this.isMember;
    }

    public boolean getIsOwner() {
        return this.isOwner;
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public Long getMemberCount() {
        return this.memberCount;
    }

    public boolean getSameTeam() {
        return this.sameTeam;
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.groupType, Boolean.valueOf(this.isMember), Boolean.valueOf(this.isOwner), Boolean.valueOf(this.sameTeam)});
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public String toString() {
        return C2843a.f17763b.serialize((C2843a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public String toStringMultiline() {
        return C2843a.f17763b.serialize((C2843a) this, true);
    }

    public GroupInfo(String str, String str2, GroupManagementType groupManagementType, GroupType groupType, boolean z, boolean z2, boolean z3) {
        this(str, str2, groupManagementType, groupType, z, z2, z3, null, null);
    }
}
