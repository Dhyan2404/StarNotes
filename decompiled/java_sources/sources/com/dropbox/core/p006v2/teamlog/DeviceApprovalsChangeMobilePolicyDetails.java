package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DeviceApprovalsPolicy;
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
public class DeviceApprovalsChangeMobilePolicyDetails {
    protected final DeviceApprovalsPolicy newValue;
    protected final DeviceApprovalsPolicy previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected DeviceApprovalsPolicy newValue = null;
        protected DeviceApprovalsPolicy previousValue = null;

        public DeviceApprovalsChangeMobilePolicyDetails build() {
            return new DeviceApprovalsChangeMobilePolicyDetails(this.newValue, this.previousValue);
        }

        public Builder withNewValue(DeviceApprovalsPolicy deviceApprovalsPolicy) {
            this.newValue = deviceApprovalsPolicy;
            return this;
        }

        public Builder withPreviousValue(DeviceApprovalsPolicy deviceApprovalsPolicy) {
            this.previousValue = deviceApprovalsPolicy;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceApprovalsChangeMobilePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3420a extends StructSerializer<DeviceApprovalsChangeMobilePolicyDetails> {

        /* renamed from: b */
        public static final C3420a f18813b = new C3420a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceApprovalsChangeMobilePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            DeviceApprovalsPolicy deviceApprovalsPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            DeviceApprovalsPolicy deviceApprovalsPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    deviceApprovalsPolicy = (DeviceApprovalsPolicy) StoneSerializers.nullable(DeviceApprovalsPolicy.C3427b.f18820b).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    deviceApprovalsPolicy2 = (DeviceApprovalsPolicy) StoneSerializers.nullable(DeviceApprovalsPolicy.C3427b.f18820b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetails = new DeviceApprovalsChangeMobilePolicyDetails(deviceApprovalsPolicy, deviceApprovalsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceApprovalsChangeMobilePolicyDetails, deviceApprovalsChangeMobilePolicyDetails.toStringMultiline());
            return deviceApprovalsChangeMobilePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (deviceApprovalsChangeMobilePolicyDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(DeviceApprovalsPolicy.C3427b.f18820b).serialize((StoneSerializer) deviceApprovalsChangeMobilePolicyDetails.newValue, jsonGenerator);
            }
            if (deviceApprovalsChangeMobilePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(DeviceApprovalsPolicy.C3427b.f18820b).serialize((StoneSerializer) deviceApprovalsChangeMobilePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceApprovalsChangeMobilePolicyDetails(DeviceApprovalsPolicy deviceApprovalsPolicy, DeviceApprovalsPolicy deviceApprovalsPolicy2) {
        this.newValue = deviceApprovalsPolicy;
        this.previousValue = deviceApprovalsPolicy2;
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
        DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetails = (DeviceApprovalsChangeMobilePolicyDetails) obj;
        DeviceApprovalsPolicy deviceApprovalsPolicy = this.newValue;
        DeviceApprovalsPolicy deviceApprovalsPolicy2 = deviceApprovalsChangeMobilePolicyDetails.newValue;
        if (deviceApprovalsPolicy == deviceApprovalsPolicy2 || (deviceApprovalsPolicy != null && deviceApprovalsPolicy.equals(deviceApprovalsPolicy2))) {
            DeviceApprovalsPolicy deviceApprovalsPolicy3 = this.previousValue;
            DeviceApprovalsPolicy deviceApprovalsPolicy4 = deviceApprovalsChangeMobilePolicyDetails.previousValue;
            if (deviceApprovalsPolicy3 == deviceApprovalsPolicy4) {
                return true;
            }
            if (deviceApprovalsPolicy3 != null && deviceApprovalsPolicy3.equals(deviceApprovalsPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public DeviceApprovalsPolicy getNewValue() {
        return this.newValue;
    }

    public DeviceApprovalsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3420a.f18813b.serialize((C3420a) this, false);
    }

    public String toStringMultiline() {
        return C3420a.f18813b.serialize((C3420a) this, true);
    }

    public DeviceApprovalsChangeMobilePolicyDetails() {
        this(null, null);
    }
}
