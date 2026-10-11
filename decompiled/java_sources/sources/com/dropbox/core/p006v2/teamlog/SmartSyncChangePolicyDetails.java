package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.SmartSyncPolicy;
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
public class SmartSyncChangePolicyDetails {
    protected final SmartSyncPolicy newValue;
    protected final SmartSyncPolicy previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected SmartSyncPolicy newValue = null;
        protected SmartSyncPolicy previousValue = null;

        public SmartSyncChangePolicyDetails build() {
            return new SmartSyncChangePolicyDetails(this.newValue, this.previousValue);
        }

        public Builder withNewValue(SmartSyncPolicy smartSyncPolicy) {
            this.newValue = smartSyncPolicy;
            return this;
        }

        public Builder withPreviousValue(SmartSyncPolicy smartSyncPolicy) {
            this.previousValue = smartSyncPolicy;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SmartSyncChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4221a extends StructSerializer<SmartSyncChangePolicyDetails> {

        /* renamed from: b */
        public static final C4221a f20497b = new C4221a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SmartSyncChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SmartSyncPolicy smartSyncPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SmartSyncPolicy smartSyncPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    smartSyncPolicy = (SmartSyncPolicy) StoneSerializers.nullable(SmartSyncPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    smartSyncPolicy2 = (SmartSyncPolicy) StoneSerializers.nullable(SmartSyncPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SmartSyncChangePolicyDetails smartSyncChangePolicyDetails = new SmartSyncChangePolicyDetails(smartSyncPolicy, smartSyncPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(smartSyncChangePolicyDetails, smartSyncChangePolicyDetails.toStringMultiline());
            return smartSyncChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SmartSyncChangePolicyDetails smartSyncChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (smartSyncChangePolicyDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(SmartSyncPolicy.Serializer.INSTANCE).serialize((StoneSerializer) smartSyncChangePolicyDetails.newValue, jsonGenerator);
            }
            if (smartSyncChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(SmartSyncPolicy.Serializer.INSTANCE).serialize((StoneSerializer) smartSyncChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SmartSyncChangePolicyDetails(SmartSyncPolicy smartSyncPolicy, SmartSyncPolicy smartSyncPolicy2) {
        this.newValue = smartSyncPolicy;
        this.previousValue = smartSyncPolicy2;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SmartSyncChangePolicyDetails smartSyncChangePolicyDetails = (SmartSyncChangePolicyDetails) obj;
        SmartSyncPolicy smartSyncPolicy = this.newValue;
        SmartSyncPolicy smartSyncPolicy2 = smartSyncChangePolicyDetails.newValue;
        if (smartSyncPolicy == smartSyncPolicy2 || (smartSyncPolicy != null && smartSyncPolicy.equals(smartSyncPolicy2))) {
            SmartSyncPolicy smartSyncPolicy3 = this.previousValue;
            SmartSyncPolicy smartSyncPolicy4 = smartSyncChangePolicyDetails.previousValue;
            if (smartSyncPolicy3 == smartSyncPolicy4) {
                return true;
            }
            if (smartSyncPolicy3 != null && smartSyncPolicy3.equals(smartSyncPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public SmartSyncPolicy getNewValue() {
        return this.newValue;
    }

    public SmartSyncPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4221a.f20497b.serialize((C4221a) this, false);
    }

    public String toStringMultiline() {
        return C4221a.f20497b.serialize((C4221a) this, true);
    }

    public SmartSyncChangePolicyDetails() {
        this(null, null);
    }
}
