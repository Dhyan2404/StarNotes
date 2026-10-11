package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DesktopDeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.LegacyDeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.MobileDeviceSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.WebDeviceSessionLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class LinkedDeviceLogInfo {
    public static final LinkedDeviceLogInfo OTHER = new LinkedDeviceLogInfo().m15508e(Tag.OTHER);

    /* renamed from: a */
    public Tag f19983a;

    /* renamed from: b */
    public MobileDeviceSessionLogInfo f19984b;

    /* renamed from: c */
    public DesktopDeviceSessionLogInfo f19985c;

    /* renamed from: d */
    public WebDeviceSessionLogInfo f19986d;

    /* renamed from: e */
    public LegacyDeviceSessionLogInfo f19987e;

    /* loaded from: classes4.dex */
    public enum Tag {
        MOBILE_DEVICE_SESSION,
        DESKTOP_DEVICE_SESSION,
        WEB_DEVICE_SESSION,
        LEGACY_DEVICE_SESSION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.LinkedDeviceLogInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3715a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19988a;

        static {
            int[] iArr = new int[Tag.values().length];
            f19988a = iArr;
            try {
                iArr[Tag.MOBILE_DEVICE_SESSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19988a[Tag.DESKTOP_DEVICE_SESSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19988a[Tag.WEB_DEVICE_SESSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19988a[Tag.LEGACY_DEVICE_SESSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19988a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.LinkedDeviceLogInfo$b */
    /* loaded from: classes4.dex */
    public static class C3716b extends UnionSerializer<LinkedDeviceLogInfo> {

        /* renamed from: b */
        public static final C3716b f19989b = new C3716b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkedDeviceLogInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            LinkedDeviceLogInfo mobileDeviceSession = "mobile_device_session".equals(readTag) ? LinkedDeviceLogInfo.mobileDeviceSession(MobileDeviceSessionLogInfo.C3794a.f20067b.deserialize(jsonParser, true)) : "desktop_device_session".equals(readTag) ? LinkedDeviceLogInfo.desktopDeviceSession(DesktopDeviceSessionLogInfo.C3414a.f18807b.deserialize(jsonParser, true)) : "web_device_session".equals(readTag) ? LinkedDeviceLogInfo.webDeviceSession(WebDeviceSessionLogInfo.C4401a.f20691b.deserialize(jsonParser, true)) : "legacy_device_session".equals(readTag) ? LinkedDeviceLogInfo.legacyDeviceSession(LegacyDeviceSessionLogInfo.C3692a.f19960b.deserialize(jsonParser, true)) : LinkedDeviceLogInfo.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return mobileDeviceSession;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkedDeviceLogInfo linkedDeviceLogInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3715a.f19988a[linkedDeviceLogInfo.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("mobile_device_session", jsonGenerator);
                MobileDeviceSessionLogInfo.C3794a.f20067b.serialize(linkedDeviceLogInfo.f19984b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("desktop_device_session", jsonGenerator);
                DesktopDeviceSessionLogInfo.C3414a.f18807b.serialize(linkedDeviceLogInfo.f19985c, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("web_device_session", jsonGenerator);
                WebDeviceSessionLogInfo.C4401a.f20691b.serialize(linkedDeviceLogInfo.f19986d, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("legacy_device_session", jsonGenerator);
            LegacyDeviceSessionLogInfo.C3692a.f19960b.serialize(linkedDeviceLogInfo.f19987e, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static LinkedDeviceLogInfo desktopDeviceSession(DesktopDeviceSessionLogInfo desktopDeviceSessionLogInfo) {
        if (desktopDeviceSessionLogInfo != null) {
            return new LinkedDeviceLogInfo().m15509f(Tag.DESKTOP_DEVICE_SESSION, desktopDeviceSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static LinkedDeviceLogInfo legacyDeviceSession(LegacyDeviceSessionLogInfo legacyDeviceSessionLogInfo) {
        if (legacyDeviceSessionLogInfo != null) {
            return new LinkedDeviceLogInfo().m15510g(Tag.LEGACY_DEVICE_SESSION, legacyDeviceSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static LinkedDeviceLogInfo mobileDeviceSession(MobileDeviceSessionLogInfo mobileDeviceSessionLogInfo) {
        if (mobileDeviceSessionLogInfo != null) {
            return new LinkedDeviceLogInfo().m15511h(Tag.MOBILE_DEVICE_SESSION, mobileDeviceSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static LinkedDeviceLogInfo webDeviceSession(WebDeviceSessionLogInfo webDeviceSessionLogInfo) {
        if (webDeviceSessionLogInfo != null) {
            return new LinkedDeviceLogInfo().m15512i(Tag.WEB_DEVICE_SESSION, webDeviceSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: e */
    public final LinkedDeviceLogInfo m15508e(Tag tag) {
        LinkedDeviceLogInfo linkedDeviceLogInfo = new LinkedDeviceLogInfo();
        linkedDeviceLogInfo.f19983a = tag;
        return linkedDeviceLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LinkedDeviceLogInfo)) {
            return false;
        }
        LinkedDeviceLogInfo linkedDeviceLogInfo = (LinkedDeviceLogInfo) obj;
        Tag tag = this.f19983a;
        if (tag != linkedDeviceLogInfo.f19983a) {
            return false;
        }
        int i = C3715a.f19988a[tag.ordinal()];
        if (i == 1) {
            MobileDeviceSessionLogInfo mobileDeviceSessionLogInfo = this.f19984b;
            MobileDeviceSessionLogInfo mobileDeviceSessionLogInfo2 = linkedDeviceLogInfo.f19984b;
            return mobileDeviceSessionLogInfo == mobileDeviceSessionLogInfo2 || mobileDeviceSessionLogInfo.equals(mobileDeviceSessionLogInfo2);
        }
        if (i == 2) {
            DesktopDeviceSessionLogInfo desktopDeviceSessionLogInfo = this.f19985c;
            DesktopDeviceSessionLogInfo desktopDeviceSessionLogInfo2 = linkedDeviceLogInfo.f19985c;
            return desktopDeviceSessionLogInfo == desktopDeviceSessionLogInfo2 || desktopDeviceSessionLogInfo.equals(desktopDeviceSessionLogInfo2);
        }
        if (i == 3) {
            WebDeviceSessionLogInfo webDeviceSessionLogInfo = this.f19986d;
            WebDeviceSessionLogInfo webDeviceSessionLogInfo2 = linkedDeviceLogInfo.f19986d;
            return webDeviceSessionLogInfo == webDeviceSessionLogInfo2 || webDeviceSessionLogInfo.equals(webDeviceSessionLogInfo2);
        }
        if (i != 4) {
            return i == 5;
        }
        LegacyDeviceSessionLogInfo legacyDeviceSessionLogInfo = this.f19987e;
        LegacyDeviceSessionLogInfo legacyDeviceSessionLogInfo2 = linkedDeviceLogInfo.f19987e;
        return legacyDeviceSessionLogInfo == legacyDeviceSessionLogInfo2 || legacyDeviceSessionLogInfo.equals(legacyDeviceSessionLogInfo2);
    }

    /* renamed from: f */
    public final LinkedDeviceLogInfo m15509f(Tag tag, DesktopDeviceSessionLogInfo desktopDeviceSessionLogInfo) {
        LinkedDeviceLogInfo linkedDeviceLogInfo = new LinkedDeviceLogInfo();
        linkedDeviceLogInfo.f19983a = tag;
        linkedDeviceLogInfo.f19985c = desktopDeviceSessionLogInfo;
        return linkedDeviceLogInfo;
    }

    /* renamed from: g */
    public final LinkedDeviceLogInfo m15510g(Tag tag, LegacyDeviceSessionLogInfo legacyDeviceSessionLogInfo) {
        LinkedDeviceLogInfo linkedDeviceLogInfo = new LinkedDeviceLogInfo();
        linkedDeviceLogInfo.f19983a = tag;
        linkedDeviceLogInfo.f19987e = legacyDeviceSessionLogInfo;
        return linkedDeviceLogInfo;
    }

    public DesktopDeviceSessionLogInfo getDesktopDeviceSessionValue() {
        if (this.f19983a == Tag.DESKTOP_DEVICE_SESSION) {
            return this.f19985c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DESKTOP_DEVICE_SESSION, but was Tag." + this.f19983a.name());
    }

    public LegacyDeviceSessionLogInfo getLegacyDeviceSessionValue() {
        if (this.f19983a == Tag.LEGACY_DEVICE_SESSION) {
            return this.f19987e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LEGACY_DEVICE_SESSION, but was Tag." + this.f19983a.name());
    }

    public MobileDeviceSessionLogInfo getMobileDeviceSessionValue() {
        if (this.f19983a == Tag.MOBILE_DEVICE_SESSION) {
            return this.f19984b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MOBILE_DEVICE_SESSION, but was Tag." + this.f19983a.name());
    }

    public WebDeviceSessionLogInfo getWebDeviceSessionValue() {
        if (this.f19983a == Tag.WEB_DEVICE_SESSION) {
            return this.f19986d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.WEB_DEVICE_SESSION, but was Tag." + this.f19983a.name());
    }

    /* renamed from: h */
    public final LinkedDeviceLogInfo m15511h(Tag tag, MobileDeviceSessionLogInfo mobileDeviceSessionLogInfo) {
        LinkedDeviceLogInfo linkedDeviceLogInfo = new LinkedDeviceLogInfo();
        linkedDeviceLogInfo.f19983a = tag;
        linkedDeviceLogInfo.f19984b = mobileDeviceSessionLogInfo;
        return linkedDeviceLogInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19983a, this.f19984b, this.f19985c, this.f19986d, this.f19987e});
    }

    /* renamed from: i */
    public final LinkedDeviceLogInfo m15512i(Tag tag, WebDeviceSessionLogInfo webDeviceSessionLogInfo) {
        LinkedDeviceLogInfo linkedDeviceLogInfo = new LinkedDeviceLogInfo();
        linkedDeviceLogInfo.f19983a = tag;
        linkedDeviceLogInfo.f19986d = webDeviceSessionLogInfo;
        return linkedDeviceLogInfo;
    }

    public boolean isDesktopDeviceSession() {
        return this.f19983a == Tag.DESKTOP_DEVICE_SESSION;
    }

    public boolean isLegacyDeviceSession() {
        return this.f19983a == Tag.LEGACY_DEVICE_SESSION;
    }

    public boolean isMobileDeviceSession() {
        return this.f19983a == Tag.MOBILE_DEVICE_SESSION;
    }

    public boolean isOther() {
        return this.f19983a == Tag.OTHER;
    }

    public boolean isWebDeviceSession() {
        return this.f19983a == Tag.WEB_DEVICE_SESSION;
    }

    public Tag tag() {
        return this.f19983a;
    }

    public String toString() {
        return C3716b.f19989b.serialize((C3716b) this, false);
    }

    public String toStringMultiline() {
        return C3716b.f19989b.serialize((C3716b) this, true);
    }
}
