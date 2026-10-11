package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamLogInfo;
import com.dropbox.core.p006v2.teamlog.TrustedNonTeamMemberType;
import com.dropbox.core.p006v2.teamlog.UserLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class TrustedNonTeamMemberLogInfo extends UserLogInfo {
    protected final TeamLogInfo team;
    protected final TrustedNonTeamMemberType trustedNonTeamMemberType;

    /* loaded from: classes4.dex */
    public static class Builder extends UserLogInfo.Builder {
        protected TeamLogInfo team;
        protected final TrustedNonTeamMemberType trustedNonTeamMemberType;

        public Builder(TrustedNonTeamMemberType trustedNonTeamMemberType) {
            if (trustedNonTeamMemberType == null) {
                throw new IllegalArgumentException("Required value for 'trustedNonTeamMemberType' is null");
            }
            this.trustedNonTeamMemberType = trustedNonTeamMemberType;
            this.team = null;
        }

        public Builder withTeam(TeamLogInfo teamLogInfo) {
            this.team = teamLogInfo;
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public TrustedNonTeamMemberLogInfo build() {
            return new TrustedNonTeamMemberLogInfo(this.trustedNonTeamMemberType, this.accountId, this.displayName, this.email, this.team);
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

    /* renamed from: com.dropbox.core.v2.teamlog.TrustedNonTeamMemberLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4380a extends StructSerializer<TrustedNonTeamMemberLogInfo> {

        /* renamed from: b */
        public static final C4380a f20668b = new C4380a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("trusted_non_team_member".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.TrustedNonTeamMemberLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r8, boolean r9) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r7 = this;
                r7 = 0
                if (r9 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r8)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r8)
                java.lang.String r1 = "trusted_non_team_member"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r7
            L13:
                if (r0 != 0) goto Lb9
                r2 = r7
                r3 = r2
                r4 = r3
                r5 = r4
                r6 = r5
            L1a:
                com.fasterxml.jackson.core.JsonToken r7 = r8.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r0 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r7 != r0) goto L9c
                java.lang.String r7 = r8.getCurrentName()
                r8.nextToken()
                java.lang.String r0 = "trusted_non_team_member_type"
                boolean r0 = r0.equals(r7)
                if (r0 == 0) goto L39
                com.dropbox.core.v2.teamlog.TrustedNonTeamMemberType$b r7 = com.dropbox.core.p006v2.teamlog.TrustedNonTeamMemberType.C4382b.f20670b
                com.dropbox.core.v2.teamlog.TrustedNonTeamMemberType r7 = r7.deserialize(r8)
                r2 = r7
                goto L1a
            L39:
                java.lang.String r0 = "account_id"
                boolean r0 = r0.equals(r7)
                if (r0 == 0) goto L51
                com.dropbox.core.stone.StoneSerializer r7 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r7 = com.dropbox.core.stone.StoneSerializers.nullable(r7)
                java.lang.Object r7 = r7.deserialize(r8)
                java.lang.String r7 = (java.lang.String) r7
                r3 = r7
                goto L1a
            L51:
                java.lang.String r0 = "display_name"
                boolean r0 = r0.equals(r7)
                if (r0 == 0) goto L69
                com.dropbox.core.stone.StoneSerializer r7 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r7 = com.dropbox.core.stone.StoneSerializers.nullable(r7)
                java.lang.Object r7 = r7.deserialize(r8)
                java.lang.String r7 = (java.lang.String) r7
                r4 = r7
                goto L1a
            L69:
                java.lang.String r0 = "email"
                boolean r0 = r0.equals(r7)
                if (r0 == 0) goto L81
                com.dropbox.core.stone.StoneSerializer r7 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r7 = com.dropbox.core.stone.StoneSerializers.nullable(r7)
                java.lang.Object r7 = r7.deserialize(r8)
                java.lang.String r7 = (java.lang.String) r7
                r5 = r7
                goto L1a
            L81:
                java.lang.String r0 = "team"
                boolean r7 = r0.equals(r7)
                if (r7 == 0) goto L97
                com.dropbox.core.v2.teamlog.TeamLogInfo$a r7 = com.dropbox.core.p006v2.teamlog.TeamLogInfo.C4285a.f20561b
                com.dropbox.core.stone.StructSerializer r7 = com.dropbox.core.stone.StoneSerializers.nullableStruct(r7)
                java.lang.Object r7 = r7.deserialize(r8)
                com.dropbox.core.v2.teamlog.TeamLogInfo r7 = (com.dropbox.core.p006v2.teamlog.TeamLogInfo) r7
                r6 = r7
                goto L1a
            L97:
                com.dropbox.core.stone.StoneSerializer.skipValue(r8)
                goto L1a
            L9c:
                if (r2 == 0) goto Lb1
                com.dropbox.core.v2.teamlog.TrustedNonTeamMemberLogInfo r7 = new com.dropbox.core.v2.teamlog.TrustedNonTeamMemberLogInfo
                r1 = r7
                r1.<init>(r2, r3, r4, r5, r6)
                if (r9 != 0) goto La9
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r8)
            La9:
                java.lang.String r8 = r7.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r7, r8)
                return r7
            Lb1:
                com.fasterxml.jackson.core.JsonParseException r7 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r9 = "Required field \"trusted_non_team_member_type\" missing."
                r7.<init>(r8, r9)
                throw r7
            Lb9:
                com.fasterxml.jackson.core.JsonParseException r7 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r9 = new java.lang.StringBuilder
                r9.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r9.append(r1)
                r9.append(r0)
                java.lang.String r0 = "\""
                r9.append(r0)
                java.lang.String r9 = r9.toString()
                r7.<init>(r8, r9)
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.TrustedNonTeamMemberLogInfo.C4380a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.TrustedNonTeamMemberLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TrustedNonTeamMemberLogInfo trustedNonTeamMemberLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("trusted_non_team_member", jsonGenerator);
            jsonGenerator.writeFieldName("trusted_non_team_member_type");
            TrustedNonTeamMemberType.C4382b.f20670b.serialize(trustedNonTeamMemberLogInfo.trustedNonTeamMemberType, jsonGenerator);
            if (trustedNonTeamMemberLogInfo.accountId != null) {
                jsonGenerator.writeFieldName("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) trustedNonTeamMemberLogInfo.accountId, jsonGenerator);
            }
            if (trustedNonTeamMemberLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) trustedNonTeamMemberLogInfo.displayName, jsonGenerator);
            }
            if (trustedNonTeamMemberLogInfo.email != null) {
                jsonGenerator.writeFieldName("email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) trustedNonTeamMemberLogInfo.email, jsonGenerator);
            }
            if (trustedNonTeamMemberLogInfo.team != null) {
                jsonGenerator.writeFieldName("team");
                StoneSerializers.nullableStruct(TeamLogInfo.C4285a.f20561b).serialize((StructSerializer) trustedNonTeamMemberLogInfo.team, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TrustedNonTeamMemberLogInfo(TrustedNonTeamMemberType trustedNonTeamMemberType, String str, String str2, String str3, TeamLogInfo teamLogInfo) {
        super(str, str2, str3);
        if (trustedNonTeamMemberType != null) {
            this.trustedNonTeamMemberType = trustedNonTeamMemberType;
            this.team = teamLogInfo;
            return;
        }
        throw new IllegalArgumentException("Required value for 'trustedNonTeamMemberType' is null");
    }

    public static Builder newBuilder(TrustedNonTeamMemberType trustedNonTeamMemberType) {
        return new Builder(trustedNonTeamMemberType);
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TrustedNonTeamMemberLogInfo trustedNonTeamMemberLogInfo = (TrustedNonTeamMemberLogInfo) obj;
        TrustedNonTeamMemberType trustedNonTeamMemberType = this.trustedNonTeamMemberType;
        TrustedNonTeamMemberType trustedNonTeamMemberType2 = trustedNonTeamMemberLogInfo.trustedNonTeamMemberType;
        if ((trustedNonTeamMemberType == trustedNonTeamMemberType2 || trustedNonTeamMemberType.equals(trustedNonTeamMemberType2)) && (((str = this.accountId) == (str2 = trustedNonTeamMemberLogInfo.accountId) || (str != null && str.equals(str2))) && (((str3 = this.displayName) == (str4 = trustedNonTeamMemberLogInfo.displayName) || (str3 != null && str3.equals(str4))) && ((str5 = this.email) == (str6 = trustedNonTeamMemberLogInfo.email) || (str5 != null && str5.equals(str6)))))) {
            TeamLogInfo teamLogInfo = this.team;
            TeamLogInfo teamLogInfo2 = trustedNonTeamMemberLogInfo.team;
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

    public TeamLogInfo getTeam() {
        return this.team;
    }

    public TrustedNonTeamMemberType getTrustedNonTeamMemberType() {
        return this.trustedNonTeamMemberType;
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.trustedNonTeamMemberType, this.team});
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String toString() {
        return C4380a.f20668b.serialize((C4380a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.UserLogInfo
    public String toStringMultiline() {
        return C4380a.f20668b.serialize((C4380a) this, true);
    }

    public TrustedNonTeamMemberLogInfo(TrustedNonTeamMemberType trustedNonTeamMemberType) {
        this(trustedNonTeamMemberType, null, null, null, null);
    }
}
