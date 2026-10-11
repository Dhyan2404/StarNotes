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
public class TeamMergeRequestAutoCanceledDetails {
    protected final String details;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestAutoCanceledDetails$a */
    /* loaded from: classes4.dex */
    public static class C4299a extends StructSerializer<TeamMergeRequestAutoCanceledDetails> {

        /* renamed from: b */
        public static final C4299a f20578b = new C4299a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestAutoCanceledDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("details".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            TeamMergeRequestAutoCanceledDetails teamMergeRequestAutoCanceledDetails = new TeamMergeRequestAutoCanceledDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestAutoCanceledDetails, teamMergeRequestAutoCanceledDetails.toStringMultiline());
            return teamMergeRequestAutoCanceledDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestAutoCanceledDetails teamMergeRequestAutoCanceledDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (teamMergeRequestAutoCanceledDetails.details != null) {
                jsonGenerator.writeFieldName("details");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMergeRequestAutoCanceledDetails.details, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestAutoCanceledDetails(String str) {
        this.details = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.details;
        String str2 = ((TeamMergeRequestAutoCanceledDetails) obj).details;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getDetails() {
        return this.details;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.details});
    }

    public String toString() {
        return C4299a.f20578b.serialize((C4299a) this, false);
    }

    public String toStringMultiline() {
        return C4299a.f20578b.serialize((C4299a) this, true);
    }

    public TeamMergeRequestAutoCanceledDetails() {
        this(null);
    }
}
