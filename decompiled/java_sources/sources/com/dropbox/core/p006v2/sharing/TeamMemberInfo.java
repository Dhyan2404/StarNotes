package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.users.Team;
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
public class TeamMemberInfo {
    protected final String displayName;
    protected final String memberId;
    protected final Team teamInfo;

    /* renamed from: com.dropbox.core.v2.sharing.TeamMemberInfo$a */
    /* loaded from: classes4.dex */
    public static class C2964a extends StructSerializer<TeamMemberInfo> {

        /* renamed from: b */
        public static final C2964a f17992b = new C2964a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMemberInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Team team = null;
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_info".equals(currentName)) {
                    team = Team.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("display_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("member_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (team == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_info\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"display_name\" missing.");
            }
            TeamMemberInfo teamMemberInfo = new TeamMemberInfo(team, str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMemberInfo, teamMemberInfo.toStringMultiline());
            return teamMemberInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMemberInfo teamMemberInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_info");
            Team.Serializer.INSTANCE.serialize((Team.Serializer) teamMemberInfo.teamInfo, jsonGenerator);
            jsonGenerator.writeFieldName("display_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMemberInfo.displayName, jsonGenerator);
            if (teamMemberInfo.memberId != null) {
                jsonGenerator.writeFieldName("member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberInfo.memberId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMemberInfo(Team team, String str, String str2) {
        if (team != null) {
            this.teamInfo = team;
            if (str != null) {
                this.displayName = str;
                this.memberId = str2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        throw new IllegalArgumentException("Required value for 'teamInfo' is null");
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
        TeamMemberInfo teamMemberInfo = (TeamMemberInfo) obj;
        Team team = this.teamInfo;
        Team team2 = teamMemberInfo.teamInfo;
        if ((team == team2 || team.equals(team2)) && ((str = this.displayName) == (str2 = teamMemberInfo.displayName) || str.equals(str2))) {
            String str3 = this.memberId;
            String str4 = teamMemberInfo.memberId;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getMemberId() {
        return this.memberId;
    }

    public Team getTeamInfo() {
        return this.teamInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamInfo, this.displayName, this.memberId});
    }

    public String toString() {
        return C2964a.f17992b.serialize((C2964a) this, false);
    }

    public String toStringMultiline() {
        return C2964a.f17992b.serialize((C2964a) this, true);
    }

    public TeamMemberInfo(Team team, String str) {
        this(team, str, null);
    }
}
