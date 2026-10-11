package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DesktopDeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.LegacyDeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.MobileDeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.WebDeviceSessionLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class DeviceSessionLogInfo {
    protected final Date created;
    protected final String ipAddress;
    protected final Date updated;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String ipAddress = null;
        protected Date created = null;
        protected Date updated = null;

        public DeviceSessionLogInfo build() {
            return new DeviceSessionLogInfo(this.ipAddress, this.created, this.updated);
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

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceSessionLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3448a extends StructSerializer<DeviceSessionLogInfo> {

        /* renamed from: b */
        public static final C3448a f18841b = new C3448a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r4 = this;
                java.lang.String r4 = ""
                r0 = 0
                if (r6 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r5)
                java.lang.String r1 = com.dropbox.core.stone.CompositeSerializer.readTag(r5)
                boolean r2 = r4.equals(r1)
                if (r2 == 0) goto L13
            L12:
                r1 = r0
            L13:
                if (r1 != 0) goto L75
                r4 = r0
                r1 = r4
            L17:
                com.fasterxml.jackson.core.JsonToken r2 = r5.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r2 != r3) goto L6f
                java.lang.String r2 = r5.getCurrentName()
                r5.nextToken()
                java.lang.String r3 = "ip_address"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L3d
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullable(r0)
                java.lang.Object r0 = r0.deserialize(r5)
                java.lang.String r0 = (java.lang.String) r0
                goto L17
            L3d:
                java.lang.String r3 = "created"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L54
                com.dropbox.core.stone.StoneSerializer r4 = com.dropbox.core.stone.StoneSerializers.timestamp()
                com.dropbox.core.stone.StoneSerializer r4 = com.dropbox.core.stone.StoneSerializers.nullable(r4)
                java.lang.Object r4 = r4.deserialize(r5)
                java.util.Date r4 = (java.util.Date) r4
                goto L17
            L54:
                java.lang.String r3 = "updated"
                boolean r2 = r3.equals(r2)
                if (r2 == 0) goto L6b
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.timestamp()
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.nullable(r1)
                java.lang.Object r1 = r1.deserialize(r5)
                java.util.Date r1 = (java.util.Date) r1
                goto L17
            L6b:
                com.dropbox.core.stone.StoneSerializer.skipValue(r5)
                goto L17
            L6f:
                com.dropbox.core.v2.teamlog.DeviceSessionLogInfo r2 = new com.dropbox.core.v2.teamlog.DeviceSessionLogInfo
                r2.<init>(r0, r4, r1)
                goto Lbe
            L75:
                boolean r4 = r4.equals(r1)
                r0 = 1
                if (r4 == 0) goto L83
                com.dropbox.core.v2.teamlog.DeviceSessionLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo.C3448a.f18841b
                com.dropbox.core.v2.teamlog.DeviceSessionLogInfo r2 = r4.deserialize(r5, r0)
                goto Lbe
            L83:
                java.lang.String r4 = "desktop_device_session"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto L92
                com.dropbox.core.v2.teamlog.DesktopDeviceSessionLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.DesktopDeviceSessionLogInfo.C3414a.f18807b
                com.dropbox.core.v2.teamlog.DesktopDeviceSessionLogInfo r2 = r4.deserialize(r5, r0)
                goto Lbe
            L92:
                java.lang.String r4 = "mobile_device_session"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto La1
                com.dropbox.core.v2.teamlog.MobileDeviceSessionLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.MobileDeviceSessionLogInfo.C3794a.f20067b
                com.dropbox.core.v2.teamlog.MobileDeviceSessionLogInfo r2 = r4.deserialize(r5, r0)
                goto Lbe
            La1:
                java.lang.String r4 = "web_device_session"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto Lb0
                com.dropbox.core.v2.teamlog.WebDeviceSessionLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.WebDeviceSessionLogInfo.C4401a.f20691b
                com.dropbox.core.v2.teamlog.WebDeviceSessionLogInfo r2 = r4.deserialize(r5, r0)
                goto Lbe
            Lb0:
                java.lang.String r4 = "legacy_device_session"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto Lcb
                com.dropbox.core.v2.teamlog.LegacyDeviceSessionLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.LegacyDeviceSessionLogInfo.C3692a.f19960b
                com.dropbox.core.v2.teamlog.LegacyDeviceSessionLogInfo r2 = r4.deserialize(r5, r0)
            Lbe:
                if (r6 != 0) goto Lc3
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r5)
            Lc3:
                java.lang.String r4 = r2.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r2, r4)
                return r2
            Lcb:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r0 = "No subtype found that matches tag: \""
                r6.append(r0)
                r6.append(r1)
                java.lang.String r0 = "\""
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r4.<init>(r5, r6)
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.DeviceSessionLogInfo.C3448a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.DeviceSessionLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceSessionLogInfo deviceSessionLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (deviceSessionLogInfo instanceof DesktopDeviceSessionLogInfo) {
                DesktopDeviceSessionLogInfo.C3414a.f18807b.serialize((DesktopDeviceSessionLogInfo) deviceSessionLogInfo, jsonGenerator, z);
                return;
            }
            if (deviceSessionLogInfo instanceof MobileDeviceSessionLogInfo) {
                MobileDeviceSessionLogInfo.C3794a.f20067b.serialize((MobileDeviceSessionLogInfo) deviceSessionLogInfo, jsonGenerator, z);
                return;
            }
            if (deviceSessionLogInfo instanceof WebDeviceSessionLogInfo) {
                WebDeviceSessionLogInfo.C4401a.f20691b.serialize((WebDeviceSessionLogInfo) deviceSessionLogInfo, jsonGenerator, z);
                return;
            }
            if (deviceSessionLogInfo instanceof LegacyDeviceSessionLogInfo) {
                LegacyDeviceSessionLogInfo.C3692a.f19960b.serialize((LegacyDeviceSessionLogInfo) deviceSessionLogInfo, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (deviceSessionLogInfo.ipAddress != null) {
                jsonGenerator.writeFieldName("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deviceSessionLogInfo.ipAddress, jsonGenerator);
            }
            if (deviceSessionLogInfo.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) deviceSessionLogInfo.created, jsonGenerator);
            }
            if (deviceSessionLogInfo.updated != null) {
                jsonGenerator.writeFieldName("updated");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) deviceSessionLogInfo.updated, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceSessionLogInfo(String str, Date date, Date date2) {
        this.ipAddress = str;
        this.created = LangUtil.truncateMillis(date);
        this.updated = LangUtil.truncateMillis(date2);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DeviceSessionLogInfo deviceSessionLogInfo = (DeviceSessionLogInfo) obj;
        String str = this.ipAddress;
        String str2 = deviceSessionLogInfo.ipAddress;
        if ((str == str2 || (str != null && str.equals(str2))) && ((date = this.created) == (date2 = deviceSessionLogInfo.created) || (date != null && date.equals(date2)))) {
            Date date3 = this.updated;
            Date date4 = deviceSessionLogInfo.updated;
            if (date3 == date4) {
                return true;
            }
            if (date3 != null && date3.equals(date4)) {
                return true;
            }
        }
        return false;
    }

    public Date getCreated() {
        return this.created;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.ipAddress, this.created, this.updated});
    }

    public String toString() {
        return C3448a.f18841b.serialize((C3448a) this, false);
    }

    public String toStringMultiline() {
        return C3448a.f18841b.serialize((C3448a) this, true);
    }

    public DeviceSessionLogInfo() {
        this(null, null, null);
    }
}
