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
public class DeviceDeleteOnUnlinkFailDetails {
    protected final String displayName;
    protected final long numFailures;
    protected final SessionLogInfo sessionInfo;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final long numFailures;
        protected SessionLogInfo sessionInfo = null;
        protected String displayName = null;

        public Builder(long j) {
            this.numFailures = j;
        }

        public DeviceDeleteOnUnlinkFailDetails build() {
            return new DeviceDeleteOnUnlinkFailDetails(this.numFailures, this.sessionInfo, this.displayName);
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

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceDeleteOnUnlinkFailDetails$a */
    /* loaded from: classes4.dex */
    public static class C3436a extends StructSerializer<DeviceDeleteOnUnlinkFailDetails> {

        /* renamed from: b */
        public static final C3436a f18829b = new C3436a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceDeleteOnUnlinkFailDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
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
                if ("num_failures".equals(currentName)) {
                    l = StoneSerializers.int64().deserialize(jsonParser);
                } else if ("session_info".equals(currentName)) {
                    sessionLogInfo = (SessionLogInfo) StoneSerializers.nullableStruct(SessionLogInfo.C4001a.f20277b).deserialize(jsonParser);
                } else if ("display_name".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"num_failures\" missing.");
            }
            DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetails = new DeviceDeleteOnUnlinkFailDetails(l.longValue(), sessionLogInfo, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceDeleteOnUnlinkFailDetails, deviceDeleteOnUnlinkFailDetails.toStringMultiline());
            return deviceDeleteOnUnlinkFailDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("num_failures");
            StoneSerializers.int64().serialize((StoneSerializer<Long>) Long.valueOf(deviceDeleteOnUnlinkFailDetails.numFailures), jsonGenerator);
            if (deviceDeleteOnUnlinkFailDetails.sessionInfo != null) {
                jsonGenerator.writeFieldName("session_info");
                StoneSerializers.nullableStruct(SessionLogInfo.C4001a.f20277b).serialize((StructSerializer) deviceDeleteOnUnlinkFailDetails.sessionInfo, jsonGenerator);
            }
            if (deviceDeleteOnUnlinkFailDetails.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deviceDeleteOnUnlinkFailDetails.displayName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceDeleteOnUnlinkFailDetails(long j, SessionLogInfo sessionLogInfo, String str) {
        this.sessionInfo = sessionLogInfo;
        this.displayName = str;
        this.numFailures = j;
    }

    public static Builder newBuilder(long j) {
        return new Builder(j);
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
        DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetails = (DeviceDeleteOnUnlinkFailDetails) obj;
        if (this.numFailures == deviceDeleteOnUnlinkFailDetails.numFailures && ((sessionLogInfo = this.sessionInfo) == (sessionLogInfo2 = deviceDeleteOnUnlinkFailDetails.sessionInfo) || (sessionLogInfo != null && sessionLogInfo.equals(sessionLogInfo2)))) {
            String str = this.displayName;
            String str2 = deviceDeleteOnUnlinkFailDetails.displayName;
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

    public long getNumFailures() {
        return this.numFailures;
    }

    public SessionLogInfo getSessionInfo() {
        return this.sessionInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionInfo, this.displayName, Long.valueOf(this.numFailures)});
    }

    public String toString() {
        return C3436a.f18829b.serialize((C3436a) this, false);
    }

    public String toStringMultiline() {
        return C3436a.f18829b.serialize((C3436a) this, true);
    }

    public DeviceDeleteOnUnlinkFailDetails(long j) {
        this(j, null, null);
    }
}
