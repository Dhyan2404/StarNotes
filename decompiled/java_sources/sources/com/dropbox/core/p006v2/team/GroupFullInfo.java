package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupMemberInfo;
import com.dropbox.core.p006v2.teamcommon.GroupManagementType;
import com.dropbox.core.p006v2.teamcommon.GroupSummary;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class GroupFullInfo extends GroupSummary {
    protected final long created;
    protected final List<GroupMemberInfo> members;

    /* loaded from: classes4.dex */
    public static class Builder extends GroupSummary.Builder {
        protected final long created;
        protected List<GroupMemberInfo> members;

        public Builder(String str, String str2, GroupManagementType groupManagementType, long j) {
            super(str, str2, groupManagementType);
            this.created = j;
            this.members = null;
        }

        public Builder withMembers(List<GroupMemberInfo> list) {
            if (list != null) {
                Iterator<GroupMemberInfo> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'members' is null");
                    }
                }
            }
            this.members = list;
            return this;
        }

        @Override // com.dropbox.core.v2.teamcommon.GroupSummary.Builder
        public GroupFullInfo build() {
            return new GroupFullInfo(this.groupName, this.groupId, this.groupManagementType, this.created, this.groupExternalId, this.memberCount, this.members);
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

    /* renamed from: com.dropbox.core.v2.team.GroupFullInfo$a */
    /* loaded from: classes4.dex */
    public static class C3061a extends StructSerializer<GroupFullInfo> {

        /* renamed from: b */
        public static final C3061a f18192b = new C3061a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupFullInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            GroupManagementType groupManagementType = null;
            String str4 = null;
            Long l2 = null;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.GROUP_ID.equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("group_management_type".equals(currentName)) {
                    groupManagementType = GroupManagementType.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("created".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("group_external_id".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("member_count".equals(currentName)) {
                    l2 = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(jsonParser);
                } else if ("members".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(GroupMemberInfo.C3062a.f18193b)).deserialize(jsonParser);
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
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"created\" missing.");
            }
            GroupFullInfo groupFullInfo = new GroupFullInfo(str2, str3, groupManagementType, l.longValue(), str4, l2, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupFullInfo, groupFullInfo.toStringMultiline());
            return groupFullInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupFullInfo groupFullInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) ((GroupSummary) groupFullInfo).groupName, jsonGenerator);
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.GROUP_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) ((GroupSummary) groupFullInfo).groupId, jsonGenerator);
            jsonGenerator.writeFieldName("group_management_type");
            GroupManagementType.Serializer.INSTANCE.serialize(((GroupSummary) groupFullInfo).groupManagementType, jsonGenerator);
            jsonGenerator.writeFieldName("created");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(groupFullInfo.created), jsonGenerator);
            if (((GroupSummary) groupFullInfo).groupExternalId != null) {
                jsonGenerator.writeFieldName("group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) ((GroupSummary) groupFullInfo).groupExternalId, jsonGenerator);
            }
            if (((GroupSummary) groupFullInfo).memberCount != null) {
                jsonGenerator.writeFieldName("member_count");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize((StoneSerializer) ((GroupSummary) groupFullInfo).memberCount, jsonGenerator);
            }
            if (groupFullInfo.members != null) {
                jsonGenerator.writeFieldName("members");
                StoneSerializers.nullable(StoneSerializers.list(GroupMemberInfo.C3062a.f18193b)).serialize((StoneSerializer) groupFullInfo.members, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupFullInfo(String str, String str2, GroupManagementType groupManagementType, long j, String str3, Long l, List<GroupMemberInfo> list) {
        super(str, str2, groupManagementType, str3, l);
        if (list != null) {
            Iterator<GroupMemberInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
        }
        this.members = list;
        this.created = j;
    }

    public static Builder newBuilder(String str, String str2, GroupManagementType groupManagementType, long j) {
        return new Builder(str, str2, groupManagementType, j);
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public boolean equals(Object obj) {
        String str;
        String str2;
        GroupManagementType groupManagementType;
        GroupManagementType groupManagementType2;
        String str3;
        String str4;
        Long l;
        Long l2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupFullInfo groupFullInfo = (GroupFullInfo) obj;
        String str5 = this.groupName;
        String str6 = groupFullInfo.groupName;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.groupId) == (str2 = groupFullInfo.groupId) || str.equals(str2)) && (((groupManagementType = this.groupManagementType) == (groupManagementType2 = groupFullInfo.groupManagementType) || groupManagementType.equals(groupManagementType2)) && this.created == groupFullInfo.created && (((str3 = this.groupExternalId) == (str4 = groupFullInfo.groupExternalId) || (str3 != null && str3.equals(str4))) && ((l = this.memberCount) == (l2 = groupFullInfo.memberCount) || (l != null && l.equals(l2))))))) {
            List<GroupMemberInfo> list = this.members;
            List<GroupMemberInfo> list2 = groupFullInfo.members;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public long getCreated() {
        return this.created;
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

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public Long getMemberCount() {
        return this.memberCount;
    }

    public List<GroupMemberInfo> getMembers() {
        return this.members;
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.members, Long.valueOf(this.created)});
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public String toString() {
        return C3061a.f18192b.serialize((C3061a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamcommon.GroupSummary
    public String toStringMultiline() {
        return C3061a.f18192b.serialize((C3061a) this, true);
    }

    public GroupFullInfo(String str, String str2, GroupManagementType groupManagementType, long j) {
        this(str, str2, groupManagementType, j, null, null, null);
    }
}
