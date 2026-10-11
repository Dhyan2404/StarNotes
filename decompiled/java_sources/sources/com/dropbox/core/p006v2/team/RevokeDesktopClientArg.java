package com.dropbox.core.p006v2.team;

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
public class RevokeDesktopClientArg extends DeviceSessionArg {
    protected final boolean deleteOnUnlink;

    /* renamed from: com.dropbox.core.v2.team.RevokeDesktopClientArg$a */
    /* loaded from: classes4.dex */
    public static class C3194a extends StructSerializer<RevokeDesktopClientArg> {

        /* renamed from: b */
        public static final C3194a f18442b = new C3194a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeDesktopClientArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("session_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("team_member_id".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("delete_on_unlink".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"session_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_member_id\" missing.");
            }
            RevokeDesktopClientArg revokeDesktopClientArg = new RevokeDesktopClientArg(str2, str3, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(revokeDesktopClientArg, revokeDesktopClientArg.toStringMultiline());
            return revokeDesktopClientArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeDesktopClientArg revokeDesktopClientArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("session_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) revokeDesktopClientArg.sessionId, jsonGenerator);
            jsonGenerator.writeFieldName("team_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) revokeDesktopClientArg.teamMemberId, jsonGenerator);
            jsonGenerator.writeFieldName("delete_on_unlink");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(revokeDesktopClientArg.deleteOnUnlink), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RevokeDesktopClientArg(String str, String str2, boolean z) {
        super(str, str2);
        this.deleteOnUnlink = z;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSessionArg
    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RevokeDesktopClientArg revokeDesktopClientArg = (RevokeDesktopClientArg) obj;
        String str3 = this.sessionId;
        String str4 = revokeDesktopClientArg.sessionId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.teamMemberId) == (str2 = revokeDesktopClientArg.teamMemberId) || str.equals(str2)) && this.deleteOnUnlink == revokeDesktopClientArg.deleteOnUnlink;
    }

    public boolean getDeleteOnUnlink() {
        return this.deleteOnUnlink;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSessionArg
    public String getSessionId() {
        return this.sessionId;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSessionArg
    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSessionArg
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{Boolean.valueOf(this.deleteOnUnlink)});
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSessionArg
    public String toString() {
        return C3194a.f18442b.serialize((C3194a) this, false);
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSessionArg
    public String toStringMultiline() {
        return C3194a.f18442b.serialize((C3194a) this, true);
    }

    public RevokeDesktopClientArg(String str, String str2) {
        this(str, str2, false);
    }
}
