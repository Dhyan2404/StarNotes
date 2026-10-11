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
public class DeviceApprovalsChangeDesktopPolicyDetails {
    protected final DeviceApprovalsPolicy newValue;
    protected final DeviceApprovalsPolicy previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected DeviceApprovalsPolicy newValue = null;
        protected DeviceApprovalsPolicy previousValue = null;

        public DeviceApprovalsChangeDesktopPolicyDetails build() {
            return new DeviceApprovalsChangeDesktopPolicyDetails(this.newValue, this.previousValue);
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

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceApprovalsChangeDesktopPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3418a extends StructSerializer<DeviceApprovalsChangeDesktopPolicyDetails> {

        /* renamed from: b */
        public static final C3418a f18811b = new C3418a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceApprovalsChangeDesktopPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            DeviceApprovalsChangeDesktopPolicyDetails deviceApprovalsChangeDesktopPolicyDetails = new DeviceApprovalsChangeDesktopPolicyDetails(deviceApprovalsPolicy, deviceApprovalsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceApprovalsChangeDesktopPolicyDetails, deviceApprovalsChangeDesktopPolicyDetails.toStringMultiline());
            return deviceApprovalsChangeDesktopPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceApprovalsChangeDesktopPolicyDetails deviceApprovalsChangeDesktopPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (deviceApprovalsChangeDesktopPolicyDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(DeviceApprovalsPolicy.C3427b.f18820b).serialize((StoneSerializer) deviceApprovalsChangeDesktopPolicyDetails.newValue, jsonGenerator);
            }
            if (deviceApprovalsChangeDesktopPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(DeviceApprovalsPolicy.C3427b.f18820b).serialize((StoneSerializer) deviceApprovalsChangeDesktopPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceApprovalsChangeDesktopPolicyDetails(DeviceApprovalsPolicy deviceApprovalsPolicy, DeviceApprovalsPolicy deviceApprovalsPolicy2) {
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
        DeviceApprovalsChangeDesktopPolicyDetails deviceApprovalsChangeDesktopPolicyDetails = (DeviceApprovalsChangeDesktopPolicyDetails) obj;
        DeviceApprovalsPolicy deviceApprovalsPolicy = this.newValue;
        DeviceApprovalsPolicy deviceApprovalsPolicy2 = deviceApprovalsChangeDesktopPolicyDetails.newValue;
        if (deviceApprovalsPolicy == deviceApprovalsPolicy2 || (deviceApprovalsPolicy != null && deviceApprovalsPolicy.equals(deviceApprovalsPolicy2))) {
            DeviceApprovalsPolicy deviceApprovalsPolicy3 = this.previousValue;
            DeviceApprovalsPolicy deviceApprovalsPolicy4 = deviceApprovalsChangeDesktopPolicyDetails.previousValue;
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
        return C3418a.f18811b.serialize((C3418a) this, false);
    }

    public String toStringMultiline() {
        return C3418a.f18811b.serialize((C3418a) this, true);
    }

    public DeviceApprovalsChangeDesktopPolicyDetails() {
        this(null, null);
    }
}
