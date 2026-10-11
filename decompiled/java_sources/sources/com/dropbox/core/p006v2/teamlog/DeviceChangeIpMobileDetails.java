package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo;
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
public class DeviceChangeIpMobileDetails {
    protected final DeviceSessionLogInfo deviceSessionInfo;

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceChangeIpMobileDetails$a */
    /* loaded from: classes4.dex */
    public static class C3432a extends StructSerializer<DeviceChangeIpMobileDetails> {

        /* renamed from: b */
        public static final C3432a f18825b = new C3432a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceChangeIpMobileDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            DeviceSessionLogInfo deviceSessionLogInfo = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("device_session_info".equals(currentName)) {
                    deviceSessionLogInfo = (DeviceSessionLogInfo) StoneSerializers.nullableStruct(DeviceSessionLogInfo.C3448a.f18841b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            DeviceChangeIpMobileDetails deviceChangeIpMobileDetails = new DeviceChangeIpMobileDetails(deviceSessionLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceChangeIpMobileDetails, deviceChangeIpMobileDetails.toStringMultiline());
            return deviceChangeIpMobileDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceChangeIpMobileDetails deviceChangeIpMobileDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (deviceChangeIpMobileDetails.deviceSessionInfo != null) {
                jsonGenerator.writeFieldName("device_session_info");
                StoneSerializers.nullableStruct(DeviceSessionLogInfo.C3448a.f18841b).serialize((StructSerializer) deviceChangeIpMobileDetails.deviceSessionInfo, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceChangeIpMobileDetails(DeviceSessionLogInfo deviceSessionLogInfo) {
        this.deviceSessionInfo = deviceSessionLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DeviceSessionLogInfo deviceSessionLogInfo = this.deviceSessionInfo;
        DeviceSessionLogInfo deviceSessionLogInfo2 = ((DeviceChangeIpMobileDetails) obj).deviceSessionInfo;
        if (deviceSessionLogInfo != deviceSessionLogInfo2) {
            return deviceSessionLogInfo != null && deviceSessionLogInfo.equals(deviceSessionLogInfo2);
        }
        return true;
    }

    public DeviceSessionLogInfo getDeviceSessionInfo() {
        return this.deviceSessionInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceSessionInfo});
    }

    public String toString() {
        return C3432a.f18825b.serialize((C3432a) this, false);
    }

    public String toStringMultiline() {
        return C3432a.f18825b.serialize((C3432a) this, true);
    }

    public DeviceChangeIpMobileDetails() {
        this(null);
    }
}
