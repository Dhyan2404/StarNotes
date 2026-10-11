package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.UserLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* loaded from: classes4.dex */
public class NonTeamMemberLogInfo extends UserLogInfo {

    /* loaded from: classes4.dex */
    public static class Builder extends UserLogInfo.Builder {
        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public NonTeamMemberLogInfo build() {
            return new NonTeamMemberLogInfo(this.accountId, this.displayName, this.email);
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public Builder withAccountId(String str) {
            super.withAccountId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public Builder withDisplayName(String str) {
            super.withDisplayName(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public Builder withEmail(String str) {
            super.withEmail(str);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3813a extends StructSerializer<NonTeamMemberLogInfo> {

        /* renamed from: b */
        public static final C3813a f20086b = new C3813a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("non_team_member".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.NonTeamMemberLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r4 = this;
                r4 = 0
                if (r6 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r5)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r5)
                java.lang.String r1 = "non_team_member"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r4
            L13:
                if (r0 != 0) goto L81
                r0 = r4
                r1 = r0
            L17:
                com.fasterxml.jackson.core.JsonToken r2 = r5.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r2 != r3) goto L6f
                java.lang.String r2 = r5.getCurrentName()
                r5.nextToken()
                java.lang.String r3 = "account_id"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L3d
                com.dropbox.core.stone.StoneSerializer r4 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r4 = com.dropbox.core.stone.StoneSerializers.nullable(r4)
                java.lang.Object r4 = r4.deserialize(r5)
                java.lang.String r4 = (java.lang.String) r4
                goto L17
            L3d:
                java.lang.String r3 = "display_name"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L54
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullable(r0)
                java.lang.Object r0 = r0.deserialize(r5)
                java.lang.String r0 = (java.lang.String) r0
                goto L17
            L54:
                java.lang.String r3 = "email"
                boolean r2 = r3.equals(r2)
                if (r2 == 0) goto L6b
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.nullable(r1)
                java.lang.Object r1 = r1.deserialize(r5)
                java.lang.String r1 = (java.lang.String) r1
                goto L17
            L6b:
                com.dropbox.core.stone.StoneSerializer.skipValue(r5)
                goto L17
            L6f:
                com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo r2 = new com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo
                r2.<init>(r4, r0, r1)
                if (r6 != 0) goto L79
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r5)
            L79:
                java.lang.String r4 = r2.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r2, r4)
                return r2
            L81:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r6.append(r1)
                r6.append(r0)
                java.lang.String r0 = "\""
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r4.<init>(r5, r6)
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.NonTeamMemberLogInfo.C3813a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(NonTeamMemberLogInfo nonTeamMemberLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("non_team_member", jsonGenerator);
            if (nonTeamMemberLogInfo.accountId != null) {
                jsonGenerator.writeFieldName("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) nonTeamMemberLogInfo.accountId, jsonGenerator);
            }
            if (nonTeamMemberLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) nonTeamMemberLogInfo.displayName, jsonGenerator);
            }
            if (nonTeamMemberLogInfo.email != null) {
                jsonGenerator.writeFieldName("email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) nonTeamMemberLogInfo.email, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public NonTeamMemberLogInfo(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        NonTeamMemberLogInfo nonTeamMemberLogInfo = (NonTeamMemberLogInfo) obj;
        String str3 = this.accountId;
        String str4 = nonTeamMemberLogInfo.accountId;
        if ((str3 == str4 || (str3 != null && str3.equals(str4))) && ((str = this.displayName) == (str2 = nonTeamMemberLogInfo.displayName) || (str != null && str.equals(str2)))) {
            String str5 = this.email;
            String str6 = nonTeamMemberLogInfo.email;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String getAccountId() {
        return this.accountId;
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String getEmail() {
        return this.email;
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String toString() {
        return C3813a.f20086b.serialize((C3813a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String toStringMultiline() {
        return C3813a.f20086b.serialize((C3813a) this, true);
    }

    public NonTeamMemberLogInfo() {
        this(null, null, null);
    }
}
