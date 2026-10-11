package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.team.MobileClientPlatform;
import com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.MobileSessionLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class MobileDeviceSessionLogInfo extends DeviceSessionLogInfo {
    protected final MobileClientPlatform clientType;
    protected final String clientVersion;
    protected final String deviceName;
    protected final String lastCarrier;
    protected final String osVersion;
    protected final MobileSessionLogInfo sessionInfo;

    /* loaded from: classes4.dex */
    public static class Builder extends DeviceSessionLogInfo.Builder {
        protected final MobileClientPlatform clientType;
        protected String clientVersion;
        protected final String deviceName;
        protected String lastCarrier;
        protected String osVersion;
        protected MobileSessionLogInfo sessionInfo;

        public Builder(String str, MobileClientPlatform mobileClientPlatform) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'deviceName' is null");
            }
            this.deviceName = str;
            if (mobileClientPlatform == null) {
                throw new IllegalArgumentException("Required value for 'clientType' is null");
            }
            this.clientType = mobileClientPlatform;
            this.sessionInfo = null;
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

        public Builder withSessionInfo(MobileSessionLogInfo mobileSessionLogInfo) {
            this.sessionInfo = mobileSessionLogInfo;
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.DeviceSessionLogInfo.Builder
        public MobileDeviceSessionLogInfo build() {
            return new MobileDeviceSessionLogInfo(this.deviceName, this.clientType, this.ipAddress, this.created, this.updated, this.sessionInfo, this.clientVersion, this.osVersion, this.lastCarrier);
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

    /* renamed from: com.dropbox.core.v2.teamlog.MobileDeviceSessionLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3794a extends StructSerializer<MobileDeviceSessionLogInfo> {

        /* renamed from: b */
        public static final C3794a f20067b = new C3794a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("mobile_device_session".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.MobileDeviceSessionLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r12, boolean r13) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 323
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.MobileDeviceSessionLogInfo.C3794a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.MobileDeviceSessionLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MobileDeviceSessionLogInfo mobileDeviceSessionLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("mobile_device_session", jsonGenerator);
            jsonGenerator.writeFieldName("device_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) mobileDeviceSessionLogInfo.deviceName, jsonGenerator);
            jsonGenerator.writeFieldName("client_type");
            MobileClientPlatform.Serializer.INSTANCE.serialize(mobileDeviceSessionLogInfo.clientType, jsonGenerator);
            if (mobileDeviceSessionLogInfo.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileDeviceSessionLogInfo.ipAddress, jsonGenerator);
            }
            if (mobileDeviceSessionLogInfo.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) mobileDeviceSessionLogInfo.created, jsonGenerator);
            }
            if (mobileDeviceSessionLogInfo.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) mobileDeviceSessionLogInfo.updated, jsonGenerator);
            }
            if (mobileDeviceSessionLogInfo.sessionInfo != null) {
                jsonGenerator.writeFieldName("session_info");
                StoneSerializers.nullableStruct(MobileSessionLogInfo.C3795a.f20068b).serialize((StructSerializer) mobileDeviceSessionLogInfo.sessionInfo, jsonGenerator);
            }
            if (mobileDeviceSessionLogInfo.clientVersion != null) {
                jsonGenerator.writeFieldName("client_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileDeviceSessionLogInfo.clientVersion, jsonGenerator);
            }
            if (mobileDeviceSessionLogInfo.osVersion != null) {
                jsonGenerator.writeFieldName("os_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileDeviceSessionLogInfo.osVersion, jsonGenerator);
            }
            if (mobileDeviceSessionLogInfo.lastCarrier != null) {
                jsonGenerator.writeFieldName("last_carrier");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) mobileDeviceSessionLogInfo.lastCarrier, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MobileDeviceSessionLogInfo(String str, MobileClientPlatform mobileClientPlatform, String str2, Date date, Date date2, MobileSessionLogInfo mobileSessionLogInfo, String str3, String str4, String str5) {
        super(str2, date, date2);
        this.sessionInfo = mobileSessionLogInfo;
        if (str != null) {
            this.deviceName = str;
            if (mobileClientPlatform != null) {
                this.clientType = mobileClientPlatform;
                this.clientVersion = str3;
                this.osVersion = str4;
                this.lastCarrier = str5;
                return;
            }
            throw new IllegalArgumentException("Required value for 'clientType' is null");
        }
        throw new IllegalArgumentException("Required value for 'deviceName' is null");
    }

    public static Builder newBuilder(String str, MobileClientPlatform mobileClientPlatform) {
        return new Builder(str, mobileClientPlatform);
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public boolean equals(Object obj) {
        MobileClientPlatform mobileClientPlatform;
        MobileClientPlatform mobileClientPlatform2;
        String str;
        String str2;
        Date date;
        Date date2;
        Date date3;
        Date date4;
        MobileSessionLogInfo mobileSessionLogInfo;
        MobileSessionLogInfo mobileSessionLogInfo2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MobileDeviceSessionLogInfo mobileDeviceSessionLogInfo = (MobileDeviceSessionLogInfo) obj;
        String str7 = this.deviceName;
        String str8 = mobileDeviceSessionLogInfo.deviceName;
        if ((str7 == str8 || str7.equals(str8)) && (((mobileClientPlatform = this.clientType) == (mobileClientPlatform2 = mobileDeviceSessionLogInfo.clientType) || mobileClientPlatform.equals(mobileClientPlatform2)) && (((str = this.ipAddress) == (str2 = mobileDeviceSessionLogInfo.ipAddress) || (str != null && str.equals(str2))) && (((date = this.created) == (date2 = mobileDeviceSessionLogInfo.created) || (date != null && date.equals(date2))) && (((date3 = this.updated) == (date4 = mobileDeviceSessionLogInfo.updated) || (date3 != null && date3.equals(date4))) && (((mobileSessionLogInfo = this.sessionInfo) == (mobileSessionLogInfo2 = mobileDeviceSessionLogInfo.sessionInfo) || (mobileSessionLogInfo != null && mobileSessionLogInfo.equals(mobileSessionLogInfo2))) && (((str3 = this.clientVersion) == (str4 = mobileDeviceSessionLogInfo.clientVersion) || (str3 != null && str3.equals(str4))) && ((str5 = this.osVersion) == (str6 = mobileDeviceSessionLogInfo.osVersion) || (str5 != null && str5.equals(str6)))))))))) {
            String str9 = this.lastCarrier;
            String str10 = mobileDeviceSessionLogInfo.lastCarrier;
            if (str9 == str10) {
                return true;
            }
            if (str9 != null && str9.equals(str10)) {
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

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public Date getCreated() {
        return this.created;
    }

    public String getDeviceName() {
        return this.deviceName;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getLastCarrier() {
        return this.lastCarrier;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public MobileSessionLogInfo getSessionInfo() {
        return this.sessionInfo;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public Date getUpdated() {
        return this.updated;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.sessionInfo, this.deviceName, this.clientType, this.clientVersion, this.osVersion, this.lastCarrier});
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String toString() {
        return C3794a.f20067b.serialize((C3794a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String toStringMultiline() {
        return C3794a.f20067b.serialize((C3794a) this, true);
    }

    public MobileDeviceSessionLogInfo(String str, MobileClientPlatform mobileClientPlatform) {
        this(str, mobileClientPlatform, null, null, null, null, null, null, null);
    }
}
