package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.RolloutMethod;
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
public class DeviceApprovalsChangeOverageActionDetails {
    protected final RolloutMethod newValue;
    protected final RolloutMethod previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected RolloutMethod newValue = null;
        protected RolloutMethod previousValue = null;

        public DeviceApprovalsChangeOverageActionDetails build() {
            return new DeviceApprovalsChangeOverageActionDetails(this.newValue, this.previousValue);
        }

        public Builder withNewValue(RolloutMethod rolloutMethod) {
            this.newValue = rolloutMethod;
            return this;
        }

        public Builder withPreviousValue(RolloutMethod rolloutMethod) {
            this.previousValue = rolloutMethod;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceApprovalsChangeOverageActionDetails$a */
    /* loaded from: classes4.dex */
    public static class C3422a extends StructSerializer<DeviceApprovalsChangeOverageActionDetails> {

        /* renamed from: b */
        public static final C3422a f18815b = new C3422a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceApprovalsChangeOverageActionDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            RolloutMethod rolloutMethod = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            RolloutMethod rolloutMethod2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    rolloutMethod = (RolloutMethod) StoneSerializers.nullable(RolloutMethod.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    rolloutMethod2 = (RolloutMethod) StoneSerializers.nullable(RolloutMethod.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetails = new DeviceApprovalsChangeOverageActionDetails(rolloutMethod, rolloutMethod2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceApprovalsChangeOverageActionDetails, deviceApprovalsChangeOverageActionDetails.toStringMultiline());
            return deviceApprovalsChangeOverageActionDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (deviceApprovalsChangeOverageActionDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(RolloutMethod.Serializer.INSTANCE).serialize((StoneSerializer) deviceApprovalsChangeOverageActionDetails.newValue, jsonGenerator);
            }
            if (deviceApprovalsChangeOverageActionDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(RolloutMethod.Serializer.INSTANCE).serialize((StoneSerializer) deviceApprovalsChangeOverageActionDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceApprovalsChangeOverageActionDetails(RolloutMethod rolloutMethod, RolloutMethod rolloutMethod2) {
        this.newValue = rolloutMethod;
        this.previousValue = rolloutMethod2;
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
        DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetails = (DeviceApprovalsChangeOverageActionDetails) obj;
        RolloutMethod rolloutMethod = this.newValue;
        RolloutMethod rolloutMethod2 = deviceApprovalsChangeOverageActionDetails.newValue;
        if (rolloutMethod == rolloutMethod2 || (rolloutMethod != null && rolloutMethod.equals(rolloutMethod2))) {
            RolloutMethod rolloutMethod3 = this.previousValue;
            RolloutMethod rolloutMethod4 = deviceApprovalsChangeOverageActionDetails.previousValue;
            if (rolloutMethod3 == rolloutMethod4) {
                return true;
            }
            if (rolloutMethod3 != null && rolloutMethod3.equals(rolloutMethod4)) {
                return true;
            }
        }
        return false;
    }

    public RolloutMethod getNewValue() {
        return this.newValue;
    }

    public RolloutMethod getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3422a.f18815b.serialize((C3422a) this, false);
    }

    public String toStringMultiline() {
        return C3422a.f18815b.serialize((C3422a) this, true);
    }

    public DeviceApprovalsChangeOverageActionDetails() {
        this(null, null);
    }
}
