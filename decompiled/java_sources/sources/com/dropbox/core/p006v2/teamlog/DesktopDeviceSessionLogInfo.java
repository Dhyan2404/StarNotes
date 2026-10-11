package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.team.DesktopPlatform;
import com.dropbox.core.p006v2.teamlog.DesktopSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class DesktopDeviceSessionLogInfo extends DeviceSessionLogInfo {
    protected final DesktopPlatform clientType;
    protected final String clientVersion;
    protected final String hostName;
    protected final boolean isDeleteOnUnlinkSupported;
    protected final String platform;
    protected final DesktopSessionLogInfo sessionInfo;

    /* loaded from: classes4.dex */
    public static class Builder extends DeviceSessionLogInfo.Builder {
        protected final DesktopPlatform clientType;
        protected String clientVersion;
        protected final String hostName;
        protected final boolean isDeleteOnUnlinkSupported;
        protected final String platform;
        protected DesktopSessionLogInfo sessionInfo;

        public Builder(String str, DesktopPlatform desktopPlatform, String str2, boolean z) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'hostName' is null");
            }
            this.hostName = str;
            if (desktopPlatform == null) {
                throw new IllegalArgumentException("Required value for 'clientType' is null");
            }
            this.clientType = desktopPlatform;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'platform' is null");
            }
            this.platform = str2;
            this.isDeleteOnUnlinkSupported = z;
            this.sessionInfo = null;
            this.clientVersion = null;
        }

        public Builder withClientVersion(String str) {
            this.clientVersion = str;
            return this;
        }

        public Builder withSessionInfo(DesktopSessionLogInfo desktopSessionLogInfo) {
            this.sessionInfo = desktopSessionLogInfo;
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.DeviceSessionLogInfo.Builder
        public DesktopDeviceSessionLogInfo build() {
            return new DesktopDeviceSessionLogInfo(this.hostName, this.clientType, this.platform, this.isDeleteOnUnlinkSupported, this.ipAddress, this.created, this.updated, this.sessionInfo, this.clientVersion);
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

    /* renamed from: com.dropbox.core.v2.teamlog.DesktopDeviceSessionLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3414a extends StructSerializer<DesktopDeviceSessionLogInfo> {

        /* renamed from: b */
        public static final C3414a f18807b = new C3414a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("desktop_device_session".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.DesktopDeviceSessionLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r12, boolean r13) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 337
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.DesktopDeviceSessionLogInfo.C3414a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.DesktopDeviceSessionLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DesktopDeviceSessionLogInfo desktopDeviceSessionLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("desktop_device_session", jsonGenerator);
            jsonGenerator.writeFieldName("host_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) desktopDeviceSessionLogInfo.hostName, jsonGenerator);
            jsonGenerator.writeFieldName("client_type");
            DesktopPlatform.Serializer.INSTANCE.serialize(desktopDeviceSessionLogInfo.clientType, jsonGenerator);
            jsonGenerator.writeFieldName("platform");
            StoneSerializers.string().serialize((StoneSerializer<String>) desktopDeviceSessionLogInfo.platform, jsonGenerator);
            jsonGenerator.writeFieldName("is_delete_on_unlink_supported");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(desktopDeviceSessionLogInfo.isDeleteOnUnlinkSupported), jsonGenerator);
            if (desktopDeviceSessionLogInfo.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) desktopDeviceSessionLogInfo.ipAddress, jsonGenerator);
            }
            if (desktopDeviceSessionLogInfo.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) desktopDeviceSessionLogInfo.created, jsonGenerator);
            }
            if (desktopDeviceSessionLogInfo.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) desktopDeviceSessionLogInfo.updated, jsonGenerator);
            }
            if (desktopDeviceSessionLogInfo.sessionInfo != null) {
                jsonGenerator.writeFieldName("session_info");
                StoneSerializers.nullableStruct(DesktopSessionLogInfo.C3415a.f18808b).serialize((StructSerializer) desktopDeviceSessionLogInfo.sessionInfo, jsonGenerator);
            }
            if (desktopDeviceSessionLogInfo.clientVersion != null) {
                jsonGenerator.writeFieldName("client_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) desktopDeviceSessionLogInfo.clientVersion, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DesktopDeviceSessionLogInfo(String str, DesktopPlatform desktopPlatform, String str2, boolean z, String str3, Date date, Date date2, DesktopSessionLogInfo desktopSessionLogInfo, String str4) {
        super(str3, date, date2);
        this.sessionInfo = desktopSessionLogInfo;
        if (str != null) {
            this.hostName = str;
            if (desktopPlatform != null) {
                this.clientType = desktopPlatform;
                this.clientVersion = str4;
                if (str2 != null) {
                    this.platform = str2;
                    this.isDeleteOnUnlinkSupported = z;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'platform' is null");
            }
            throw new IllegalArgumentException("Required value for 'clientType' is null");
        }
        throw new IllegalArgumentException("Required value for 'hostName' is null");
    }

    public static Builder newBuilder(String str, DesktopPlatform desktopPlatform, String str2, boolean z) {
        return new Builder(str, desktopPlatform, str2, z);
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public boolean equals(Object obj) {
        DesktopPlatform desktopPlatform;
        DesktopPlatform desktopPlatform2;
        String str;
        String str2;
        String str3;
        String str4;
        Date date;
        Date date2;
        Date date3;
        Date date4;
        DesktopSessionLogInfo desktopSessionLogInfo;
        DesktopSessionLogInfo desktopSessionLogInfo2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DesktopDeviceSessionLogInfo desktopDeviceSessionLogInfo = (DesktopDeviceSessionLogInfo) obj;
        String str5 = this.hostName;
        String str6 = desktopDeviceSessionLogInfo.hostName;
        if ((str5 == str6 || str5.equals(str6)) && (((desktopPlatform = this.clientType) == (desktopPlatform2 = desktopDeviceSessionLogInfo.clientType) || desktopPlatform.equals(desktopPlatform2)) && (((str = this.platform) == (str2 = desktopDeviceSessionLogInfo.platform) || str.equals(str2)) && this.isDeleteOnUnlinkSupported == desktopDeviceSessionLogInfo.isDeleteOnUnlinkSupported && (((str3 = this.ipAddress) == (str4 = desktopDeviceSessionLogInfo.ipAddress) || (str3 != null && str3.equals(str4))) && (((date = this.created) == (date2 = desktopDeviceSessionLogInfo.created) || (date != null && date.equals(date2))) && (((date3 = this.updated) == (date4 = desktopDeviceSessionLogInfo.updated) || (date3 != null && date3.equals(date4))) && ((desktopSessionLogInfo = this.sessionInfo) == (desktopSessionLogInfo2 = desktopDeviceSessionLogInfo.sessionInfo) || (desktopSessionLogInfo != null && desktopSessionLogInfo.equals(desktopSessionLogInfo2))))))))) {
            String str7 = this.clientVersion;
            String str8 = desktopDeviceSessionLogInfo.clientVersion;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
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

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public Date getCreated() {
        return this.created;
    }

    public String getHostName() {
        return this.hostName;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String getIpAddress() {
        return this.ipAddress;
    }

    public boolean getIsDeleteOnUnlinkSupported() {
        return this.isDeleteOnUnlinkSupported;
    }

    public String getPlatform() {
        return this.platform;
    }

    public DesktopSessionLogInfo getSessionInfo() {
        return this.sessionInfo;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public Date getUpdated() {
        return this.updated;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.sessionInfo, this.hostName, this.clientType, this.clientVersion, this.platform, Boolean.valueOf(this.isDeleteOnUnlinkSupported)});
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String toString() {
        return C3414a.f18807b.serialize((C3414a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String toStringMultiline() {
        return C3414a.f18807b.serialize((C3414a) this, true);
    }

    public DesktopDeviceSessionLogInfo(String str, DesktopPlatform desktopPlatform, String str2, boolean z) {
        this(str, desktopPlatform, str2, z, null, null, null, null, null);
    }
}
