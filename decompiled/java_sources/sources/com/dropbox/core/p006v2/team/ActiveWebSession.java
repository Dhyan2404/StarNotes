package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.DeviceSession;
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
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class ActiveWebSession extends DeviceSession {
    protected final String browser;
    protected final Date expires;

    /* renamed from: os */
    protected final String f18102os;
    protected final String userAgent;

    /* loaded from: classes4.dex */
    public static class Builder extends DeviceSession.Builder {
        protected final String browser;
        protected Date expires;

        /* renamed from: os */
        protected final String f18103os;
        protected final String userAgent;

        public Builder(String str, String str2, String str3, String str4) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'userAgent' is null");
            }
            this.userAgent = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'os' is null");
            }
            this.f18103os = str3;
            if (str4 == null) {
                throw new IllegalArgumentException("Required value for 'browser' is null");
            }
            this.browser = str4;
            this.expires = null;
        }

        public Builder withExpires(Date date) {
            this.expires = LangUtil.truncateMillis(date);
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public ActiveWebSession build() {
            return new ActiveWebSession(this.sessionId, this.userAgent, this.f18103os, this.browser, this.ipAddress, this.country, this.created, this.updated, this.expires);
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

    /* renamed from: com.dropbox.core.v2.team.ActiveWebSession$a */
    /* loaded from: classes4.dex */
    public static class C3008a extends StructSerializer<ActiveWebSession> {

        /* renamed from: b */
        public static final C3008a f18104b = new C3008a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActiveWebSession deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str5 = null;
            String str6 = null;
            String str7 = null;
            Date date = null;
            Date date2 = null;
            Date date3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("session_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("user_agent".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("os".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("browser".equals(currentName)) {
                    str5 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("ip_address".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (sod.f84350C.equals(currentName)) {
                    str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("created".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("updated".equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if (ClientCookie.EXPIRES_ATTR.equals(currentName)) {
                    date3 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"session_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"user_agent\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"os\" missing.");
            }
            if (str5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"browser\" missing.");
            }
            ActiveWebSession activeWebSession = new ActiveWebSession(str2, str3, str4, str5, str6, str7, date, date2, date3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(activeWebSession, activeWebSession.toStringMultiline());
            return activeWebSession;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ActiveWebSession activeWebSession, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("session_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) activeWebSession.sessionId, jsonGenerator);
            jsonGenerator.writeFieldName("user_agent");
            StoneSerializers.string().serialize((StoneSerializer<String>) activeWebSession.userAgent, jsonGenerator);
            jsonGenerator.writeFieldName("os");
            StoneSerializers.string().serialize((StoneSerializer<String>) activeWebSession.f18102os, jsonGenerator);
            jsonGenerator.writeFieldName("browser");
            StoneSerializers.string().serialize((StoneSerializer<String>) activeWebSession.browser, jsonGenerator);
            if (activeWebSession.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) activeWebSession.ipAddress, jsonGenerator);
            }
            if (activeWebSession.country != null) {
                jsonGenerator.writeFieldName(sod.f84350C);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) activeWebSession.country, jsonGenerator);
            }
            if (activeWebSession.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) activeWebSession.created, jsonGenerator);
            }
            if (activeWebSession.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) activeWebSession.updated, jsonGenerator);
            }
            if (activeWebSession.expires != null) {
                jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) activeWebSession.expires, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ActiveWebSession(String str, String str2, String str3, String str4, String str5, String str6, Date date, Date date2, Date date3) {
        super(str, str5, str6, date, date2);
        if (str2 != null) {
            this.userAgent = str2;
            if (str3 != null) {
                this.f18102os = str3;
                if (str4 != null) {
                    this.browser = str4;
                    this.expires = LangUtil.truncateMillis(date3);
                    return;
                }
                throw new IllegalArgumentException("Required value for 'browser' is null");
            }
            throw new IllegalArgumentException("Required value for 'os' is null");
        }
        throw new IllegalArgumentException("Required value for 'userAgent' is null");
    }

    public static Builder newBuilder(String str, String str2, String str3, String str4) {
        return new Builder(str, str2, str3, str4);
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public boolean equals(Object obj) {
        String str;
        String str2;
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
        Date date3;
        Date date4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ActiveWebSession activeWebSession = (ActiveWebSession) obj;
        String str11 = this.sessionId;
        String str12 = activeWebSession.sessionId;
        if ((str11 == str12 || str11.equals(str12)) && (((str = this.userAgent) == (str2 = activeWebSession.userAgent) || str.equals(str2)) && (((str3 = this.f18102os) == (str4 = activeWebSession.f18102os) || str3.equals(str4)) && (((str5 = this.browser) == (str6 = activeWebSession.browser) || str5.equals(str6)) && (((str7 = this.ipAddress) == (str8 = activeWebSession.ipAddress) || (str7 != null && str7.equals(str8))) && (((str9 = this.country) == (str10 = activeWebSession.country) || (str9 != null && str9.equals(str10))) && (((date = this.created) == (date2 = activeWebSession.created) || (date != null && date.equals(date2))) && ((date3 = this.updated) == (date4 = activeWebSession.updated) || (date3 != null && date3.equals(date4)))))))))) {
            Date date5 = this.expires;
            Date date6 = activeWebSession.expires;
            if (date5 == date6) {
                return true;
            }
            if (date5 != null && date5.equals(date6)) {
                return true;
            }
        }
        return false;
    }

    public String getBrowser() {
        return this.browser;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String getCountry() {
        return this.country;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public Date getCreated() {
        return this.created;
    }

    public Date getExpires() {
        return this.expires;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getOs() {
        return this.f18102os;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String getSessionId() {
        return this.sessionId;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public Date getUpdated() {
        return this.updated;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.userAgent, this.f18102os, this.browser, this.expires});
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String toString() {
        return C3008a.f18104b.serialize((C3008a) this, false);
    }

    @Override // com.dropbox.core.p006v2.team.DeviceSession
    public String toStringMultiline() {
        return C3008a.f18104b.serialize((C3008a) this, true);
    }

    public ActiveWebSession(String str, String str2, String str3, String str4) {
        this(str, str2, str3, str4, null, null, null, null, null);
    }
}
