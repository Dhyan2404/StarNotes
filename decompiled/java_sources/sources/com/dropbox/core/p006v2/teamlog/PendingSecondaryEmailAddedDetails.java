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
public class PendingSecondaryEmailAddedDetails {
    protected final String secondaryEmail;

    /* renamed from: com.dropbox.core.v2.teamlog.PendingSecondaryEmailAddedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3959a extends StructSerializer<PendingSecondaryEmailAddedDetails> {

        /* renamed from: b */
        public static final C3959a f20235b = new C3959a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PendingSecondaryEmailAddedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("secondary_email".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"secondary_email\" missing.");
            }
            PendingSecondaryEmailAddedDetails pendingSecondaryEmailAddedDetails = new PendingSecondaryEmailAddedDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(pendingSecondaryEmailAddedDetails, pendingSecondaryEmailAddedDetails.toStringMultiline());
            return pendingSecondaryEmailAddedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PendingSecondaryEmailAddedDetails pendingSecondaryEmailAddedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("secondary_email");
            StoneSerializers.string().serialize((StoneSerializer<String>) pendingSecondaryEmailAddedDetails.secondaryEmail, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PendingSecondaryEmailAddedDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'secondaryEmail' is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String 'secondaryEmail' is longer than 255");
        }
        this.secondaryEmail = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.secondaryEmail;
        String str2 = ((PendingSecondaryEmailAddedDetails) obj).secondaryEmail;
        return str == str2 || str.equals(str2);
    }

    public String getSecondaryEmail() {
        return this.secondaryEmail;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.secondaryEmail});
    }

    public String toString() {
        return C3959a.f20235b.serialize((C3959a) this, false);
    }

    public String toStringMultiline() {
        return C3959a.f20235b.serialize((C3959a) this, true);
    }
}
