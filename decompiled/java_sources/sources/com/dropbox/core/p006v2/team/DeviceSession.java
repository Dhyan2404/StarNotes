package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
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
public class DeviceSession {
    protected final String country;
    protected final Date created;
    protected final String ipAddress;
    protected final String sessionId;
    protected final Date updated;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String country;
        protected Date created;
        protected String ipAddress;
        protected final String sessionId;
        protected Date updated;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'sessionId' is null");
            }
            this.sessionId = str;
            this.ipAddress = null;
            this.country = null;
            this.created = null;
            this.updated = null;
        }

        public DeviceSession build() {
            return new DeviceSession(this.sessionId, this.ipAddress, this.country, this.created, this.updated);
        }

        public Builder withCountry(String str) {
            this.country = str;
            return this;
        }

        public Builder withCreated(Date date) {
            this.created = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withIpAddress(String str) {
            this.ipAddress = str;
            return this;
        }

        public Builder withUpdated(Date date) {
            this.updated = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.DeviceSession$a */
    /* loaded from: classes4.dex */
    public static class C3030a extends StructSerializer<DeviceSession> {

        /* renamed from: b */
        public static final C3030a f18146b = new C3030a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceSession deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str4 = null;
            Date date = null;
            Date date2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("session_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("ip_address".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (sod.f84350C.equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
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
            DeviceSession deviceSession = new DeviceSession(str2, str3, str4, date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceSession, deviceSession.toStringMultiline());
            return deviceSession;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceSession deviceSession, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("session_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) deviceSession.sessionId, jsonGenerator);
            if (deviceSession.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deviceSession.ipAddress, jsonGenerator);
            }
            if (deviceSession.country != null) {
                jsonGenerator.writeFieldName(sod.f84350C);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deviceSession.country, jsonGenerator);
            }
            if (deviceSession.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) deviceSession.created, jsonGenerator);
            }
            if (deviceSession.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) deviceSession.updated, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceSession(String str, String str2, String str3, Date date, Date date2) {
        if (str != null) {
            this.sessionId = str;
            this.ipAddress = str2;
            this.country = str3;
            this.created = LangUtil.truncateMillis(date);
            this.updated = LangUtil.truncateMillis(date2);
            return;
        }
        throw new IllegalArgumentException("Required value for 'sessionId' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DeviceSession deviceSession = (DeviceSession) obj;
        String str5 = this.sessionId;
        String str6 = deviceSession.sessionId;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.ipAddress) == (str2 = deviceSession.ipAddress) || (str != null && str.equals(str2))) && (((str3 = this.country) == (str4 = deviceSession.country) || (str3 != null && str3.equals(str4))) && ((date = this.created) == (date2 = deviceSession.created) || (date != null && date.equals(date2)))))) {
            Date date3 = this.updated;
            Date date4 = deviceSession.updated;
            if (date3 == date4) {
                return true;
            }
            if (date3 != null && date3.equals(date4)) {
                return true;
            }
        }
        return false;
    }

    public String getCountry() {
        return this.country;
    }

    public Date getCreated() {
        return this.created;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionId, this.ipAddress, this.country, this.created, this.updated});
    }

    public String toString() {
        return C3030a.f18146b.serialize((C3030a) this, false);
    }

    public String toStringMultiline() {
        return C3030a.f18146b.serialize((C3030a) this, true);
    }

    public DeviceSession(String str) {
        this(str, null, null, null, null);
    }
}
