package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ContentPermanentDeletePolicy;
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
public class PermanentDeleteChangePolicyDetails {
    protected final ContentPermanentDeletePolicy newValue;
    protected final ContentPermanentDeletePolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.PermanentDeleteChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3961a extends StructSerializer<PermanentDeleteChangePolicyDetails> {

        /* renamed from: b */
        public static final C3961a f20237b = new C3961a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PermanentDeleteChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ContentPermanentDeletePolicy contentPermanentDeletePolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ContentPermanentDeletePolicy contentPermanentDeletePolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    contentPermanentDeletePolicy = ContentPermanentDeletePolicy.C3401b.f18788b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    contentPermanentDeletePolicy2 = (ContentPermanentDeletePolicy) StoneSerializers.nullable(ContentPermanentDeletePolicy.C3401b.f18788b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (contentPermanentDeletePolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetails = new PermanentDeleteChangePolicyDetails(contentPermanentDeletePolicy, contentPermanentDeletePolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(permanentDeleteChangePolicyDetails, permanentDeleteChangePolicyDetails.toStringMultiline());
            return permanentDeleteChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            ContentPermanentDeletePolicy.C3401b c3401b = ContentPermanentDeletePolicy.C3401b.f18788b;
            c3401b.serialize(permanentDeleteChangePolicyDetails.newValue, jsonGenerator);
            if (permanentDeleteChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3401b).serialize((StoneSerializer) permanentDeleteChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PermanentDeleteChangePolicyDetails(ContentPermanentDeletePolicy contentPermanentDeletePolicy, ContentPermanentDeletePolicy contentPermanentDeletePolicy2) {
        if (contentPermanentDeletePolicy != null) {
            this.newValue = contentPermanentDeletePolicy;
            this.previousValue = contentPermanentDeletePolicy2;
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
        PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetails = (PermanentDeleteChangePolicyDetails) obj;
        ContentPermanentDeletePolicy contentPermanentDeletePolicy = this.newValue;
        ContentPermanentDeletePolicy contentPermanentDeletePolicy2 = permanentDeleteChangePolicyDetails.newValue;
        if (contentPermanentDeletePolicy == contentPermanentDeletePolicy2 || contentPermanentDeletePolicy.equals(contentPermanentDeletePolicy2)) {
            ContentPermanentDeletePolicy contentPermanentDeletePolicy3 = this.previousValue;
            ContentPermanentDeletePolicy contentPermanentDeletePolicy4 = permanentDeleteChangePolicyDetails.previousValue;
            if (contentPermanentDeletePolicy3 == contentPermanentDeletePolicy4) {
                return true;
            }
            if (contentPermanentDeletePolicy3 != null && contentPermanentDeletePolicy3.equals(contentPermanentDeletePolicy4)) {
                return true;
            }
        }
        return false;
    }

    public ContentPermanentDeletePolicy getNewValue() {
        return this.newValue;
    }

    public ContentPermanentDeletePolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3961a.f20237b.serialize((C3961a) this, false);
    }

    public String toStringMultiline() {
        return C3961a.f20237b.serialize((C3961a) this, true);
    }

    public PermanentDeleteChangePolicyDetails(ContentPermanentDeletePolicy contentPermanentDeletePolicy) {
        this(contentPermanentDeletePolicy, null);
    }
}
