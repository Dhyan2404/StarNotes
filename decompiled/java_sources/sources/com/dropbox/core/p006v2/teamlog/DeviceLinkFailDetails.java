package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DeviceType;
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
public class DeviceLinkFailDetails {
    protected final DeviceType deviceType;
    protected final String ipAddress;

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceLinkFailDetails$a */
    /* loaded from: classes4.dex */
    public static class C3440a extends StructSerializer<DeviceLinkFailDetails> {

        /* renamed from: b */
        public static final C3440a f18833b = new C3440a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceLinkFailDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            DeviceType deviceType = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("device_type".equals(currentName)) {
                    deviceType = DeviceType.C3450b.f18843b.deserialize(jsonParser);
                } else if ("ip_address".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (deviceType == null) {
                throw new JsonParseException(jsonParser, "Required field \"device_type\" missing.");
            }
            DeviceLinkFailDetails deviceLinkFailDetails = new DeviceLinkFailDetails(deviceType, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceLinkFailDetails, deviceLinkFailDetails.toStringMultiline());
            return deviceLinkFailDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceLinkFailDetails deviceLinkFailDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("device_type");
            DeviceType.C3450b.f18843b.serialize(deviceLinkFailDetails.deviceType, jsonGenerator);
            if (deviceLinkFailDetails.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deviceLinkFailDetails.ipAddress, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceLinkFailDetails(DeviceType deviceType, String str) {
        this.ipAddress = str;
        if (deviceType != null) {
            this.deviceType = deviceType;
            return;
        }
        throw new IllegalArgumentException("Required value for 'deviceType' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DeviceLinkFailDetails deviceLinkFailDetails = (DeviceLinkFailDetails) obj;
        DeviceType deviceType = this.deviceType;
        DeviceType deviceType2 = deviceLinkFailDetails.deviceType;
        if (deviceType == deviceType2 || deviceType.equals(deviceType2)) {
            String str = this.ipAddress;
            String str2 = deviceLinkFailDetails.ipAddress;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public DeviceType getDeviceType() {
        return this.deviceType;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.ipAddress, this.deviceType});
    }

    public String toString() {
        return C3440a.f18833b.serialize((C3440a) this, false);
    }

    public String toStringMultiline() {
        return C3440a.f18833b.serialize((C3440a) this, true);
    }

    public DeviceLinkFailDetails(DeviceType deviceType) {
        this(deviceType, null);
    }
}
