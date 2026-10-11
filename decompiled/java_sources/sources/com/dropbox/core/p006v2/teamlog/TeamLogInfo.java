package com.dropbox.core.p006v2.teamlog;

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
public class TeamLogInfo {
    protected final String displayName;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4285a extends StructSerializer<TeamLogInfo> {

        /* renamed from: b */
        public static final C4285a f20561b = new C4285a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
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
                if ("display_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"display_name\" missing.");
            }
            TeamLogInfo teamLogInfo = new TeamLogInfo(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamLogInfo, teamLogInfo.toStringMultiline());
            return teamLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamLogInfo teamLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("display_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamLogInfo.displayName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamLogInfo(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        this.displayName = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.displayName;
        String str2 = ((TeamLogInfo) obj).displayName;
        return str == str2 || str.equals(str2);
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.displayName});
    }

    public String toString() {
        return C4285a.f20561b.serialize((C4285a) this, false);
    }

    public String toStringMultiline() {
        return C4285a.f20561b.serialize((C4285a) this, true);
    }
}
