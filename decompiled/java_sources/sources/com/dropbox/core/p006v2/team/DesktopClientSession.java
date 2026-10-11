package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.DesktopPlatform;
import com.dropbox.core.p006v2.team.DeviceSession;
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
public class DesktopClientSession extends DeviceSession {
    protected final DesktopPlatform clientType;
    protected final String clientVersion;
    protected final String hostName;
    protected final boolean isDeleteOnUnlinkSupported;
    protected final String platform;

    /* loaded from: classes4.dex */
    public static class Builder extends DeviceSession.Builder {
        protected final DesktopPlatform clientType;
        protected final String clientVersion;
        protected final String hostName;
        protected final boolean isDeleteOnUnlinkSupported;
        protected final String platform;

        public Builder(String str, String str2, DesktopPlatform desktopPlatform, String str3, String str4, boolean z) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'hostName' is null");
            }
            this.hostName = str2;
            if (desktopPlatform == null) {
                throw new IllegalArgumentException("Required value for 'clientType' is null");
            }
            this.clientType = desktopPlatform;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'clientVersion' is null");
            }
            this.clientVersion = str3;
            if (str4 == null) {
                throw new IllegalArgumentException("Required value for 'platform' is null");
            }
            this.platform = str4;
            this.isDeleteOnUnlinkSupported = z;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public DesktopClientSession build() {
            return new DesktopClientSession(this.sessionId, this.hostName, this.clientType, this.clientVersion, this.platform, this.isDeleteOnUnlinkSupported, this.ipAddress, this.country, this.created, this.updated);
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

    /* renamed from: com.dropbox.core.v2.team.DesktopClientSession$a */
    /* loaded from: classes4.dex */
    public static class C3028a extends StructSerializer<DesktopClientSession> {

        /* renamed from: b */
        public static final C3028a f18144b = new C3028a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DesktopClientSession deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            String str3 = null;
            DesktopPlatform desktopPlatform = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            Date date = null;
            Date date2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("session_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("host_name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("client_type".equals(currentName)) {
                    desktopPlatform = DesktopPlatform.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("client_version".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("platform".equals(currentName)) {
                    str5 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("is_delete_on_unlink_supported".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("ip_address".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (sod.f84350C.equals(currentName)) {
                    str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("created".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("updated".equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"session_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"host_name\" missing.");
            }
            if (desktopPlatform == null) {
                throw new JsonParseException(jsonParser, "Required field \"client_type\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"client_version\" missing.");
            }
            if (str5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"platform\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_delete_on_unlink_supported\" missing.");
            }
            DesktopClientSession desktopClientSession = new DesktopClientSession(str2, str3, desktopPlatform, str4, str5, bool.booleanValue(), str6, str7, date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(desktopClientSession, desktopClientSession.toStringMultiline());
            return desktopClientSession;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DesktopClientSession desktopClientSession, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("session_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) desktopClientSession.sessionId, jsonGenerator);
            jsonGenerator.writeFieldName("host_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) desktopClientSession.hostName, jsonGenerator);
            jsonGenerator.writeFieldName("client_type");
            DesktopPlatform.Serializer.INSTANCE.serialize(desktopClientSession.clientType, jsonGenerator);
            jsonGenerator.writeFieldName("client_version");
            StoneSerializers.string().serialize((StoneSerializer<String>) desktopClientSession.clientVersion, jsonGenerator);
            jsonGenerator.writeFieldName("platform");
            StoneSerializers.string().serialize((StoneSerializer<String>) desktopClientSession.platform, jsonGenerator);
            jsonGenerator.writeFieldName("is_delete_on_unlink_supported");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(desktopClientSession.isDeleteOnUnlinkSupported), jsonGenerator);
            if (desktopClientSession.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) desktopClientSession.ipAddress, jsonGenerator);
            }
            if (desktopClientSession.country != null) {
                jsonGenerator.writeFieldName(sod.f84350C);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) desktopClientSession.country, jsonGenerator);
            }
            if (desktopClientSession.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) desktopClientSession.created, jsonGenerator);
            }
            if (desktopClientSession.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) desktopClientSession.updated, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DesktopClientSession(String str, String str2, DesktopPlatform desktopPlatform, String str3, String str4, boolean z, String str5, String str6, Date date, Date date2) {
        super(str, str5, str6, date, date2);
        if (str2 != null) {
            this.hostName = str2;
            if (desktopPlatform != null) {
                this.clientType = desktopPlatform;
                if (str3 != null) {
                    this.clientVersion = str3;
                    if (str4 != null) {
                        this.platform = str4;
                        this.isDeleteOnUnlinkSupported = z;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'platform' is null");
                }
                throw new IllegalArgumentException("Required value for 'clientVersion' is null");
            }
            throw new IllegalArgumentException("Required value for 'clientType' is null");
        }
        throw new IllegalArgumentException("Required value for 'hostName' is null");
    }

    public static Builder newBuilder(String str, String str2, DesktopPlatform desktopPlatform, String str3, String str4, boolean z) {
        return new Builder(str, str2, desktopPlatform, str3, str4, z);
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public boolean equals(Object obj) {
        String str;
        String str2;
        DesktopPlatform desktopPlatform;
        DesktopPlatform desktopPlatform2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DesktopClientSession desktopClientSession = (DesktopClientSession) obj;
        String str11 = this.sessionId;
        String str12 = desktopClientSession.sessionId;
        if ((str11 == str12 || str11.equals(str12)) && (((str = this.hostName) == (str2 = desktopClientSession.hostName) || str.equals(str2)) && (((desktopPlatform = this.clientType) == (desktopPlatform2 = desktopClientSession.clientType) || desktopPlatform.equals(desktopPlatform2)) && (((str3 = this.clientVersion) == (str4 = desktopClientSession.clientVersion) || str3.equals(str4)) && (((str5 = this.platform) == (str6 = desktopClientSession.platform) || str5.equals(str6)) && this.isDeleteOnUnlinkSupported == desktopClientSession.isDeleteOnUnlinkSupported && (((str7 = this.ipAddress) == (str8 = desktopClientSession.ipAddress) || (str7 != null && str7.equals(str8))) && (((str9 = this.country) == (str10 = desktopClientSession.country) || (str9 != null && str9.equals(str10))) && ((date = this.created) == (date2 = desktopClientSession.created) || (date != null && date.equals(date2)))))))))) {
            Date date3 = this.updated;
            Date date4 = desktopClientSession.updated;
            if (date3 == date4) {
                return true;
            }
            if (date3 != null && date3.equals(date4)) {
                return true;
            }
        }
        return false;
    }

    public DesktopPlatform getClientType() {
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

    public String getHostName() {
        return this.hostName;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String getIpAddress() {
        return this.ipAddress;
    }

    public boolean getIsDeleteOnUnlinkSupported() {
        return this.isDeleteOnUnlinkSupported;
    }

    public String getPlatform() {
        return this.platform;
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.hostName, this.clientType, this.clientVersion, this.platform, Boolean.valueOf(this.isDeleteOnUnlinkSupported)});
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String toString() {
        return C3028a.f18144b.serialize((C3028a) this, false);
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String toStringMultiline() {
        return C3028a.f18144b.serialize((C3028a) this, true);
    }

    public DesktopClientSession(String str, String str2, DesktopPlatform desktopPlatform, String str3, String str4, boolean z) {
        this(str, str2, desktopPlatform, str3, str4, z, null, null, null, null);
    }
}
