package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DesktopSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.MobileSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.WebSessionLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class SessionLogInfo {
    protected final String sessionId;

    /* renamed from: com.dropbox.core.v2.teamlog.SessionLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4001a extends StructSerializer<SessionLogInfo> {

        /* renamed from: b */
        public static final C4001a f20277b = new C4001a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.SessionLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r4, boolean r5) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r3 = this;
                java.lang.String r3 = ""
                r0 = 0
                if (r5 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r4)
                java.lang.String r1 = com.dropbox.core.stone.CompositeSerializer.readTag(r4)
                boolean r2 = r3.equals(r1)
                if (r2 == 0) goto L13
            L12:
                r1 = r0
            L13:
                if (r1 != 0) goto L46
            L15:
                com.fasterxml.jackson.core.JsonToken r3 = r4.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r3 != r1) goto L40
                java.lang.String r3 = r4.getCurrentName()
                r4.nextToken()
                java.lang.String r1 = "session_id"
                boolean r3 = r1.equals(r3)
                if (r3 == 0) goto L3c
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.nullable(r3)
                java.lang.Object r3 = r3.deserialize(r4)
                java.lang.String r3 = (java.lang.String) r3
                r0 = r3
                goto L15
            L3c:
                com.dropbox.core.stone.StoneSerializer.skipValue(r4)
                goto L15
            L40:
                com.dropbox.core.v2.teamlog.SessionLogInfo r3 = new com.dropbox.core.v2.teamlog.SessionLogInfo
                r3.<init>(r0)
                goto L80
            L46:
                boolean r3 = r3.equals(r1)
                r0 = 1
                if (r3 == 0) goto L54
                com.dropbox.core.v2.teamlog.SessionLogInfo$a r3 = com.dropbox.core.p006v2.teamlog.SessionLogInfo.C4001a.f20277b
                com.dropbox.core.v2.teamlog.SessionLogInfo r3 = r3.deserialize(r4, r0)
                goto L80
            L54:
                java.lang.String r3 = "web"
                boolean r3 = r3.equals(r1)
                if (r3 == 0) goto L63
                com.dropbox.core.v2.teamlog.WebSessionLogInfo$a r3 = com.dropbox.core.p006v2.teamlog.WebSessionLogInfo.C4402a.f20692b
                com.dropbox.core.v2.teamlog.WebSessionLogInfo r3 = r3.deserialize(r4, r0)
                goto L80
            L63:
                java.lang.String r3 = "desktop"
                boolean r3 = r3.equals(r1)
                if (r3 == 0) goto L72
                com.dropbox.core.v2.teamlog.DesktopSessionLogInfo$a r3 = com.dropbox.core.p006v2.teamlog.DesktopSessionLogInfo.C3415a.f18808b
                com.dropbox.core.v2.teamlog.DesktopSessionLogInfo r3 = r3.deserialize(r4, r0)
                goto L80
            L72:
                java.lang.String r3 = "mobile"
                boolean r3 = r3.equals(r1)
                if (r3 == 0) goto L8d
                com.dropbox.core.v2.teamlog.MobileSessionLogInfo$a r3 = com.dropbox.core.p006v2.teamlog.MobileSessionLogInfo.C3795a.f20068b
                com.dropbox.core.v2.teamlog.MobileSessionLogInfo r3 = r3.deserialize(r4, r0)
            L80:
                if (r5 != 0) goto L85
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r4)
            L85:
                java.lang.String r4 = r3.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r3, r4)
                return r3
            L8d:
                com.fasterxml.jackson.core.JsonParseException r3 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r0 = "No subtype found that matches tag: \""
                r5.append(r0)
                r5.append(r1)
                java.lang.String r0 = "\""
                r5.append(r0)
                java.lang.String r5 = r5.toString()
                r3.<init>(r4, r5)
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.SessionLogInfo.C4001a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.SessionLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SessionLogInfo sessionLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (sessionLogInfo instanceof WebSessionLogInfo) {
                WebSessionLogInfo.C4402a.f20692b.serialize((WebSessionLogInfo) sessionLogInfo, jsonGenerator, z);
                return;
            }
            if (sessionLogInfo instanceof DesktopSessionLogInfo) {
                DesktopSessionLogInfo.C3415a.f18808b.serialize((DesktopSessionLogInfo) sessionLogInfo, jsonGenerator, z);
                return;
            }
            if (sessionLogInfo instanceof MobileSessionLogInfo) {
                MobileSessionLogInfo.C3795a.f20068b.serialize((MobileSessionLogInfo) sessionLogInfo, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sessionLogInfo.sessionId != null) {
                jsonGenerator.writeFieldName("session_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sessionLogInfo.sessionId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SessionLogInfo(String str) {
        this.sessionId = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.sessionId;
        String str2 = ((SessionLogInfo) obj).sessionId;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionId});
    }

    public String toString() {
        return C4001a.f20277b.serialize((C4001a) this, false);
    }

    public String toStringMultiline() {
        return C4001a.f20277b.serialize((C4001a) this, true);
    }

    public SessionLogInfo() {
        this(null);
    }
}
