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
public class PaperContentPermanentlyDeleteDetails {
    protected final String eventUuid;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperContentPermanentlyDeleteDetails$a */
    /* loaded from: classes4.dex */
    public static class C3854a extends StructSerializer<PaperContentPermanentlyDeleteDetails> {

        /* renamed from: b */
        public static final C3854a f20127b = new C3854a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperContentPermanentlyDeleteDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            PaperContentPermanentlyDeleteDetails paperContentPermanentlyDeleteDetails = new PaperContentPermanentlyDeleteDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperContentPermanentlyDeleteDetails, paperContentPermanentlyDeleteDetails.toStringMultiline());
            return paperContentPermanentlyDeleteDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperContentPermanentlyDeleteDetails paperContentPermanentlyDeleteDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperContentPermanentlyDeleteDetails.eventUuid, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperContentPermanentlyDeleteDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.eventUuid;
        String str2 = ((PaperContentPermanentlyDeleteDetails) obj).eventUuid;
        return str == str2 || str.equals(str2);
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid});
    }

    public String toString() {
        return C3854a.f20127b.serialize((C3854a) this, false);
    }

    public String toStringMultiline() {
        return C3854a.f20127b.serialize((C3854a) this, true);
    }
}
