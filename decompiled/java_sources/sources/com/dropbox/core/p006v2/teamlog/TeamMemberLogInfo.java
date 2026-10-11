package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamLogInfo;
import com.dropbox.core.p006v2.teamlog.UserLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class TeamMemberLogInfo extends UserLogInfo {
    protected final String memberExternalId;
    protected final TeamLogInfo team;
    protected final String teamMemberId;

    /* loaded from: classes4.dex */
    public static class Builder extends UserLogInfo.Builder {
        protected String teamMemberId = null;
        protected String memberExternalId = null;
        protected TeamLogInfo team = null;

        public Builder withMemberExternalId(String str) {
            if (str != null && str.length() > 64) {
                throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
            }
            this.memberExternalId = str;
            return this;
        }

        public Builder withTeam(TeamLogInfo teamLogInfo) {
            this.team = teamLogInfo;
            return this;
        }

        public Builder withTeamMemberId(String str) {
            this.teamMemberId = str;
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public TeamMemberLogInfo build() {
            return new TeamMemberLogInfo(this.accountId, this.displayName, this.email, this.teamMemberId, this.memberExternalId, this.team);
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

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMemberLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4286a extends StructSerializer<TeamMemberLogInfo> {

        /* renamed from: b */
        public static final C4286a f20562b = new C4286a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("team_member".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.TeamMemberLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r9, boolean r10) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r8 = this;
                r8 = 0
                if (r10 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r9)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r9)
                java.lang.String r1 = "team_member"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r8
            L13:
                if (r0 != 0) goto Ld2
                r2 = r8
                r3 = r2
                r4 = r3
                r5 = r4
                r6 = r5
                r7 = r6
            L1b:
                com.fasterxml.jackson.core.JsonToken r8 = r9.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r0 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r8 != r0) goto Lbf
                java.lang.String r8 = r9.getCurrentName()
                r9.nextToken()
                java.lang.String r0 = "account_id"
                boolean r0 = r0.equals(r8)
                if (r0 == 0) goto L42
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.nullable(r8)
                java.lang.Object r8 = r8.deserialize(r9)
                java.lang.String r8 = (java.lang.String) r8
                r2 = r8
                goto L1b
            L42:
                java.lang.String r0 = "display_name"
                boolean r0 = r0.equals(r8)
                if (r0 == 0) goto L5a
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.nullable(r8)
                java.lang.Object r8 = r8.deserialize(r9)
                java.lang.String r8 = (java.lang.String) r8
                r3 = r8
                goto L1b
            L5a:
                java.lang.String r0 = "email"
                boolean r0 = r0.equals(r8)
                if (r0 == 0) goto L72
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.nullable(r8)
                java.lang.Object r8 = r8.deserialize(r9)
                java.lang.String r8 = (java.lang.String) r8
                r4 = r8
                goto L1b
            L72:
                java.lang.String r0 = "team_member_id"
                boolean r0 = r0.equals(r8)
                if (r0 == 0) goto L8a
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.nullable(r8)
                java.lang.Object r8 = r8.deserialize(r9)
                java.lang.String r8 = (java.lang.String) r8
                r5 = r8
                goto L1b
            L8a:
                java.lang.String r0 = "member_external_id"
                boolean r0 = r0.equals(r8)
                if (r0 == 0) goto La3
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r8 = com.dropbox.core.stone.StoneSerializers.nullable(r8)
                java.lang.Object r8 = r8.deserialize(r9)
                java.lang.String r8 = (java.lang.String) r8
                r6 = r8
                goto L1b
            La3:
                java.lang.String r0 = "team"
                boolean r8 = r0.equals(r8)
                if (r8 == 0) goto Lba
                com.dropbox.core.v2.teamlog.TeamLogInfo$a r8 = com.dropbox.core.p006v2.teamlog.TeamLogInfo.C4285a.f20561b
                com.dropbox.core.stone.StructSerializer r8 = com.dropbox.core.stone.StoneSerializers.nullableStruct(r8)
                java.lang.Object r8 = r8.deserialize(r9)
                com.dropbox.core.v2.teamlog.TeamLogInfo r8 = (com.dropbox.core.p006v2.teamlog.TeamLogInfo) r8
                r7 = r8
                goto L1b
            Lba:
                com.dropbox.core.stone.StoneSerializer.skipValue(r9)
                goto L1b
            Lbf:
                com.dropbox.core.v2.teamlog.TeamMemberLogInfo r8 = new com.dropbox.core.v2.teamlog.TeamMemberLogInfo
                r1 = r8
                r1.<init>(r2, r3, r4, r5, r6, r7)
                if (r10 != 0) goto Lca
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r9)
            Lca:
                java.lang.String r9 = r8.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r8, r9)
                return r8
            Ld2:
                com.fasterxml.jackson.core.JsonParseException r8 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r10 = new java.lang.StringBuilder
                r10.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r10.append(r1)
                r10.append(r0)
                java.lang.String r0 = "\""
                r10.append(r0)
                java.lang.String r10 = r10.toString()
                r8.<init>(r9, r10)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.TeamMemberLogInfo.C4286a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.TeamMemberLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMemberLogInfo teamMemberLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("team_member", jsonGenerator);
            if (teamMemberLogInfo.accountId != null) {
                jsonGenerator.writeFieldName("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberLogInfo.accountId, jsonGenerator);
            }
            if (teamMemberLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberLogInfo.displayName, jsonGenerator);
            }
            if (teamMemberLogInfo.email != null) {
                jsonGenerator.writeFieldName("email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberLogInfo.email, jsonGenerator);
            }
            if (teamMemberLogInfo.teamMemberId != null) {
                jsonGenerator.writeFieldName("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberLogInfo.teamMemberId, jsonGenerator);
            }
            if (teamMemberLogInfo.memberExternalId != null) {
                jsonGenerator.writeFieldName("member_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberLogInfo.memberExternalId, jsonGenerator);
            }
            if (teamMemberLogInfo.team != null) {
                jsonGenerator.writeFieldName("team");
                StoneSerializers.nullableStruct(TeamLogInfo.C4285a.f20561b).serialize((StructSerializer) teamMemberLogInfo.team, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMemberLogInfo(String str, String str2, String str3, String str4, String str5, TeamLogInfo teamLogInfo) {
        super(str, str2, str3);
        this.teamMemberId = str4;
        if (str5 != null && str5.length() > 64) {
            throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
        }
        this.memberExternalId = str5;
        this.team = teamLogInfo;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMemberLogInfo teamMemberLogInfo = (TeamMemberLogInfo) obj;
        String str9 = this.accountId;
        String str10 = teamMemberLogInfo.accountId;
        if ((str9 == str10 || (str9 != null && str9.equals(str10))) && (((str = this.displayName) == (str2 = teamMemberLogInfo.displayName) || (str != null && str.equals(str2))) && (((str3 = this.email) == (str4 = teamMemberLogInfo.email) || (str3 != null && str3.equals(str4))) && (((str5 = this.teamMemberId) == (str6 = teamMemberLogInfo.teamMemberId) || (str5 != null && str5.equals(str6))) && ((str7 = this.memberExternalId) == (str8 = teamMemberLogInfo.memberExternalId) || (str7 != null && str7.equals(str8))))))) {
            TeamLogInfo teamLogInfo = this.team;
            TeamLogInfo teamLogInfo2 = teamMemberLogInfo.team;
            if (teamLogInfo == teamLogInfo2) {
                return true;
            }
            if (teamLogInfo != null && teamLogInfo.equals(teamLogInfo2)) {
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

    public String getMemberExternalId() {
        return this.memberExternalId;
    }

    public TeamLogInfo getTeam() {
        return this.team;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.teamMemberId, this.memberExternalId, this.team});
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String toString() {
        return C4286a.f20562b.serialize((C4286a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String toStringMultiline() {
        return C4286a.f20562b.serialize((C4286a) this, true);
    }

    public TeamMemberLogInfo() {
        this(null, null, null, null, null, null);
    }
}
