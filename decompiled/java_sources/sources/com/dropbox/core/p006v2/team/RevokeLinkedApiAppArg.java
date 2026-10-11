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
public class RevokeLinkedApiAppArg {
    protected final String appId;
    protected final boolean keepAppFolder;
    protected final String teamMemberId;

    /* renamed from: com.dropbox.core.v2.team.RevokeLinkedApiAppArg$a */
    /* loaded from: classes4.dex */
    public static class C3203a extends StructSerializer<RevokeLinkedApiAppArg> {

        /* renamed from: b */
        public static final C3203a f18455b = new C3203a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeLinkedApiAppArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.TRUE;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("app_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("team_member_id".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("keep_app_folder".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"app_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_member_id\" missing.");
            }
            RevokeLinkedApiAppArg revokeLinkedApiAppArg = new RevokeLinkedApiAppArg(str2, str3, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(revokeLinkedApiAppArg, revokeLinkedApiAppArg.toStringMultiline());
            return revokeLinkedApiAppArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeLinkedApiAppArg revokeLinkedApiAppArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("app_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) revokeLinkedApiAppArg.appId, jsonGenerator);
            jsonGenerator.writeFieldName("team_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) revokeLinkedApiAppArg.teamMemberId, jsonGenerator);
            jsonGenerator.writeFieldName("keep_app_folder");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(revokeLinkedApiAppArg.keepAppFolder), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RevokeLinkedApiAppArg(String str, String str2, boolean z) {
        if (str != null) {
            this.appId = str;
            if (str2 != null) {
                this.teamMemberId = str2;
                this.keepAppFolder = z;
                return;
            }
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        throw new IllegalArgumentException("Required value for 'appId' is null");
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
        RevokeLinkedApiAppArg revokeLinkedApiAppArg = (RevokeLinkedApiAppArg) obj;
        String str3 = this.appId;
        String str4 = revokeLinkedApiAppArg.appId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.teamMemberId) == (str2 = revokeLinkedApiAppArg.teamMemberId) || str.equals(str2)) && this.keepAppFolder == revokeLinkedApiAppArg.keepAppFolder;
    }

    public String getAppId() {
        return this.appId;
    }

    public boolean getKeepAppFolder() {
        return this.keepAppFolder;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appId, this.teamMemberId, Boolean.valueOf(this.keepAppFolder)});
    }

    public String toString() {
        return C3203a.f18455b.serialize((C3203a) this, false);
    }

    public String toStringMultiline() {
        return C3203a.f18455b.serialize((C3203a) this, true);
    }

    public RevokeLinkedApiAppArg(String str, String str2) {
        this(str, str2, true);
    }
}
