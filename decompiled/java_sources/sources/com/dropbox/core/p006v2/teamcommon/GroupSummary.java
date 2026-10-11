package com.dropbox.core.p006v2.teamcommon;

import com.dropbox.core.p006v2.teamcommon.GroupManagementType;
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
public class GroupSummary {
    protected final String groupExternalId;
    protected final String groupId;
    protected final GroupManagementType groupManagementType;
    protected final String groupName;
    protected final Long memberCount;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String groupExternalId;
        protected final String groupId;
        protected final GroupManagementType groupManagementType;
        protected final String groupName;
        protected Long memberCount;

        public Builder(String str, String str2, GroupManagementType groupManagementType) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'groupName' is null");
            }
            this.groupName = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'groupId' is null");
            }
            this.groupId = str2;
            if (groupManagementType == null) {
                throw new IllegalArgumentException("Required value for 'groupManagementType' is null");
            }
            this.groupManagementType = groupManagementType;
            this.groupExternalId = null;
            this.memberCount = null;
        }

        public GroupSummary build() {
            return new GroupSummary(this.groupName, this.groupId, this.groupManagementType, this.groupExternalId, this.memberCount);
        }

        public Builder withGroupExternalId(String str) {
            this.groupExternalId = str;
            return this;
        }

        public Builder withMemberCount(Long l) {
            this.memberCount = l;
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<GroupSummary> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupSummary deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                GroupManagementType groupManagementType = null;
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
                if (groupManagementType != null) {
                    GroupSummary groupSummary = new GroupSummary(str2, str3, groupManagementType, str4, l);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(groupSummary, groupSummary.toStringMultiline());
                    return groupSummary;
                }
                throw new JsonParseException(jsonParser, "Required field \"group_management_type\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupSummary groupSummary, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) groupSummary.groupName, jsonGenerator);
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.GROUP_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) groupSummary.groupId, jsonGenerator);
            jsonGenerator.writeFieldName("group_management_type");
            GroupManagementType.Serializer.INSTANCE.serialize(groupSummary.groupManagementType, jsonGenerator);
            if (groupSummary.groupExternalId != null) {
                jsonGenerator.writeFieldName("group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) groupSummary.groupExternalId, jsonGenerator);
            }
            if (groupSummary.memberCount != null) {
                jsonGenerator.writeFieldName("member_count");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize((StoneSerializer) groupSummary.memberCount, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupSummary(String str, String str2, GroupManagementType groupManagementType, String str3, Long l) {
        if (str != null) {
            this.groupName = str;
            if (str2 != null) {
                this.groupId = str2;
                this.groupExternalId = str3;
                this.memberCount = l;
                if (groupManagementType != null) {
                    this.groupManagementType = groupManagementType;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'groupManagementType' is null");
            }
            throw new IllegalArgumentException("Required value for 'groupId' is null");
        }
        throw new IllegalArgumentException("Required value for 'groupName' is null");
    }

    public static Builder newBuilder(String str, String str2, GroupManagementType groupManagementType) {
        return new Builder(str, str2, groupManagementType);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        GroupManagementType groupManagementType;
        GroupManagementType groupManagementType2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupSummary groupSummary = (GroupSummary) obj;
        String str5 = this.groupName;
        String str6 = groupSummary.groupName;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.groupId) == (str2 = groupSummary.groupId) || str.equals(str2)) && (((groupManagementType = this.groupManagementType) == (groupManagementType2 = groupSummary.groupManagementType) || groupManagementType.equals(groupManagementType2)) && ((str3 = this.groupExternalId) == (str4 = groupSummary.groupExternalId) || (str3 != null && str3.equals(str4)))))) {
            Long l = this.memberCount;
            Long l2 = groupSummary.memberCount;
            if (l == l2) {
                return true;
            }
            if (l != null && l.equals(l2)) {
                return true;
            }
        }
        return false;
    }

    public String getGroupExternalId() {
        return this.groupExternalId;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public GroupManagementType getGroupManagementType() {
        return this.groupManagementType;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public Long getMemberCount() {
        return this.memberCount;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groupName, this.groupId, this.groupExternalId, this.memberCount, this.groupManagementType});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }

    public GroupSummary(String str, String str2, GroupManagementType groupManagementType) {
        this(str, str2, groupManagementType, null, null);
    }
}
