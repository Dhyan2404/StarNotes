package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DeviceUnlinkPolicy;
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
public class DeviceApprovalsChangeUnlinkActionDetails {
    protected final DeviceUnlinkPolicy newValue;
    protected final DeviceUnlinkPolicy previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected DeviceUnlinkPolicy newValue = null;
        protected DeviceUnlinkPolicy previousValue = null;

        public DeviceApprovalsChangeUnlinkActionDetails build() {
            return new DeviceApprovalsChangeUnlinkActionDetails(this.newValue, this.previousValue);
        }

        public Builder withNewValue(DeviceUnlinkPolicy deviceUnlinkPolicy) {
            this.newValue = deviceUnlinkPolicy;
            return this;
        }

        public Builder withPreviousValue(DeviceUnlinkPolicy deviceUnlinkPolicy) {
            this.previousValue = deviceUnlinkPolicy;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceApprovalsChangeUnlinkActionDetails$a */
    /* loaded from: classes4.dex */
    public static class C3424a extends StructSerializer<DeviceApprovalsChangeUnlinkActionDetails> {

        /* renamed from: b */
        public static final C3424a f18817b = new C3424a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceApprovalsChangeUnlinkActionDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            DeviceUnlinkPolicy deviceUnlinkPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            DeviceUnlinkPolicy deviceUnlinkPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    deviceUnlinkPolicy = (DeviceUnlinkPolicy) StoneSerializers.nullable(DeviceUnlinkPolicy.C3453b.f18846b).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    deviceUnlinkPolicy2 = (DeviceUnlinkPolicy) StoneSerializers.nullable(DeviceUnlinkPolicy.C3453b.f18846b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetails = new DeviceApprovalsChangeUnlinkActionDetails(deviceUnlinkPolicy, deviceUnlinkPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceApprovalsChangeUnlinkActionDetails, deviceApprovalsChangeUnlinkActionDetails.toStringMultiline());
            return deviceApprovalsChangeUnlinkActionDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (deviceApprovalsChangeUnlinkActionDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(DeviceUnlinkPolicy.C3453b.f18846b).serialize((StoneSerializer) deviceApprovalsChangeUnlinkActionDetails.newValue, jsonGenerator);
            }
            if (deviceApprovalsChangeUnlinkActionDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(DeviceUnlinkPolicy.C3453b.f18846b).serialize((StoneSerializer) deviceApprovalsChangeUnlinkActionDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceApprovalsChangeUnlinkActionDetails(DeviceUnlinkPolicy deviceUnlinkPolicy, DeviceUnlinkPolicy deviceUnlinkPolicy2) {
        this.newValue = deviceUnlinkPolicy;
        this.previousValue = deviceUnlinkPolicy2;
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
        DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetails = (DeviceApprovalsChangeUnlinkActionDetails) obj;
        DeviceUnlinkPolicy deviceUnlinkPolicy = this.newValue;
        DeviceUnlinkPolicy deviceUnlinkPolicy2 = deviceApprovalsChangeUnlinkActionDetails.newValue;
        if (deviceUnlinkPolicy == deviceUnlinkPolicy2 || (deviceUnlinkPolicy != null && deviceUnlinkPolicy.equals(deviceUnlinkPolicy2))) {
            DeviceUnlinkPolicy deviceUnlinkPolicy3 = this.previousValue;
            DeviceUnlinkPolicy deviceUnlinkPolicy4 = deviceApprovalsChangeUnlinkActionDetails.previousValue;
            if (deviceUnlinkPolicy3 == deviceUnlinkPolicy4) {
                return true;
            }
            if (deviceUnlinkPolicy3 != null && deviceUnlinkPolicy3.equals(deviceUnlinkPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public DeviceUnlinkPolicy getNewValue() {
        return this.newValue;
    }

    public DeviceUnlinkPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3424a.f18817b.serialize((C3424a) this, false);
    }

    public String toStringMultiline() {
        return C3424a.f18817b.serialize((C3424a) this, true);
    }

    public DeviceApprovalsChangeUnlinkActionDetails() {
        this(null, null);
    }
}
