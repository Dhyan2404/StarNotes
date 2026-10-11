package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.LinkAudience;
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
public class SharedContentChangeLinkAudienceDetails {
    protected final LinkAudience newValue;
    protected final LinkAudience previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentChangeLinkAudienceDetails$a */
    /* loaded from: classes4.dex */
    public static class C4040a extends StructSerializer<SharedContentChangeLinkAudienceDetails> {

        /* renamed from: b */
        public static final C4040a f20316b = new C4040a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentChangeLinkAudienceDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            LinkAudience linkAudience = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            LinkAudience linkAudience2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    linkAudience = LinkAudience.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    linkAudience2 = (LinkAudience) StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (linkAudience == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetails = new SharedContentChangeLinkAudienceDetails(linkAudience, linkAudience2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentChangeLinkAudienceDetails, sharedContentChangeLinkAudienceDetails.toStringMultiline());
            return sharedContentChangeLinkAudienceDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            LinkAudience.Serializer serializer = LinkAudience.Serializer.INSTANCE;
            serializer.serialize(sharedContentChangeLinkAudienceDetails.newValue, jsonGenerator);
            if (sharedContentChangeLinkAudienceDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) sharedContentChangeLinkAudienceDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentChangeLinkAudienceDetails(LinkAudience linkAudience, LinkAudience linkAudience2) {
        if (linkAudience != null) {
            this.newValue = linkAudience;
            this.previousValue = linkAudience2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetails = (SharedContentChangeLinkAudienceDetails) obj;
        LinkAudience linkAudience = this.newValue;
        LinkAudience linkAudience2 = sharedContentChangeLinkAudienceDetails.newValue;
        if (linkAudience == linkAudience2 || linkAudience.equals(linkAudience2)) {
            LinkAudience linkAudience3 = this.previousValue;
            LinkAudience linkAudience4 = sharedContentChangeLinkAudienceDetails.previousValue;
            if (linkAudience3 == linkAudience4) {
                return true;
            }
            if (linkAudience3 != null && linkAudience3.equals(linkAudience4)) {
                return true;
            }
        }
        return false;
    }

    public LinkAudience getNewValue() {
        return this.newValue;
    }

    public LinkAudience getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4040a.f20316b.serialize((C4040a) this, false);
    }

    public String toStringMultiline() {
        return C4040a.f20316b.serialize((C4040a) this, true);
    }

    public SharedContentChangeLinkAudienceDetails(LinkAudience linkAudience) {
        this(linkAudience, null);
    }
}
