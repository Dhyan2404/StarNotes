package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AppLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* loaded from: classes4.dex */
public class UserLinkedAppLogInfo extends AppLogInfo {

    /* loaded from: classes4.dex */
    public static class Builder extends AppLogInfo.Builder {
        @Override // com.dropbox.core.v2.teamlog.AppLogInfo.Builder
        public UserLinkedAppLogInfo build() {
            return new UserLinkedAppLogInfo(this.appId, this.displayName);
        }

        @Override // com.dropbox.core.v2.teamlog.AppLogInfo.Builder
        public Builder withAppId(String str) {
            super.withAppId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.AppLogInfo.Builder
        public Builder withDisplayName(String str) {
            super.withDisplayName(str);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.UserLinkedAppLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4391a extends StructSerializer<UserLinkedAppLogInfo> {

        /* renamed from: b */
        public static final C4391a f20679b = new C4391a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("user_linked_app".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.UserLinkedAppLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r4, boolean r5) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r3 = this;
                r3 = 0
                if (r5 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r4)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r4)
                java.lang.String r1 = "user_linked_app"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r3
            L13:
                if (r0 != 0) goto L69
                r0 = r3
            L16:
                com.fasterxml.jackson.core.JsonToken r1 = r4.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r2 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r1 != r2) goto L57
                java.lang.String r1 = r4.getCurrentName()
                r4.nextToken()
                java.lang.String r2 = "app_id"
                boolean r2 = r2.equals(r1)
                if (r2 == 0) goto L3c
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.nullable(r3)
                java.lang.Object r3 = r3.deserialize(r4)
                java.lang.String r3 = (java.lang.String) r3
                goto L16
            L3c:
                java.lang.String r2 = "display_name"
                boolean r1 = r2.equals(r1)
                if (r1 == 0) goto L53
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullable(r0)
                java.lang.Object r0 = r0.deserialize(r4)
                java.lang.String r0 = (java.lang.String) r0
                goto L16
            L53:
                com.dropbox.core.stone.StoneSerializer.skipValue(r4)
                goto L16
            L57:
                com.dropbox.core.v2.teamlog.UserLinkedAppLogInfo r1 = new com.dropbox.core.v2.teamlog.UserLinkedAppLogInfo
                r1.<init>(r3, r0)
                if (r5 != 0) goto L61
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r4)
            L61:
                java.lang.String r3 = r1.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r1, r3)
                return r1
            L69:
                com.fasterxml.jackson.core.JsonParseException r3 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r5.append(r1)
                r5.append(r0)
                java.lang.String r0 = "\""
                r5.append(r0)
                java.lang.String r5 = r5.toString()
                r3.<init>(r4, r5)
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.UserLinkedAppLogInfo.C4391a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.UserLinkedAppLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserLinkedAppLogInfo userLinkedAppLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("user_linked_app", jsonGenerator);
            if (userLinkedAppLogInfo.appId != null) {
                jsonGenerator.writeFieldName("app_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userLinkedAppLogInfo.appId, jsonGenerator);
            }
            if (userLinkedAppLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userLinkedAppLogInfo.displayName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserLinkedAppLogInfo(String str, String str2) {
        super(str, str2);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Override // com.dropbox.core.p006v2.teamlog.AppLogInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserLinkedAppLogInfo userLinkedAppLogInfo = (UserLinkedAppLogInfo) obj;
        String str = this.appId;
        String str2 = userLinkedAppLogInfo.appId;
        if (str == str2 || (str != null && str.equals(str2))) {
            String str3 = this.displayName;
            String str4 = userLinkedAppLogInfo.displayName;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.teamlog.AppLogInfo
    public String getAppId() {
        return this.appId;
    }

    @Override // com.dropbox.core.p006v2.teamlog.AppLogInfo
    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.dropbox.core.p006v2.teamlog.AppLogInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.teamlog.AppLogInfo
    public String toString() {
        return C4391a.f20679b.serialize((C4391a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.AppLogInfo
    public String toStringMultiline() {
        return C4391a.f20679b.serialize((C4391a) this, true);
    }

    public UserLinkedAppLogInfo() {
        this(null, null);
    }
}
