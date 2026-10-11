package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamLinkedAppLogInfo;
import com.dropbox.core.p006v2.teamlog.UserLinkedAppLogInfo;
import com.dropbox.core.p006v2.teamlog.UserOrTeamLinkedAppLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class AppLogInfo {
    protected final String appId;
    protected final String displayName;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String appId = null;
        protected String displayName = null;

        public AppLogInfo build() {
            return new AppLogInfo(this.appId, this.displayName);
        }

        public Builder withAppId(String str) {
            this.appId = str;
            return this;
        }

        public Builder withDisplayName(String str) {
            this.displayName = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AppLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3363a extends StructSerializer<AppLogInfo> {

        /* renamed from: b */
        public static final C3363a f18744b = new C3363a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.AppLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r4, boolean r5) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
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
                if (r1 != 0) goto L5d
                r3 = r0
            L16:
                com.fasterxml.jackson.core.JsonToken r1 = r4.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r2 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r1 != r2) goto L57
                java.lang.String r1 = r4.getCurrentName()
                r4.nextToken()
                java.lang.String r2 = "app_id"
                boolean r2 = r2.equals(r1)
                if (r2 == 0) goto L3c
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullable(r0)
                java.lang.Object r0 = r0.deserialize(r4)
                java.lang.String r0 = (java.lang.String) r0
                goto L16
            L3c:
                java.lang.String r2 = "display_name"
                boolean r1 = r2.equals(r1)
                if (r1 == 0) goto L53
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.nullable(r3)
                java.lang.Object r3 = r3.deserialize(r4)
                java.lang.String r3 = (java.lang.String) r3
                goto L16
            L53:
                com.dropbox.core.stone.StoneSerializer.skipValue(r4)
                goto L16
            L57:
                com.dropbox.core.v2.teamlog.AppLogInfo r1 = new com.dropbox.core.v2.teamlog.AppLogInfo
                r1.<init>(r0, r3)
                goto L97
            L5d:
                boolean r3 = r3.equals(r1)
                r0 = 1
                if (r3 == 0) goto L6b
                com.dropbox.core.v2.teamlog.AppLogInfo$a r3 = com.dropbox.core.p006v2.teamlog.AppLogInfo.C3363a.f18744b
                com.dropbox.core.v2.teamlog.AppLogInfo r1 = r3.deserialize(r4, r0)
                goto L97
            L6b:
                java.lang.String r3 = "user_or_team_linked_app"
                boolean r3 = r3.equals(r1)
                if (r3 == 0) goto L7a
                com.dropbox.core.v2.teamlog.UserOrTeamLinkedAppLogInfo$a r3 = com.dropbox.core.p006v2.teamlog.UserOrTeamLinkedAppLogInfo.C4394a.f20682b
                com.dropbox.core.v2.teamlog.UserOrTeamLinkedAppLogInfo r1 = r3.deserialize(r4, r0)
                goto L97
            L7a:
                java.lang.String r3 = "user_linked_app"
                boolean r3 = r3.equals(r1)
                if (r3 == 0) goto L89
                com.dropbox.core.v2.teamlog.UserLinkedAppLogInfo$a r3 = com.dropbox.core.p006v2.teamlog.UserLinkedAppLogInfo.C4391a.f20679b
                com.dropbox.core.v2.teamlog.UserLinkedAppLogInfo r1 = r3.deserialize(r4, r0)
                goto L97
            L89:
                java.lang.String r3 = "team_linked_app"
                boolean r3 = r3.equals(r1)
                if (r3 == 0) goto La4
                com.dropbox.core.v2.teamlog.TeamLinkedAppLogInfo$a r3 = com.dropbox.core.p006v2.teamlog.TeamLinkedAppLogInfo.C4284a.f20560b
                com.dropbox.core.v2.teamlog.TeamLinkedAppLogInfo r1 = r3.deserialize(r4, r0)
            L97:
                if (r5 != 0) goto L9c
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r4)
            L9c:
                java.lang.String r3 = r1.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r1, r3)
                return r1
            La4:
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
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.AppLogInfo.C3363a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.AppLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AppLogInfo appLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (appLogInfo instanceof UserOrTeamLinkedAppLogInfo) {
                UserOrTeamLinkedAppLogInfo.C4394a.f20682b.serialize((UserOrTeamLinkedAppLogInfo) appLogInfo, jsonGenerator, z);
                return;
            }
            if (appLogInfo instanceof UserLinkedAppLogInfo) {
                UserLinkedAppLogInfo.C4391a.f20679b.serialize((UserLinkedAppLogInfo) appLogInfo, jsonGenerator, z);
                return;
            }
            if (appLogInfo instanceof TeamLinkedAppLogInfo) {
                TeamLinkedAppLogInfo.C4284a.f20560b.serialize((TeamLinkedAppLogInfo) appLogInfo, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (appLogInfo.appId != null) {
                jsonGenerator.writeFieldName("app_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) appLogInfo.appId, jsonGenerator);
            }
            if (appLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) appLogInfo.displayName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AppLogInfo(String str, String str2) {
        this.appId = str;
        this.displayName = str2;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AppLogInfo appLogInfo = (AppLogInfo) obj;
        String str = this.appId;
        String str2 = appLogInfo.appId;
        if (str == str2 || (str != null && str.equals(str2))) {
            String str3 = this.displayName;
            String str4 = appLogInfo.displayName;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getAppId() {
        return this.appId;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appId, this.displayName});
    }

    public String toString() {
        return C3363a.f18744b.serialize((C3363a) this, false);
    }

    public String toStringMultiline() {
        return C3363a.f18744b.serialize((C3363a) this, true);
    }

    public AppLogInfo() {
        this(null, null);
    }
}
