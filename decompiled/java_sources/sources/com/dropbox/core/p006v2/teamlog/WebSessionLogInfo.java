package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* loaded from: classes4.dex */
public class WebSessionLogInfo extends SessionLogInfo {

    /* renamed from: com.dropbox.core.v2.teamlog.WebSessionLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4402a extends StructSerializer<WebSessionLogInfo> {

        /* renamed from: b */
        public static final C4402a f20692b = new C4402a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("web".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.WebSessionLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r3, boolean r4) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r2 = this;
                r2 = 0
                if (r4 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r3)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r3)
                java.lang.String r1 = "web"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r2
            L13:
                if (r0 != 0) goto L51
            L15:
                com.fasterxml.jackson.core.JsonToken r0 = r3.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r0 != r1) goto L3f
                java.lang.String r0 = r3.getCurrentName()
                r3.nextToken()
                java.lang.String r1 = "session_id"
                boolean r0 = r1.equals(r0)
                if (r0 == 0) goto L3b
                com.dropbox.core.stone.StoneSerializer r2 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r2 = com.dropbox.core.stone.StoneSerializers.nullable(r2)
                java.lang.Object r2 = r2.deserialize(r3)
                java.lang.String r2 = (java.lang.String) r2
                goto L15
            L3b:
                com.dropbox.core.stone.StoneSerializer.skipValue(r3)
                goto L15
            L3f:
                com.dropbox.core.v2.teamlog.WebSessionLogInfo r0 = new com.dropbox.core.v2.teamlog.WebSessionLogInfo
                r0.<init>(r2)
                if (r4 != 0) goto L49
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r3)
            L49:
                java.lang.String r2 = r0.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r0, r2)
                return r0
            L51:
                com.fasterxml.jackson.core.JsonParseException r2 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r4.append(r1)
                r4.append(r0)
                java.lang.String r0 = "\""
                r4.append(r0)
                java.lang.String r4 = r4.toString()
                r2.<init>(r3, r4)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.WebSessionLogInfo.C4402a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.WebSessionLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WebSessionLogInfo webSessionLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("web", jsonGenerator);
            if (webSessionLogInfo.sessionId != null) {
                jsonGenerator.writeFieldName("session_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) webSessionLogInfo.sessionId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public WebSessionLogInfo(String str) {
        super(str);
    }

    @Override // com.dropbox.core.p006v2.teamlog.SessionLogInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.sessionId;
        String str2 = ((WebSessionLogInfo) obj).sessionId;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    @Override // com.dropbox.core.p006v2.teamlog.SessionLogInfo
    public String getSessionId() {
        return this.sessionId;
    }

    @Override // com.dropbox.core.p006v2.teamlog.SessionLogInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.teamlog.SessionLogInfo
    public String toString() {
        return C4402a.f20692b.serialize((C4402a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.SessionLogInfo
    public String toStringMultiline() {
        return C4402a.f20692b.serialize((C4402a) this, true);
    }

    public WebSessionLogInfo() {
        this(null);
    }
}
