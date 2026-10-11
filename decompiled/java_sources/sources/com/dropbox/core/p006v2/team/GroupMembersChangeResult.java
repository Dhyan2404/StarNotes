package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupFullInfo;
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

/* loaded from: classes4.dex */
public class GroupMembersChangeResult {
    protected final String asyncJobId;
    protected final GroupFullInfo groupInfo;

    /* renamed from: com.dropbox.core.v2.team.GroupMembersChangeResult$a */
    /* loaded from: classes4.dex */
    public static class C3067a extends StructSerializer<GroupMembersChangeResult> {

        /* renamed from: b */
        public static final C3067a f18202b = new C3067a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupMembersChangeResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            GroupFullInfo groupFullInfo = null;
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group_info".equals(currentName)) {
                    groupFullInfo = GroupFullInfo.C3061a.f18192b.deserialize(jsonParser);
                } else if ("async_job_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (groupFullInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"group_info\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"async_job_id\" missing.");
            }
            GroupMembersChangeResult groupMembersChangeResult = new GroupMembersChangeResult(groupFullInfo, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupMembersChangeResult, groupMembersChangeResult.toStringMultiline());
            return groupMembersChangeResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupMembersChangeResult groupMembersChangeResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group_info");
            GroupFullInfo.C3061a.f18192b.serialize((GroupFullInfo.C3061a) groupMembersChangeResult.groupInfo, jsonGenerator);
            jsonGenerator.writeFieldName("async_job_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) groupMembersChangeResult.asyncJobId, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupMembersChangeResult(GroupFullInfo groupFullInfo, String str) {
        if (groupFullInfo == null) {
            throw new IllegalArgumentException("Required value for 'groupInfo' is null");
        }
        this.groupInfo = groupFullInfo;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'asyncJobId' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'asyncJobId' is shorter than 1");
        }
        this.asyncJobId = str;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupMembersChangeResult groupMembersChangeResult = (GroupMembersChangeResult) obj;
        GroupFullInfo groupFullInfo = this.groupInfo;
        GroupFullInfo groupFullInfo2 = groupMembersChangeResult.groupInfo;
        return (groupFullInfo == groupFullInfo2 || groupFullInfo.equals(groupFullInfo2)) && ((str = this.asyncJobId) == (str2 = groupMembersChangeResult.asyncJobId) || str.equals(str2));
    }

    public String getAsyncJobId() {
        return this.asyncJobId;
    }

    public GroupFullInfo getGroupInfo() {
        return this.groupInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groupInfo, this.asyncJobId});
    }

    public String toString() {
        return C3067a.f18202b.serialize((C3067a) this, false);
    }

    public String toStringMultiline() {
        return C3067a.f18202b.serialize((C3067a) this, true);
    }
}
