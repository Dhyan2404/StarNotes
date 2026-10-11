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
public class DeviceUnlinkDetails {
    protected final boolean deleteData;
    protected final String displayName;
    protected final SessionLogInfo sessionInfo;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final boolean deleteData;
        protected SessionLogInfo sessionInfo = null;
        protected String displayName = null;

        public Builder(boolean z) {
            this.deleteData = z;
        }

        public DeviceUnlinkDetails build() {
            return new DeviceUnlinkDetails(this.deleteData, this.sessionInfo, this.displayName);
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

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceUnlinkDetails$a */
    /* loaded from: classes4.dex */
    public static class C3451a extends StructSerializer<DeviceUnlinkDetails> {

        /* renamed from: b */
        public static final C3451a f18844b = new C3451a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceUnlinkDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SessionLogInfo sessionLogInfo = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("delete_data".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("session_info".equals(currentName)) {
                    sessionLogInfo = (SessionLogInfo) StoneSerializers.nullableStruct(SessionLogInfo.C4001a.f20277b).deserialize(jsonParser);
                } else if ("display_name".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"delete_data\" missing.");
            }
            DeviceUnlinkDetails deviceUnlinkDetails = new DeviceUnlinkDetails(bool.booleanValue(), sessionLogInfo, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceUnlinkDetails, deviceUnlinkDetails.toStringMultiline());
            return deviceUnlinkDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceUnlinkDetails deviceUnlinkDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("delete_data");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(deviceUnlinkDetails.deleteData), jsonGenerator);
            if (deviceUnlinkDetails.sessionInfo != null) {
                jsonGenerator.writeFieldName("session_info");
                StoneSerializers.nullableStruct(SessionLogInfo.C4001a.f20277b).serialize((StructSerializer) deviceUnlinkDetails.sessionInfo, jsonGenerator);
            }
            if (deviceUnlinkDetails.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deviceUnlinkDetails.displayName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceUnlinkDetails(boolean z, SessionLogInfo sessionLogInfo, String str) {
        this.sessionInfo = sessionLogInfo;
        this.displayName = str;
        this.deleteData = z;
    }

    public static Builder newBuilder(boolean z) {
        return new Builder(z);
    }

    public boolean equals(Object obj) {
        SessionLogInfo sessionLogInfo;
        SessionLogInfo sessionLogInfo2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DeviceUnlinkDetails deviceUnlinkDetails = (DeviceUnlinkDetails) obj;
        if (this.deleteData == deviceUnlinkDetails.deleteData && ((sessionLogInfo = this.sessionInfo) == (sessionLogInfo2 = deviceUnlinkDetails.sessionInfo) || (sessionLogInfo != null && sessionLogInfo.equals(sessionLogInfo2)))) {
            String str = this.displayName;
            String str2 = deviceUnlinkDetails.displayName;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public boolean getDeleteData() {
        return this.deleteData;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public SessionLogInfo getSessionInfo() {
        return this.sessionInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionInfo, this.displayName, Boolean.valueOf(this.deleteData)});
    }

    public String toString() {
        return C3451a.f18844b.serialize((C3451a) this, false);
    }

    public String toStringMultiline() {
        return C3451a.f18844b.serialize((C3451a) this, true);
    }

    public DeviceUnlinkDetails(boolean z) {
        this(z, null, null);
    }
}
