package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.TeamFolderMetadata;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class TeamFolderListResult {
    protected final String cursor;
    protected final boolean hasMore;
    protected final List<TeamFolderMetadata> teamFolders;

    /* renamed from: com.dropbox.core.v2.team.TeamFolderListResult$a */
    /* loaded from: classes4.dex */
    public static class C3232a extends StructSerializer<TeamFolderListResult> {

        /* renamed from: b */
        public static final C3232a f18503b = new C3232a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderListResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
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
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_folders".equals(currentName)) {
                    list = (List) StoneSerializers.list(TeamFolderMetadata.C3233a.f18504b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_folders\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            TeamFolderListResult teamFolderListResult = new TeamFolderListResult(list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamFolderListResult, teamFolderListResult.toStringMultiline());
            return teamFolderListResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderListResult teamFolderListResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_folders");
            StoneSerializers.list(TeamFolderMetadata.C3233a.f18504b).serialize((StoneSerializer) teamFolderListResult.teamFolders, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamFolderListResult.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(teamFolderListResult.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamFolderListResult(List<TeamFolderMetadata> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'teamFolders' is null");
        }
        Iterator<TeamFolderMetadata> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'teamFolders' is null");
            }
        }
        this.teamFolders = list;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = str;
        this.hasMore = z;
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
        TeamFolderListResult teamFolderListResult = (TeamFolderListResult) obj;
        List<TeamFolderMetadata> list = this.teamFolders;
        List<TeamFolderMetadata> list2 = teamFolderListResult.teamFolders;
        return (list == list2 || list.equals(list2)) && ((str = this.cursor) == (str2 = teamFolderListResult.cursor) || str.equals(str2)) && this.hasMore == teamFolderListResult.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public List<TeamFolderMetadata> getTeamFolders() {
        return this.teamFolders;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamFolders, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C3232a.f18503b.serialize((C3232a) this, false);
    }

    public String toStringMultiline() {
        return C3232a.f18503b.serialize((C3232a) this, true);
    }
}
