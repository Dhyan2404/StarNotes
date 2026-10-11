package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.DeviceSession;
import com.dropbox.core.p006v2.team.MobileClientPlatform;
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
import com.sunia.HTREnginev2.sod;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class MobileClientSession extends DeviceSession {
    protected final MobileClientPlatform clientType;
    protected final String clientVersion;
    protected final String deviceName;
    protected final String lastCarrier;
    protected final String osVersion;

    /* loaded from: classes4.dex */
    public static class Builder extends DeviceSession.Builder {
        protected final MobileClientPlatform clientType;
        protected String clientVersion;
        protected final String deviceName;
        protected String lastCarrier;
        protected String osVersion;

        public Builder(String str, String str2, MobileClientPlatform mobileClientPlatform) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'deviceName' is null");
            }
            this.deviceName = str2;
            if (mobileClientPlatform == null) {
                throw new IllegalArgumentException("Required value for 'clientType' is null");
            }
            this.clientType = mobileClientPlatform;
            this.clientVersion = null;
            this.osVersion = null;
            this.lastCarrier = null;
        }

        public Builder withClientVersion(String str) {
            this.clientVersion = str;
            return this;
        }

        public Builder withLastCarrier(String str) {
            this.lastCarrier = str;
            return this;
        }

        public Builder withOsVersion(String str) {
            this.osVersion = str;
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public MobileClientSession build() {
            return new MobileClientSession(this.sessionId, this.deviceName, this.clientType, this.ipAddress, this.country, this.created, this.updated, this.clientVersion, this.osVersion, this.lastCarrier);
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public Builder withCountry(String str) {
            super.withCountry(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public Builder withCreated(Date date) {
            super.withCreated(date);
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public Builder withIpAddress(String str) {
            super.withIpAddress(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public Builder withUpdated(Date date) {
            super.withUpdated(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MobileClientSession$a */
    /* loaded from: classes4.dex */
    public static class C3184a extends StructSerializer<MobileClientSession> {

        /* renamed from: b */
        public static final C3184a f18415b = new C3184a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MobileClientSession deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
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
            String str3 = null;
            MobileClientPlatform mobileClientPlatform = null;
            String str4 = null;
            String str5 = null;
            Date date = null;
            Date date2 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("session_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("device_name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("client_type".equals(currentName)) {
                    mobileClientPlatform = MobileClientPlatform.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("ip_address".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (sod.f84350C.equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("created".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("updated".equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("client_version".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("os_version".equals(currentName)) {
                    str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("last_carrier".equals(currentName)) {
                    str8 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"session_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"device_name\" missing.");
            }
            if (mobileClientPlatform == null) {
                throw new JsonParseException(jsonParser, "Required field \"client_type\" missing.");
            }
            MobileClientSession mobileClientSession = new MobileClientSession(str2, str3, mobileClientPlatform, str4, str5, date, date2, str6, str7, str8);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(mobileClientSession, mobileClientSession.toStringMultiline());
            return mobileClientSession;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MobileClientSession mobileClientSession, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("session_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) mobileClientSession.sessionId, jsonGenerator);
            jsonGenerator.writeFieldName("device_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) mobileClientSession.deviceName, jsonGenerator);
            jsonGenerator.writeFieldName("client_type");
            MobileClientPlatform.Serializer.INSTANCE.serialize(mobileClientSession.clientType, jsonGenerator);
            if (mobileClientSession.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileClientSession.ipAddress, jsonGenerator);
            }
            if (mobileClientSession.country != null) {
                jsonGenerator.writeFieldName(sod.f84350C);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileClientSession.country, jsonGenerator);
            }
            if (mobileClientSession.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) mobileClientSession.created, jsonGenerator);
            }
            if (mobileClientSession.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) mobileClientSession.updated, jsonGenerator);
            }
            if (mobileClientSession.clientVersion != null) {
                jsonGenerator.writeFieldName("client_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileClientSession.clientVersion, jsonGenerator);
            }
            if (mobileClientSession.osVersion != null) {
                jsonGenerator.writeFieldName("os_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileClientSession.osVersion, jsonGenerator);
            }
            if (mobileClientSession.lastCarrier != null) {
                jsonGenerator.writeFieldName("last_carrier");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileClientSession.lastCarrier, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MobileClientSession(String str, String str2, MobileClientPlatform mobileClientPlatform, String str3, String str4, Date date, Date date2, String str5, String str6, String str7) {
        super(str, str3, str4, date, date2);
        if (str2 != null) {
            this.deviceName = str2;
            if (mobileClientPlatform != null) {
                this.clientType = mobileClientPlatform;
                this.clientVersion = str5;
                this.osVersion = str6;
                this.lastCarrier = str7;
                return;
            }
            throw new IllegalArgumentException("Required value for 'clientType' is null");
        }
        throw new IllegalArgumentException("Required value for 'deviceName' is null");
    }

    public static Builder newBuilder(String str, String str2, MobileClientPlatform mobileClientPlatform) {
        return new Builder(str, str2, mobileClientPlatform);
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public boolean equals(Object obj) {
        String str;
        String str2;
        MobileClientPlatform mobileClientPlatform;
        MobileClientPlatform mobileClientPlatform2;
        String str3;
        String str4;
        String str5;
        String str6;
        Date date;
        Date date2;
        Date date3;
        Date date4;
        String str7;
        String str8;
        String str9;
        String str10;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MobileClientSession mobileClientSession = (MobileClientSession) obj;
        String str11 = this.sessionId;
        String str12 = mobileClientSession.sessionId;
        if ((str11 == str12 || str11.equals(str12)) && (((str = this.deviceName) == (str2 = mobileClientSession.deviceName) || str.equals(str2)) && (((mobileClientPlatform = this.clientType) == (mobileClientPlatform2 = mobileClientSession.clientType) || mobileClientPlatform.equals(mobileClientPlatform2)) && (((str3 = this.ipAddress) == (str4 = mobileClientSession.ipAddress) || (str3 != null && str3.equals(str4))) && (((str5 = this.country) == (str6 = mobileClientSession.country) || (str5 != null && str5.equals(str6))) && (((date = this.created) == (date2 = mobileClientSession.created) || (date != null && date.equals(date2))) && (((date3 = this.updated) == (date4 = mobileClientSession.updated) || (date3 != null && date3.equals(date4))) && (((str7 = this.clientVersion) == (str8 = mobileClientSession.clientVersion) || (str7 != null && str7.equals(str8))) && ((str9 = this.osVersion) == (str10 = mobileClientSession.osVersion) || (str9 != null && str9.equals(str10))))))))))) {
            String str13 = this.lastCarrier;
            String str14 = mobileClientSession.lastCarrier;
            if (str13 == str14) {
                return true;
            }
            if (str13 != null && str13.equals(str14)) {
                return true;
            }
        }
        return false;
    }

    public MobileClientPlatform getClientType() {
        return this.clientType;
    }

    public String getClientVersion() {
        return this.clientVersion;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String getCountry() {
        return this.country;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public Date getCreated() {
        return this.created;
    }

    public String getDeviceName() {
        return this.deviceName;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getLastCarrier() {
        return this.lastCarrier;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String getSessionId() {
        return this.sessionId;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public Date getUpdated() {
        return this.updated;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.deviceName, this.clientType, this.clientVersion, this.osVersion, this.lastCarrier});
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String toString() {
        return C3184a.f18415b.serialize((C3184a) this, false);
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String toStringMultiline() {
        return C3184a.f18415b.serialize((C3184a) this, true);
    }

    public MobileClientSession(String str, String str2, MobileClientPlatform mobileClientPlatform) {
        this(str, str2, mobileClientPlatform, null, null, null, null, null, null, null);
    }
}
