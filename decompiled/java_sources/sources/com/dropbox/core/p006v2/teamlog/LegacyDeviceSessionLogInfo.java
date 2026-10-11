package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.SessionLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class LegacyDeviceSessionLogInfo extends DeviceSessionLogInfo {
    protected final String clientVersion;
    protected final String deviceType;
    protected final String displayName;
    protected final Boolean isEmmManaged;
    protected final String legacyUniqId;
    protected final String macAddress;
    protected final String osVersion;
    protected final String platform;
    protected final SessionLogInfo sessionInfo;

    /* loaded from: classes4.dex */
    public static class Builder extends DeviceSessionLogInfo.Builder {
        protected SessionLogInfo sessionInfo = null;
        protected String displayName = null;
        protected Boolean isEmmManaged = null;
        protected String platform = null;
        protected String macAddress = null;
        protected String osVersion = null;
        protected String deviceType = null;
        protected String clientVersion = null;
        protected String legacyUniqId = null;

        public Builder withClientVersion(String str) {
            this.clientVersion = str;
            return this;
        }

        public Builder withDeviceType(String str) {
            this.deviceType = str;
            return this;
        }

        public Builder withDisplayName(String str) {
            this.displayName = str;
            return this;
        }

        public Builder withIsEmmManaged(Boolean bool) {
            this.isEmmManaged = bool;
            return this;
        }

        public Builder withLegacyUniqId(String str) {
            this.legacyUniqId = str;
            return this;
        }

        public Builder withMacAddress(String str) {
            this.macAddress = str;
            return this;
        }

        public Builder withOsVersion(String str) {
            this.osVersion = str;
            return this;
        }

        public Builder withPlatform(String str) {
            this.platform = str;
            return this;
        }

        public Builder withSessionInfo(SessionLogInfo sessionLogInfo) {
            this.sessionInfo = sessionLogInfo;
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.DeviceSessionLogInfo.Builder
        public LegacyDeviceSessionLogInfo build() {
            return new LegacyDeviceSessionLogInfo(this.ipAddress, this.created, this.updated, this.sessionInfo, this.displayName, this.isEmmManaged, this.platform, this.macAddress, this.osVersion, this.deviceType, this.clientVersion, this.legacyUniqId);
        }

        @Override // com.dropbox.core.v2.teamlog.DeviceSessionLogInfo.Builder
        public Builder withCreated(Date date) {
            super.withCreated(date);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.DeviceSessionLogInfo.Builder
        public Builder withIpAddress(String str) {
            super.withIpAddress(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.DeviceSessionLogInfo.Builder
        public Builder withUpdated(Date date) {
            super.withUpdated(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.LegacyDeviceSessionLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3692a extends StructSerializer<LegacyDeviceSessionLogInfo> {

        /* renamed from: b */
        public static final C3692a f19960b = new C3692a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
        
            if ("legacy_device_session".equals(r2) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.LegacyDeviceSessionLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r17, boolean r18) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 396
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.LegacyDeviceSessionLogInfo.C3692a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.LegacyDeviceSessionLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegacyDeviceSessionLogInfo legacyDeviceSessionLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("legacy_device_session", jsonGenerator);
            if (legacyDeviceSessionLogInfo.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.ipAddress, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.created, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.updated, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.sessionInfo != null) {
                jsonGenerator.writeFieldName("session_info");
                StoneSerializers.nullableStruct(SessionLogInfo.C4001a.f20277b).serialize((StructSerializer) legacyDeviceSessionLogInfo.sessionInfo, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.displayName, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.isEmmManaged != null) {
                jsonGenerator.writeFieldName("is_emm_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.isEmmManaged, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.platform != null) {
                jsonGenerator.writeFieldName("platform");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.platform, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.macAddress != null) {
                jsonGenerator.writeFieldName("mac_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.macAddress, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.osVersion != null) {
                jsonGenerator.writeFieldName("os_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.osVersion, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.deviceType != null) {
                jsonGenerator.writeFieldName("device_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.deviceType, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.clientVersion != null) {
                jsonGenerator.writeFieldName("client_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.clientVersion, jsonGenerator);
            }
            if (legacyDeviceSessionLogInfo.legacyUniqId != null) {
                jsonGenerator.writeFieldName("legacy_uniq_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legacyDeviceSessionLogInfo.legacyUniqId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegacyDeviceSessionLogInfo(String str, Date date, Date date2, SessionLogInfo sessionLogInfo, String str2, Boolean bool, String str3, String str4, String str5, String str6, String str7, String str8) {
        super(str, date, date2);
        this.sessionInfo = sessionLogInfo;
        this.displayName = str2;
        this.isEmmManaged = bool;
        this.platform = str3;
        this.macAddress = str4;
        this.osVersion = str5;
        this.deviceType = str6;
        this.clientVersion = str7;
        this.legacyUniqId = str8;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public boolean equals(Object obj) {
        Date date;
        Date date2;
        Date date3;
        Date date4;
        SessionLogInfo sessionLogInfo;
        SessionLogInfo sessionLogInfo2;
        String str;
        String str2;
        Boolean bool;
        Boolean bool2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegacyDeviceSessionLogInfo legacyDeviceSessionLogInfo = (LegacyDeviceSessionLogInfo) obj;
        String str13 = this.ipAddress;
        String str14 = legacyDeviceSessionLogInfo.ipAddress;
        if ((str13 == str14 || (str13 != null && str13.equals(str14))) && (((date = this.created) == (date2 = legacyDeviceSessionLogInfo.created) || (date != null && date.equals(date2))) && (((date3 = this.updated) == (date4 = legacyDeviceSessionLogInfo.updated) || (date3 != null && date3.equals(date4))) && (((sessionLogInfo = this.sessionInfo) == (sessionLogInfo2 = legacyDeviceSessionLogInfo.sessionInfo) || (sessionLogInfo != null && sessionLogInfo.equals(sessionLogInfo2))) && (((str = this.displayName) == (str2 = legacyDeviceSessionLogInfo.displayName) || (str != null && str.equals(str2))) && (((bool = this.isEmmManaged) == (bool2 = legacyDeviceSessionLogInfo.isEmmManaged) || (bool != null && bool.equals(bool2))) && (((str3 = this.platform) == (str4 = legacyDeviceSessionLogInfo.platform) || (str3 != null && str3.equals(str4))) && (((str5 = this.macAddress) == (str6 = legacyDeviceSessionLogInfo.macAddress) || (str5 != null && str5.equals(str6))) && (((str7 = this.osVersion) == (str8 = legacyDeviceSessionLogInfo.osVersion) || (str7 != null && str7.equals(str8))) && (((str9 = this.deviceType) == (str10 = legacyDeviceSessionLogInfo.deviceType) || (str9 != null && str9.equals(str10))) && ((str11 = this.clientVersion) == (str12 = legacyDeviceSessionLogInfo.clientVersion) || (str11 != null && str11.equals(str12))))))))))))) {
            String str15 = this.legacyUniqId;
            String str16 = legacyDeviceSessionLogInfo.legacyUniqId;
            if (str15 == str16) {
                return true;
            }
            if (str15 != null && str15.equals(str16)) {
                return true;
            }
        }
        return false;
    }

    public String getClientVersion() {
        return this.clientVersion;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public Date getCreated() {
        return this.created;
    }

    public String getDeviceType() {
        return this.deviceType;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String getIpAddress() {
        return this.ipAddress;
    }

    public Boolean getIsEmmManaged() {
        return this.isEmmManaged;
    }

    public String getLegacyUniqId() {
        return this.legacyUniqId;
    }

    public String getMacAddress() {
        return this.macAddress;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getPlatform() {
        return this.platform;
    }

    public SessionLogInfo getSessionInfo() {
        return this.sessionInfo;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public Date getUpdated() {
        return this.updated;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.sessionInfo, this.displayName, this.isEmmManaged, this.platform, this.macAddress, this.osVersion, this.deviceType, this.clientVersion, this.legacyUniqId});
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String toString() {
        return C3692a.f19960b.serialize((C3692a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String toStringMultiline() {
        return C3692a.f19960b.serialize((C3692a) this, true);
    }

    public LegacyDeviceSessionLogInfo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null);
    }
}
