package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.DeviceSessionArg;
import com.dropbox.core.p006v2.team.RevokeDesktopClientArg;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class RevokeDeviceSessionArg {

    /* renamed from: a */
    public Tag f18443a;

    /* renamed from: b */
    public DeviceSessionArg f18444b;

    /* renamed from: c */
    public RevokeDesktopClientArg f18445c;

    /* renamed from: d */
    public DeviceSessionArg f18446d;

    /* loaded from: classes4.dex */
    public enum Tag {
        WEB_SESSION,
        DESKTOP_CLIENT,
        MOBILE_CLIENT
    }

    /* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionArg$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3195a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18447a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18447a = iArr;
            try {
                iArr[Tag.WEB_SESSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18447a[Tag.DESKTOP_CLIENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18447a[Tag.MOBILE_CLIENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionArg$b */
    /* loaded from: classes4.dex */
    public static class C3196b extends UnionSerializer<RevokeDeviceSessionArg> {

        /* renamed from: b */
        public static final C3196b f18448b = new C3196b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeDeviceSessionArg deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RevokeDeviceSessionArg mobileClient;
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
            if ("web_session".equals(readTag)) {
                mobileClient = RevokeDeviceSessionArg.webSession(DeviceSessionArg.C3031a.f18147b.deserialize(jsonParser, true));
            } else if ("desktop_client".equals(readTag)) {
                mobileClient = RevokeDeviceSessionArg.desktopClient(RevokeDesktopClientArg.C3194a.f18442b.deserialize(jsonParser, true));
            } else {
                if (!"mobile_client".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                mobileClient = RevokeDeviceSessionArg.mobileClient(DeviceSessionArg.C3031a.f18147b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return mobileClient;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeDeviceSessionArg revokeDeviceSessionArg, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3195a.f18447a[revokeDeviceSessionArg.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("web_session", jsonGenerator);
                DeviceSessionArg.C3031a.f18147b.serialize(revokeDeviceSessionArg.f18444b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("desktop_client", jsonGenerator);
                RevokeDesktopClientArg.C3194a.f18442b.serialize(revokeDeviceSessionArg.f18445c, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + revokeDeviceSessionArg.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("mobile_client", jsonGenerator);
            DeviceSessionArg.C3031a.f18147b.serialize(revokeDeviceSessionArg.f18446d, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static RevokeDeviceSessionArg desktopClient(RevokeDesktopClientArg revokeDesktopClientArg) {
        if (revokeDesktopClientArg != null) {
            return new RevokeDeviceSessionArg().m12627e(Tag.DESKTOP_CLIENT, revokeDesktopClientArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RevokeDeviceSessionArg mobileClient(DeviceSessionArg deviceSessionArg) {
        if (deviceSessionArg != null) {
            return new RevokeDeviceSessionArg().m12628f(Tag.MOBILE_CLIENT, deviceSessionArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RevokeDeviceSessionArg webSession(DeviceSessionArg deviceSessionArg) {
        if (deviceSessionArg != null) {
            return new RevokeDeviceSessionArg().m12629g(Tag.WEB_SESSION, deviceSessionArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final RevokeDeviceSessionArg m12626d(Tag tag) {
        RevokeDeviceSessionArg revokeDeviceSessionArg = new RevokeDeviceSessionArg();
        revokeDeviceSessionArg.f18443a = tag;
        return revokeDeviceSessionArg;
    }

    /* renamed from: e */
    public final RevokeDeviceSessionArg m12627e(Tag tag, RevokeDesktopClientArg revokeDesktopClientArg) {
        RevokeDeviceSessionArg revokeDeviceSessionArg = new RevokeDeviceSessionArg();
        revokeDeviceSessionArg.f18443a = tag;
        revokeDeviceSessionArg.f18445c = revokeDesktopClientArg;
        return revokeDeviceSessionArg;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RevokeDeviceSessionArg)) {
            return false;
        }
        RevokeDeviceSessionArg revokeDeviceSessionArg = (RevokeDeviceSessionArg) obj;
        Tag tag = this.f18443a;
        if (tag != revokeDeviceSessionArg.f18443a) {
            return false;
        }
        int i = C3195a.f18447a[tag.ordinal()];
        if (i == 1) {
            DeviceSessionArg deviceSessionArg = this.f18444b;
            DeviceSessionArg deviceSessionArg2 = revokeDeviceSessionArg.f18444b;
            return deviceSessionArg == deviceSessionArg2 || deviceSessionArg.equals(deviceSessionArg2);
        }
        if (i == 2) {
            RevokeDesktopClientArg revokeDesktopClientArg = this.f18445c;
            RevokeDesktopClientArg revokeDesktopClientArg2 = revokeDeviceSessionArg.f18445c;
            return revokeDesktopClientArg == revokeDesktopClientArg2 || revokeDesktopClientArg.equals(revokeDesktopClientArg2);
        }
        if (i != 3) {
            return false;
        }
        DeviceSessionArg deviceSessionArg3 = this.f18446d;
        DeviceSessionArg deviceSessionArg4 = revokeDeviceSessionArg.f18446d;
        return deviceSessionArg3 == deviceSessionArg4 || deviceSessionArg3.equals(deviceSessionArg4);
    }

    /* renamed from: f */
    public final RevokeDeviceSessionArg m12628f(Tag tag, DeviceSessionArg deviceSessionArg) {
        RevokeDeviceSessionArg revokeDeviceSessionArg = new RevokeDeviceSessionArg();
        revokeDeviceSessionArg.f18443a = tag;
        revokeDeviceSessionArg.f18446d = deviceSessionArg;
        return revokeDeviceSessionArg;
    }

    /* renamed from: g */
    public final RevokeDeviceSessionArg m12629g(Tag tag, DeviceSessionArg deviceSessionArg) {
        RevokeDeviceSessionArg revokeDeviceSessionArg = new RevokeDeviceSessionArg();
        revokeDeviceSessionArg.f18443a = tag;
        revokeDeviceSessionArg.f18444b = deviceSessionArg;
        return revokeDeviceSessionArg;
    }

    public RevokeDesktopClientArg getDesktopClientValue() {
        if (this.f18443a == Tag.DESKTOP_CLIENT) {
            return this.f18445c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DESKTOP_CLIENT, but was Tag." + this.f18443a.name());
    }

    public DeviceSessionArg getMobileClientValue() {
        if (this.f18443a == Tag.MOBILE_CLIENT) {
            return this.f18446d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MOBILE_CLIENT, but was Tag." + this.f18443a.name());
    }

    public DeviceSessionArg getWebSessionValue() {
        if (this.f18443a == Tag.WEB_SESSION) {
            return this.f18444b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.WEB_SESSION, but was Tag." + this.f18443a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18443a, this.f18444b, this.f18445c, this.f18446d});
    }

    public boolean isDesktopClient() {
        return this.f18443a == Tag.DESKTOP_CLIENT;
    }

    public boolean isMobileClient() {
        return this.f18443a == Tag.MOBILE_CLIENT;
    }

    public boolean isWebSession() {
        return this.f18443a == Tag.WEB_SESSION;
    }

    public Tag tag() {
        return this.f18443a;
    }

    public String toString() {
        return C3196b.f18448b.serialize((C3196b) this, false);
    }

    public String toStringMultiline() {
        return C3196b.f18448b.serialize((C3196b) this, true);
    }
}
