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
public class PrimaryTeamRequestCanceledDetails {
    protected final String secondaryTeam;
    protected final String sentBy;

    /* renamed from: com.dropbox.core.v2.teamlog.PrimaryTeamRequestCanceledDetails$a */
    /* loaded from: classes4.dex */
    public static class C3966a extends StructSerializer<PrimaryTeamRequestCanceledDetails> {

        /* renamed from: b */
        public static final C3966a f20242b = new C3966a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PrimaryTeamRequestCanceledDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("secondary_team".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sent_by".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"secondary_team\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sent_by\" missing.");
            }
            PrimaryTeamRequestCanceledDetails primaryTeamRequestCanceledDetails = new PrimaryTeamRequestCanceledDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(primaryTeamRequestCanceledDetails, primaryTeamRequestCanceledDetails.toStringMultiline());
            return primaryTeamRequestCanceledDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PrimaryTeamRequestCanceledDetails primaryTeamRequestCanceledDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("secondary_team");
            StoneSerializers.string().serialize((StoneSerializer<String>) primaryTeamRequestCanceledDetails.secondaryTeam, jsonGenerator);
            jsonGenerator.writeFieldName("sent_by");
            StoneSerializers.string().serialize((StoneSerializer<String>) primaryTeamRequestCanceledDetails.sentBy, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PrimaryTeamRequestCanceledDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'secondaryTeam' is null");
        }
        this.secondaryTeam = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'sentBy' is null");
        }
        this.sentBy = str2;
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
        PrimaryTeamRequestCanceledDetails primaryTeamRequestCanceledDetails = (PrimaryTeamRequestCanceledDetails) obj;
        String str3 = this.secondaryTeam;
        String str4 = primaryTeamRequestCanceledDetails.secondaryTeam;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.sentBy) == (str2 = primaryTeamRequestCanceledDetails.sentBy) || str.equals(str2));
    }

    public String getSecondaryTeam() {
        return this.secondaryTeam;
    }

    public String getSentBy() {
        return this.sentBy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.secondaryTeam, this.sentBy});
    }

    public String toString() {
        return C3966a.f20242b.serialize((C3966a) this, false);
    }

    public String toStringMultiline() {
        return C3966a.f20242b.serialize((C3966a) this, true);
    }
}
