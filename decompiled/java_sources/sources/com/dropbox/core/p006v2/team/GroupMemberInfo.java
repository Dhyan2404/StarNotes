package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupAccessType;
import com.dropbox.core.p006v2.team.MemberProfile;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.common.Scopes;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class GroupMemberInfo {
    protected final GroupAccessType accessType;
    protected final MemberProfile profile;

    /* renamed from: com.dropbox.core.v2.team.GroupMemberInfo$a */
    /* loaded from: classes4.dex */
    public static class C3062a extends StructSerializer<GroupMemberInfo> {

        /* renamed from: b */
        public static final C3062a f18193b = new C3062a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupMemberInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MemberProfile memberProfile = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            GroupAccessType groupAccessType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (Scopes.PROFILE.equals(currentName)) {
                    memberProfile = MemberProfile.C3144a.f18345b.deserialize(jsonParser);
                } else if ("access_type".equals(currentName)) {
                    groupAccessType = GroupAccessType.C3055b.f18182b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberProfile == null) {
                throw new JsonParseException(jsonParser, "Required field \"profile\" missing.");
            }
            if (groupAccessType == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            GroupMemberInfo groupMemberInfo = new GroupMemberInfo(memberProfile, groupAccessType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupMemberInfo, groupMemberInfo.toStringMultiline());
            return groupMemberInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupMemberInfo groupMemberInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(Scopes.PROFILE);
            MemberProfile.C3144a.f18345b.serialize((MemberProfile.C3144a) groupMemberInfo.profile, jsonGenerator);
            jsonGenerator.writeFieldName("access_type");
            GroupAccessType.C3055b.f18182b.serialize(groupMemberInfo.accessType, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupMemberInfo(MemberProfile memberProfile, GroupAccessType groupAccessType) {
        if (memberProfile == null) {
            throw new IllegalArgumentException("Required value for 'profile' is null");
        }
        this.profile = memberProfile;
        if (groupAccessType == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = groupAccessType;
    }

    public boolean equals(Object obj) {
        GroupAccessType groupAccessType;
        GroupAccessType groupAccessType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupMemberInfo groupMemberInfo = (GroupMemberInfo) obj;
        MemberProfile memberProfile = this.profile;
        MemberProfile memberProfile2 = groupMemberInfo.profile;
        return (memberProfile == memberProfile2 || memberProfile.equals(memberProfile2)) && ((groupAccessType = this.accessType) == (groupAccessType2 = groupMemberInfo.accessType) || groupAccessType.equals(groupAccessType2));
    }

    public GroupAccessType getAccessType() {
        return this.accessType;
    }

    public MemberProfile getProfile() {
        return this.profile;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.profile, this.accessType});
    }

    public String toString() {
        return C3062a.f18193b.serialize((C3062a) this, false);
    }

    public String toStringMultiline() {
        return C3062a.f18193b.serialize((C3062a) this, true);
    }
}
