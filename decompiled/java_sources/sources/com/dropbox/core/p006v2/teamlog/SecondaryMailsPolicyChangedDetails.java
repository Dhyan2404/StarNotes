package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SecondaryMailsPolicy;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class SecondaryMailsPolicyChangedDetails {
    protected final SecondaryMailsPolicy newValue;
    protected final SecondaryMailsPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SecondaryMailsPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3991a extends StructSerializer<SecondaryMailsPolicyChangedDetails> {

        /* renamed from: b */
        public static final C3991a f20267b = new C3991a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SecondaryMailsPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SecondaryMailsPolicy secondaryMailsPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SecondaryMailsPolicy secondaryMailsPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    secondaryMailsPolicy = SecondaryMailsPolicy.C3990b.f20266b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    secondaryMailsPolicy2 = SecondaryMailsPolicy.C3990b.f20266b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (secondaryMailsPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (secondaryMailsPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SecondaryMailsPolicyChangedDetails secondaryMailsPolicyChangedDetails = new SecondaryMailsPolicyChangedDetails(secondaryMailsPolicy, secondaryMailsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(secondaryMailsPolicyChangedDetails, secondaryMailsPolicyChangedDetails.toStringMultiline());
            return secondaryMailsPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SecondaryMailsPolicyChangedDetails secondaryMailsPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            SecondaryMailsPolicy.C3990b c3990b = SecondaryMailsPolicy.C3990b.f20266b;
            c3990b.serialize(secondaryMailsPolicyChangedDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c3990b.serialize(secondaryMailsPolicyChangedDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SecondaryMailsPolicyChangedDetails(SecondaryMailsPolicy secondaryMailsPolicy, SecondaryMailsPolicy secondaryMailsPolicy2) {
        if (secondaryMailsPolicy == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = secondaryMailsPolicy;
        if (secondaryMailsPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = secondaryMailsPolicy2;
    }

    public boolean equals(Object obj) {
        SecondaryMailsPolicy secondaryMailsPolicy;
        SecondaryMailsPolicy secondaryMailsPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SecondaryMailsPolicyChangedDetails secondaryMailsPolicyChangedDetails = (SecondaryMailsPolicyChangedDetails) obj;
        SecondaryMailsPolicy secondaryMailsPolicy3 = this.previousValue;
        SecondaryMailsPolicy secondaryMailsPolicy4 = secondaryMailsPolicyChangedDetails.previousValue;
        return (secondaryMailsPolicy3 == secondaryMailsPolicy4 || secondaryMailsPolicy3.equals(secondaryMailsPolicy4)) && ((secondaryMailsPolicy = this.newValue) == (secondaryMailsPolicy2 = secondaryMailsPolicyChangedDetails.newValue) || secondaryMailsPolicy.equals(secondaryMailsPolicy2));
    }

    public SecondaryMailsPolicy getNewValue() {
        return this.newValue;
    }

    public SecondaryMailsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C3991a.f20267b.serialize((C3991a) this, false);
    }

    public String toStringMultiline() {
        return C3991a.f20267b.serialize((C3991a) this, true);
    }
}
