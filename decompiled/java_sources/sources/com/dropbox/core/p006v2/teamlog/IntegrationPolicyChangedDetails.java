package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.IntegrationPolicy;
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
public class IntegrationPolicyChangedDetails {
    protected final String integrationName;
    protected final IntegrationPolicy newValue;
    protected final IntegrationPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.IntegrationPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3687a extends StructSerializer<IntegrationPolicyChangedDetails> {

        /* renamed from: b */
        public static final C3687a f19955b = new C3687a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IntegrationPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            IntegrationPolicy integrationPolicy = null;
            IntegrationPolicy integrationPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("integration_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    integrationPolicy = IntegrationPolicy.C3686b.f19954b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    integrationPolicy2 = IntegrationPolicy.C3686b.f19954b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"integration_name\" missing.");
            }
            if (integrationPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (integrationPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            IntegrationPolicyChangedDetails integrationPolicyChangedDetails = new IntegrationPolicyChangedDetails(str2, integrationPolicy, integrationPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(integrationPolicyChangedDetails, integrationPolicyChangedDetails.toStringMultiline());
            return integrationPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(IntegrationPolicyChangedDetails integrationPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("integration_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) integrationPolicyChangedDetails.integrationName, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            IntegrationPolicy.C3686b c3686b = IntegrationPolicy.C3686b.f19954b;
            c3686b.serialize(integrationPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3686b.serialize(integrationPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public IntegrationPolicyChangedDetails(String str, IntegrationPolicy integrationPolicy, IntegrationPolicy integrationPolicy2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'integrationName' is null");
        }
        this.integrationName = str;
        if (integrationPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = integrationPolicy;
        if (integrationPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = integrationPolicy2;
    }

    public boolean equals(Object obj) {
        IntegrationPolicy integrationPolicy;
        IntegrationPolicy integrationPolicy2;
        IntegrationPolicy integrationPolicy3;
        IntegrationPolicy integrationPolicy4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        IntegrationPolicyChangedDetails integrationPolicyChangedDetails = (IntegrationPolicyChangedDetails) obj;
        String str = this.integrationName;
        String str2 = integrationPolicyChangedDetails.integrationName;
        return (str == str2 || str.equals(str2)) && ((integrationPolicy = this.newValue) == (integrationPolicy2 = integrationPolicyChangedDetails.newValue) || integrationPolicy.equals(integrationPolicy2)) && ((integrationPolicy3 = this.previousValue) == (integrationPolicy4 = integrationPolicyChangedDetails.previousValue) || integrationPolicy3.equals(integrationPolicy4));
    }

    public String getIntegrationName() {
        return this.integrationName;
    }

    public IntegrationPolicy getNewValue() {
        return this.newValue;
    }

    public IntegrationPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.integrationName, this.newValue, this.previousValue});
    }

    public String toString() {
        return C3687a.f19955b.serialize((C3687a) this, false);
    }

    public String toStringMultiline() {
        return C3687a.f19955b.serialize((C3687a) this, true);
    }
}
