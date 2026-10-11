package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.TeamFolderAccessError;
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
public class TeamFolderListError {
    protected final TeamFolderAccessError accessError;

    /* renamed from: com.dropbox.core.v2.team.TeamFolderListError$a */
    /* loaded from: classes4.dex */
    public static class C3231a extends StructSerializer<TeamFolderListError> {

        /* renamed from: b */
        public static final C3231a f18502b = new C3231a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderListError deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamFolderAccessError teamFolderAccessError = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_error".equals(currentName)) {
                    teamFolderAccessError = TeamFolderAccessError.C3214b.f18466b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamFolderAccessError == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_error\" missing.");
            }
            TeamFolderListError teamFolderListError = new TeamFolderListError(teamFolderAccessError);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamFolderListError, teamFolderListError.toStringMultiline());
            return teamFolderListError;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderListError teamFolderListError, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_error");
            TeamFolderAccessError.C3214b.f18466b.serialize(teamFolderListError.accessError, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamFolderListError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError == null) {
            throw new IllegalArgumentException("Required value for 'accessError' is null");
        }
        this.accessError = teamFolderAccessError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamFolderAccessError teamFolderAccessError = this.accessError;
        TeamFolderAccessError teamFolderAccessError2 = ((TeamFolderListError) obj).accessError;
        return teamFolderAccessError == teamFolderAccessError2 || teamFolderAccessError.equals(teamFolderAccessError2);
    }

    public TeamFolderAccessError getAccessError() {
        return this.accessError;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessError});
    }

    public String toString() {
        return C3231a.f18502b.serialize((C3231a) this, false);
    }

    public String toStringMultiline() {
        return C3231a.f18502b.serialize((C3231a) this, true);
    }
}
