package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo;
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
public class DeviceChangeIpDesktopDetails {
    protected final DeviceSessionLogInfo deviceSessionInfo;

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceChangeIpDesktopDetails$a */
    /* loaded from: classes4.dex */
    public static class C3430a extends StructSerializer<DeviceChangeIpDesktopDetails> {

        /* renamed from: b */
        public static final C3430a f18823b = new C3430a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceChangeIpDesktopDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    deviceSessionLogInfo = DeviceSessionLogInfo.C3448a.f18841b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (deviceSessionLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"device_session_info\" missing.");
            }
            DeviceChangeIpDesktopDetails deviceChangeIpDesktopDetails = new DeviceChangeIpDesktopDetails(deviceSessionLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceChangeIpDesktopDetails, deviceChangeIpDesktopDetails.toStringMultiline());
            return deviceChangeIpDesktopDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceChangeIpDesktopDetails deviceChangeIpDesktopDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("device_session_info");
            DeviceSessionLogInfo.C3448a.f18841b.serialize((DeviceSessionLogInfo.C3448a) deviceChangeIpDesktopDetails.deviceSessionInfo, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceChangeIpDesktopDetails(DeviceSessionLogInfo deviceSessionLogInfo) {
        if (deviceSessionLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'deviceSessionInfo' is null");
        }
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
        DeviceSessionLogInfo deviceSessionLogInfo2 = ((DeviceChangeIpDesktopDetails) obj).deviceSessionInfo;
        return deviceSessionLogInfo == deviceSessionLogInfo2 || deviceSessionLogInfo.equals(deviceSessionLogInfo2);
    }

    public DeviceSessionLogInfo getDeviceSessionInfo() {
        return this.deviceSessionInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceSessionInfo});
    }

    public String toString() {
        return C3430a.f18823b.serialize((C3430a) this, false);
    }

    public String toStringMultiline() {
        return C3430a.f18823b.serialize((C3430a) this, true);
    }
}
