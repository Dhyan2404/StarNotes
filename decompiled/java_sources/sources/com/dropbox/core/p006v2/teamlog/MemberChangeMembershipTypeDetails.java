package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamMembershipType;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class MemberChangeMembershipTypeDetails {
    protected final TeamMembershipType newValue;
    protected final TeamMembershipType prevValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberChangeMembershipTypeDetails$a */
    /* loaded from: classes4.dex */
    public static class C3737a extends StructSerializer<MemberChangeMembershipTypeDetails> {

        /* renamed from: b */
        public static final C3737a f20010b = new C3737a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberChangeMembershipTypeDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamMembershipType teamMembershipType = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TeamMembershipType teamMembershipType2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("prev_value".equals(currentName)) {
                    teamMembershipType = TeamMembershipType.C4288b.f20564b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    teamMembershipType2 = TeamMembershipType.C4288b.f20564b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamMembershipType == null) {
                throw new JsonParseException(jsonParser, "Required field \"prev_value\" missing.");
            }
            if (teamMembershipType2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetails = new MemberChangeMembershipTypeDetails(teamMembershipType, teamMembershipType2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberChangeMembershipTypeDetails, memberChangeMembershipTypeDetails.toStringMultiline());
            return memberChangeMembershipTypeDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("prev_value");
            TeamMembershipType.C4288b c4288b = TeamMembershipType.C4288b.f20564b;
            c4288b.serialize(memberChangeMembershipTypeDetails.prevValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c4288b.serialize(memberChangeMembershipTypeDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberChangeMembershipTypeDetails(TeamMembershipType teamMembershipType, TeamMembershipType teamMembershipType2) {
        if (teamMembershipType == null) {
            throw new IllegalArgumentException("Required value for 'prevValue' is null");
        }
        this.prevValue = teamMembershipType;
        if (teamMembershipType2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = teamMembershipType2;
    }

    public boolean equals(Object obj) {
        TeamMembershipType teamMembershipType;
        TeamMembershipType teamMembershipType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetails = (MemberChangeMembershipTypeDetails) obj;
        TeamMembershipType teamMembershipType3 = this.prevValue;
        TeamMembershipType teamMembershipType4 = memberChangeMembershipTypeDetails.prevValue;
        return (teamMembershipType3 == teamMembershipType4 || teamMembershipType3.equals(teamMembershipType4)) && ((teamMembershipType = this.newValue) == (teamMembershipType2 = memberChangeMembershipTypeDetails.newValue) || teamMembershipType.equals(teamMembershipType2));
    }

    public TeamMembershipType getNewValue() {
        return this.newValue;
    }

    public TeamMembershipType getPrevValue() {
        return this.prevValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.prevValue, this.newValue});
    }

    public String toString() {
        return C3737a.f20010b.serialize((C3737a) this, false);
    }

    public String toStringMultiline() {
        return C3737a.f20010b.serialize((C3737a) this, true);
    }
}
