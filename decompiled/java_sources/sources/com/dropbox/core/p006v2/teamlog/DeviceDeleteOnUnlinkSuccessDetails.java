package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SessionLogInfo;
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
public class DeviceDeleteOnUnlinkSuccessDetails {
    protected final String displayName;
    protected final SessionLogInfo sessionInfo;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected SessionLogInfo sessionInfo = null;
        protected String displayName = null;

        public DeviceDeleteOnUnlinkSuccessDetails build() {
            return new DeviceDeleteOnUnlinkSuccessDetails(this.sessionInfo, this.displayName);
        }

        public Builder withDisplayName(String str) {
            this.displayName = str;
            return this;
        }

        public Builder withSessionInfo(SessionLogInfo sessionLogInfo) {
            this.sessionInfo = sessionLogInfo;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceDeleteOnUnlinkSuccessDetails$a */
    /* loaded from: classes4.dex */
    public static class C3438a extends StructSerializer<DeviceDeleteOnUnlinkSuccessDetails> {

        /* renamed from: b */
        public static final C3438a f18831b = new C3438a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceDeleteOnUnlinkSuccessDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SessionLogInfo sessionLogInfo = null;
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
                if ("session_info".equals(currentName)) {
                    sessionLogInfo = (SessionLogInfo) StoneSerializers.nullableStruct(SessionLogInfo.C4001a.f20277b).deserialize(jsonParser);
                } else if ("display_name".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            DeviceDeleteOnUnlinkSuccessDetails deviceDeleteOnUnlinkSuccessDetails = new DeviceDeleteOnUnlinkSuccessDetails(sessionLogInfo, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceDeleteOnUnlinkSuccessDetails, deviceDeleteOnUnlinkSuccessDetails.toStringMultiline());
            return deviceDeleteOnUnlinkSuccessDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceDeleteOnUnlinkSuccessDetails deviceDeleteOnUnlinkSuccessDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (deviceDeleteOnUnlinkSuccessDetails.sessionInfo != null) {
                jsonGenerator.writeFieldName("session_info");
                StoneSerializers.nullableStruct(SessionLogInfo.C4001a.f20277b).serialize((StructSerializer) deviceDeleteOnUnlinkSuccessDetails.sessionInfo, jsonGenerator);
            }
            if (deviceDeleteOnUnlinkSuccessDetails.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deviceDeleteOnUnlinkSuccessDetails.displayName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceDeleteOnUnlinkSuccessDetails(SessionLogInfo sessionLogInfo, String str) {
        this.sessionInfo = sessionLogInfo;
        this.displayName = str;
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
        DeviceDeleteOnUnlinkSuccessDetails deviceDeleteOnUnlinkSuccessDetails = (DeviceDeleteOnUnlinkSuccessDetails) obj;
        SessionLogInfo sessionLogInfo = this.sessionInfo;
        SessionLogInfo sessionLogInfo2 = deviceDeleteOnUnlinkSuccessDetails.sessionInfo;
        if (sessionLogInfo == sessionLogInfo2 || (sessionLogInfo != null && sessionLogInfo.equals(sessionLogInfo2))) {
            String str = this.displayName;
            String str2 = deviceDeleteOnUnlinkSuccessDetails.displayName;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public SessionLogInfo getSessionInfo() {
        return this.sessionInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionInfo, this.displayName});
    }

    public String toString() {
        return C3438a.f18831b.serialize((C3438a) this, false);
    }

    public String toStringMultiline() {
        return C3438a.f18831b.serialize((C3438a) this, true);
    }

    public DeviceDeleteOnUnlinkSuccessDetails() {
        this(null, null);
    }
}
