package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.team.TeamFolderStatus;
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
public class TeamFolderChangeStatusDetails {
    protected final TeamFolderStatus newValue;
    protected final TeamFolderStatus previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamFolderChangeStatusDetails$a */
    /* loaded from: classes4.dex */
    public static class C4273a extends StructSerializer<TeamFolderChangeStatusDetails> {

        /* renamed from: b */
        public static final C4273a f20549b = new C4273a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderChangeStatusDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamFolderStatus teamFolderStatus = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TeamFolderStatus teamFolderStatus2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    teamFolderStatus = TeamFolderStatus.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    teamFolderStatus2 = (TeamFolderStatus) StoneSerializers.nullable(TeamFolderStatus.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamFolderStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            TeamFolderChangeStatusDetails teamFolderChangeStatusDetails = new TeamFolderChangeStatusDetails(teamFolderStatus, teamFolderStatus2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamFolderChangeStatusDetails, teamFolderChangeStatusDetails.toStringMultiline());
            return teamFolderChangeStatusDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderChangeStatusDetails teamFolderChangeStatusDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            TeamFolderStatus.Serializer serializer = TeamFolderStatus.Serializer.INSTANCE;
            serializer.serialize(teamFolderChangeStatusDetails.newValue, jsonGenerator);
            if (teamFolderChangeStatusDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) teamFolderChangeStatusDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamFolderChangeStatusDetails(TeamFolderStatus teamFolderStatus, TeamFolderStatus teamFolderStatus2) {
        if (teamFolderStatus != null) {
            this.newValue = teamFolderStatus;
            this.previousValue = teamFolderStatus2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamFolderChangeStatusDetails teamFolderChangeStatusDetails = (TeamFolderChangeStatusDetails) obj;
        TeamFolderStatus teamFolderStatus = this.newValue;
        TeamFolderStatus teamFolderStatus2 = teamFolderChangeStatusDetails.newValue;
        if (teamFolderStatus == teamFolderStatus2 || teamFolderStatus.equals(teamFolderStatus2)) {
            TeamFolderStatus teamFolderStatus3 = this.previousValue;
            TeamFolderStatus teamFolderStatus4 = teamFolderChangeStatusDetails.previousValue;
            if (teamFolderStatus3 == teamFolderStatus4) {
                return true;
            }
            if (teamFolderStatus3 != null && teamFolderStatus3.equals(teamFolderStatus4)) {
                return true;
            }
        }
        return false;
    }

    public TeamFolderStatus getNewValue() {
        return this.newValue;
    }

    public TeamFolderStatus getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4273a.f20549b.serialize((C4273a) this, false);
    }

    public String toStringMultiline() {
        return C4273a.f20549b.serialize((C4273a) this, true);
    }

    public TeamFolderChangeStatusDetails(TeamFolderStatus teamFolderStatus) {
        this(teamFolderStatus, null);
    }
}
