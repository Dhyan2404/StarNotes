package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.WebSessionLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class WebDeviceSessionLogInfo extends DeviceSessionLogInfo {
    protected final String browser;

    /* renamed from: os */
    protected final String f20689os;
    protected final WebSessionLogInfo sessionInfo;
    protected final String userAgent;

    /* loaded from: classes4.dex */
    public static class Builder extends DeviceSessionLogInfo.Builder {
        protected final String browser;

        /* renamed from: os */
        protected final String f20690os;
        protected WebSessionLogInfo sessionInfo;
        protected final String userAgent;

        public Builder(String str, String str2, String str3) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'userAgent' is null");
            }
            this.userAgent = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'os' is null");
            }
            this.f20690os = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'browser' is null");
            }
            this.browser = str3;
            this.sessionInfo = null;
        }

        public Builder withSessionInfo(WebSessionLogInfo webSessionLogInfo) {
            this.sessionInfo = webSessionLogInfo;
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.DeviceSessionLogInfo.Builder
        public WebDeviceSessionLogInfo build() {
            return new WebDeviceSessionLogInfo(this.userAgent, this.f20690os, this.browser, this.ipAddress, this.created, this.updated, this.sessionInfo);
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

    /* renamed from: com.dropbox.core.v2.teamlog.WebDeviceSessionLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4401a extends StructSerializer<WebDeviceSessionLogInfo> {

        /* renamed from: b */
        public static final C4401a f20691b = new C4401a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("web_device_session".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.WebDeviceSessionLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r10, boolean r11) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 281
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.WebDeviceSessionLogInfo.C4401a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.WebDeviceSessionLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WebDeviceSessionLogInfo webDeviceSessionLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("web_device_session", jsonGenerator);
            jsonGenerator.writeFieldName("user_agent");
            StoneSerializers.string().serialize((StoneSerializer<String>) webDeviceSessionLogInfo.userAgent, jsonGenerator);
            jsonGenerator.writeFieldName("os");
            StoneSerializers.string().serialize((StoneSerializer<String>) webDeviceSessionLogInfo.f20689os, jsonGenerator);
            jsonGenerator.writeFieldName("browser");
            StoneSerializers.string().serialize((StoneSerializer<String>) webDeviceSessionLogInfo.browser, jsonGenerator);
            if (webDeviceSessionLogInfo.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) webDeviceSessionLogInfo.ipAddress, jsonGenerator);
            }
            if (webDeviceSessionLogInfo.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) webDeviceSessionLogInfo.created, jsonGenerator);
            }
            if (webDeviceSessionLogInfo.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) webDeviceSessionLogInfo.updated, jsonGenerator);
            }
            if (webDeviceSessionLogInfo.sessionInfo != null) {
                jsonGenerator.writeFieldName("session_info");
                StoneSerializers.nullableStruct(WebSessionLogInfo.C4402a.f20692b).serialize((StructSerializer) webDeviceSessionLogInfo.sessionInfo, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public WebDeviceSessionLogInfo(String str, String str2, String str3, String str4, Date date, Date date2, WebSessionLogInfo webSessionLogInfo) {
        super(str4, date, date2);
        this.sessionInfo = webSessionLogInfo;
        if (str != null) {
            this.userAgent = str;
            if (str2 != null) {
                this.f20689os = str2;
                if (str3 != null) {
                    this.browser = str3;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'browser' is null");
            }
            throw new IllegalArgumentException("Required value for 'os' is null");
        }
        throw new IllegalArgumentException("Required value for 'userAgent' is null");
    }

    public static Builder newBuilder(String str, String str2, String str3) {
        return new Builder(str, str2, str3);
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
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
        WebDeviceSessionLogInfo webDeviceSessionLogInfo = (WebDeviceSessionLogInfo) obj;
        String str7 = this.userAgent;
        String str8 = webDeviceSessionLogInfo.userAgent;
        if ((str7 == str8 || str7.equals(str8)) && (((str = this.f20689os) == (str2 = webDeviceSessionLogInfo.f20689os) || str.equals(str2)) && (((str3 = this.browser) == (str4 = webDeviceSessionLogInfo.browser) || str3.equals(str4)) && (((str5 = this.ipAddress) == (str6 = webDeviceSessionLogInfo.ipAddress) || (str5 != null && str5.equals(str6))) && (((date = this.created) == (date2 = webDeviceSessionLogInfo.created) || (date != null && date.equals(date2))) && ((date3 = this.updated) == (date4 = webDeviceSessionLogInfo.updated) || (date3 != null && date3.equals(date4)))))))) {
            WebSessionLogInfo webSessionLogInfo = this.sessionInfo;
            WebSessionLogInfo webSessionLogInfo2 = webDeviceSessionLogInfo.sessionInfo;
            if (webSessionLogInfo == webSessionLogInfo2) {
                return true;
            }
            if (webSessionLogInfo != null && webSessionLogInfo.equals(webSessionLogInfo2)) {
                return true;
            }
        }
        return false;
    }

    public String getBrowser() {
        return this.browser;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public Date getCreated() {
        return this.created;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getOs() {
        return this.f20689os;
    }

    public WebSessionLogInfo getSessionInfo() {
        return this.sessionInfo;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public Date getUpdated() {
        return this.updated;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.sessionInfo, this.userAgent, this.f20689os, this.browser});
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String toString() {
        return C4401a.f20691b.serialize((C4401a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo
    public String toStringMultiline() {
        return C4401a.f20691b.serialize((C4401a) this, true);
    }

    public WebDeviceSessionLogInfo(String str, String str2, String str3) {
        this(str, str2, str3, null, null, null, null);
    }
}
