package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.NonTeamMemberLogInfo;
import com.dropbox.core.p006v2.teamlog.TeamMemberLogInfo;
import com.dropbox.core.p006v2.teamlog.TrustedNonTeamMemberLogInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class UserLogInfo {
    protected final String accountId;
    protected final String displayName;
    protected final String email;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String accountId = null;
        protected String displayName = null;
        protected String email = null;

        public UserLogInfo build() {
            return new UserLogInfo(this.accountId, this.displayName, this.email);
        }

        public Builder withAccountId(String str) {
            if (str != null) {
                if (str.length() < 40) {
                    throw new IllegalArgumentException("String 'accountId' is shorter than 40");
                }
                if (str.length() > 40) {
                    throw new IllegalArgumentException("String 'accountId' is longer than 40");
                }
            }
            this.accountId = str;
            return this;
        }

        public Builder withDisplayName(String str) {
            this.displayName = str;
            return this;
        }

        public Builder withEmail(String str) {
            if (str != null && str.length() > 255) {
                throw new IllegalArgumentException("String 'email' is longer than 255");
            }
            this.email = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.UserLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4392a extends StructSerializer<UserLogInfo> {

        /* renamed from: b */
        public static final C4392a f20680b = new C4392a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.teamlog.UserLogInfo deserialize(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
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
                java.lang.String r3 = "account_id"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L3d
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullable(r0)
                java.lang.Object r0 = r0.deserialize(r5)
                java.lang.String r0 = (java.lang.String) r0
                goto L17
            L3d:
                java.lang.String r3 = "display_name"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L54
                com.dropbox.core.stone.StoneSerializer r4 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r4 = com.dropbox.core.stone.StoneSerializers.nullable(r4)
                java.lang.Object r4 = r4.deserialize(r5)
                java.lang.String r4 = (java.lang.String) r4
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
                com.dropbox.core.v2.teamlog.UserLogInfo r2 = new com.dropbox.core.v2.teamlog.UserLogInfo
                r2.<init>(r0, r4, r1)
                goto Laf
            L75:
                boolean r4 = r4.equals(r1)
                r0 = 1
                if (r4 == 0) goto L83
                com.dropbox.core.v2.teamlog.UserLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.UserLogInfo.C4392a.f20680b
                com.dropbox.core.v2.teamlog.UserLogInfo r2 = r4.deserialize(r5, r0)
                goto Laf
            L83:
                java.lang.String r4 = "team_member"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto L92
                com.dropbox.core.v2.teamlog.TeamMemberLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.TeamMemberLogInfo.C4286a.f20562b
                com.dropbox.core.v2.teamlog.TeamMemberLogInfo r2 = r4.deserialize(r5, r0)
                goto Laf
            L92:
                java.lang.String r4 = "trusted_non_team_member"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto La1
                com.dropbox.core.v2.teamlog.TrustedNonTeamMemberLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.TrustedNonTeamMemberLogInfo.C4380a.f20668b
                com.dropbox.core.v2.teamlog.TrustedNonTeamMemberLogInfo r2 = r4.deserialize(r5, r0)
                goto Laf
            La1:
                java.lang.String r4 = "non_team_member"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto Lbc
                com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo$a r4 = com.dropbox.core.p006v2.teamlog.NonTeamMemberLogInfo.C3813a.f20086b
                com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo r2 = r4.deserialize(r5, r0)
            Laf:
                if (r6 != 0) goto Lb4
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r5)
            Lb4:
                java.lang.String r4 = r2.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r2, r4)
                return r2
            Lbc:
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
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.teamlog.UserLogInfo.C4392a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.teamlog.UserLogInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserLogInfo userLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (userLogInfo instanceof TeamMemberLogInfo) {
                TeamMemberLogInfo.C4286a.f20562b.serialize((TeamMemberLogInfo) userLogInfo, jsonGenerator, z);
                return;
            }
            if (userLogInfo instanceof TrustedNonTeamMemberLogInfo) {
                TrustedNonTeamMemberLogInfo.C4380a.f20668b.serialize((TrustedNonTeamMemberLogInfo) userLogInfo, jsonGenerator, z);
                return;
            }
            if (userLogInfo instanceof NonTeamMemberLogInfo) {
                NonTeamMemberLogInfo.C3813a.f20086b.serialize((NonTeamMemberLogInfo) userLogInfo, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (userLogInfo.accountId != null) {
                jsonGenerator.writeFieldName("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userLogInfo.accountId, jsonGenerator);
            }
            if (userLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userLogInfo.displayName, jsonGenerator);
            }
            if (userLogInfo.email != null) {
                jsonGenerator.writeFieldName("email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userLogInfo.email, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserLogInfo(String str, String str2, String str3) {
        if (str != null) {
            if (str.length() >= 40) {
                if (str.length() > 40) {
                    throw new IllegalArgumentException("String 'accountId' is longer than 40");
                }
            } else {
                throw new IllegalArgumentException("String 'accountId' is shorter than 40");
            }
        }
        this.accountId = str;
        this.displayName = str2;
        if (str3 != null && str3.length() > 255) {
            throw new IllegalArgumentException("String 'email' is longer than 255");
        }
        this.email = str3;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserLogInfo userLogInfo = (UserLogInfo) obj;
        String str3 = this.accountId;
        String str4 = userLogInfo.accountId;
        if ((str3 == str4 || (str3 != null && str3.equals(str4))) && ((str = this.displayName) == (str2 = userLogInfo.displayName) || (str != null && str.equals(str2)))) {
            String str5 = this.email;
            String str6 = userLogInfo.email;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getAccountId() {
        return this.accountId;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getEmail() {
        return this.email;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accountId, this.displayName, this.email});
    }

    public String toString() {
        return C4392a.f20680b.serialize((C4392a) this, false);
    }

    public String toStringMultiline() {
        return C4392a.f20680b.serialize((C4392a) this, true);
    }

    public UserLogInfo() {
        this(null, null, null);
    }
}
