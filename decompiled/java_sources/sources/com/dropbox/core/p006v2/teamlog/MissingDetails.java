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
public class MissingDetails {
    protected final String sourceEventFields;

    /* renamed from: com.dropbox.core.v2.teamlog.MissingDetails$a */
    /* loaded from: classes4.dex */
    public static class C3793a extends StructSerializer<MissingDetails> {

        /* renamed from: b */
        public static final C3793a f20066b = new C3793a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MissingDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("source_event_fields".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            MissingDetails missingDetails = new MissingDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(missingDetails, missingDetails.toStringMultiline());
            return missingDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MissingDetails missingDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (missingDetails.sourceEventFields != null) {
                jsonGenerator.writeFieldName("source_event_fields");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) missingDetails.sourceEventFields, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MissingDetails(String str) {
        this.sourceEventFields = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.sourceEventFields;
        String str2 = ((MissingDetails) obj).sourceEventFields;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getSourceEventFields() {
        return this.sourceEventFields;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sourceEventFields});
    }

    public String toString() {
        return C3793a.f20066b.serialize((C3793a) this, false);
    }

    public String toStringMultiline() {
        return C3793a.f20066b.serialize((C3793a) this, true);
    }

    public MissingDetails() {
        this(null);
    }
}
