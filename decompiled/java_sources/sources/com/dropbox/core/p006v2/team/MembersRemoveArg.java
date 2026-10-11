package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserSelectorArg;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class MembersRemoveArg extends C3322z {

    /* renamed from: c */
    public final UserSelectorArg f18378c;

    /* renamed from: d */
    public final UserSelectorArg f18379d;

    /* renamed from: e */
    public final boolean f18380e;

    /* renamed from: f */
    public final boolean f18381f;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean keepAccount;
        protected boolean retainTeamShares;
        protected UserSelectorArg transferAdminId;
        protected UserSelectorArg transferDestId;
        protected final UserSelectorArg user;
        protected boolean wipeData;

        public Builder(UserSelectorArg userSelectorArg) {
            if (userSelectorArg == null) {
                throw new IllegalArgumentException("Required value for 'user' is null");
            }
            this.user = userSelectorArg;
            this.wipeData = true;
            this.transferDestId = null;
            this.transferAdminId = null;
            this.keepAccount = false;
            this.retainTeamShares = false;
        }

        public MembersRemoveArg build() {
            return new MembersRemoveArg(this.user, this.wipeData, this.transferDestId, this.transferAdminId, this.keepAccount, this.retainTeamShares);
        }

        public Builder withKeepAccount(Boolean bool) {
            if (bool != null) {
                this.keepAccount = bool.booleanValue();
            } else {
                this.keepAccount = false;
            }
            return this;
        }

        public Builder withRetainTeamShares(Boolean bool) {
            if (bool != null) {
                this.retainTeamShares = bool.booleanValue();
            } else {
                this.retainTeamShares = false;
            }
            return this;
        }

        public Builder withTransferAdminId(UserSelectorArg userSelectorArg) {
            this.transferAdminId = userSelectorArg;
            return this;
        }

        public Builder withTransferDestId(UserSelectorArg userSelectorArg) {
            this.transferDestId = userSelectorArg;
            return this;
        }

        public Builder withWipeData(Boolean bool) {
            if (bool != null) {
                this.wipeData = bool.booleanValue();
            } else {
                this.wipeData = true;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersRemoveArg$a */
    /* loaded from: classes4.dex */
    public static class C3164a extends StructSerializer<MembersRemoveArg> {

        /* renamed from: b */
        public static final C3164a f18382b = new C3164a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersRemoveArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            UserSelectorArg userSelectorArg = null;
            UserSelectorArg userSelectorArg2 = null;
            UserSelectorArg userSelectorArg3 = null;
            Boolean bool3 = bool2;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("wipe_data".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("transfer_dest_id".equals(currentName)) {
                    userSelectorArg2 = (UserSelectorArg) StoneSerializers.nullable(UserSelectorArg.C3275b.f18582b).deserialize(jsonParser);
                } else if ("transfer_admin_id".equals(currentName)) {
                    userSelectorArg3 = (UserSelectorArg) StoneSerializers.nullable(UserSelectorArg.C3275b.f18582b).deserialize(jsonParser);
                } else if ("keep_account".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("retain_team_shares".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            MembersRemoveArg membersRemoveArg = new MembersRemoveArg(userSelectorArg, bool.booleanValue(), userSelectorArg2, userSelectorArg3, bool2.booleanValue(), bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(membersRemoveArg, membersRemoveArg.mo12555b());
            return membersRemoveArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersRemoveArg membersRemoveArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b c3275b = UserSelectorArg.C3275b.f18582b;
            c3275b.serialize(membersRemoveArg.f18585a, jsonGenerator);
            jsonGenerator.writeFieldName("wipe_data");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(membersRemoveArg.f18686b), jsonGenerator);
            if (membersRemoveArg.f18378c != null) {
                jsonGenerator.writeFieldName("transfer_dest_id");
                StoneSerializers.nullable(c3275b).serialize((StoneSerializer) membersRemoveArg.f18378c, jsonGenerator);
            }
            if (membersRemoveArg.f18379d != null) {
                jsonGenerator.writeFieldName("transfer_admin_id");
                StoneSerializers.nullable(c3275b).serialize((StoneSerializer) membersRemoveArg.f18379d, jsonGenerator);
            }
            jsonGenerator.writeFieldName("keep_account");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(membersRemoveArg.f18380e), jsonGenerator);
            jsonGenerator.writeFieldName("retain_team_shares");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(membersRemoveArg.f18381f), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MembersRemoveArg(UserSelectorArg userSelectorArg, boolean z, UserSelectorArg userSelectorArg2, UserSelectorArg userSelectorArg3, boolean z2, boolean z3) {
        super(userSelectorArg, z);
        this.f18378c = userSelectorArg2;
        this.f18379d = userSelectorArg3;
        this.f18380e = z2;
        this.f18381f = z3;
    }

    /* renamed from: h */
    public static Builder m12553h(UserSelectorArg userSelectorArg) {
        return new Builder(userSelectorArg);
    }

    @Override // com.dropbox.core.p006v2.team.C3322z, com.dropbox.core.p006v2.team.C3277a0
    /* renamed from: a */
    public UserSelectorArg mo12554a() {
        return this.f18585a;
    }

    @Override // com.dropbox.core.p006v2.team.C3322z, com.dropbox.core.p006v2.team.C3277a0
    /* renamed from: b */
    public String mo12555b() {
        return C3164a.f18382b.serialize((C3164a) this, true);
    }

    @Override // com.dropbox.core.p006v2.team.C3322z
    /* renamed from: c */
    public boolean mo12556c() {
        return this.f18686b;
    }

    /* renamed from: d */
    public boolean m12557d() {
        return this.f18380e;
    }

    /* renamed from: e */
    public boolean m12558e() {
        return this.f18381f;
    }

    @Override // com.dropbox.core.p006v2.team.C3322z, com.dropbox.core.p006v2.team.C3277a0
    public boolean equals(Object obj) {
        UserSelectorArg userSelectorArg;
        UserSelectorArg userSelectorArg2;
        UserSelectorArg userSelectorArg3;
        UserSelectorArg userSelectorArg4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MembersRemoveArg membersRemoveArg = (MembersRemoveArg) obj;
        UserSelectorArg userSelectorArg5 = this.f18585a;
        UserSelectorArg userSelectorArg6 = membersRemoveArg.f18585a;
        return (userSelectorArg5 == userSelectorArg6 || userSelectorArg5.equals(userSelectorArg6)) && this.f18686b == membersRemoveArg.f18686b && ((userSelectorArg = this.f18378c) == (userSelectorArg2 = membersRemoveArg.f18378c) || (userSelectorArg != null && userSelectorArg.equals(userSelectorArg2))) && (((userSelectorArg3 = this.f18379d) == (userSelectorArg4 = membersRemoveArg.f18379d) || (userSelectorArg3 != null && userSelectorArg3.equals(userSelectorArg4))) && this.f18380e == membersRemoveArg.f18380e && this.f18381f == membersRemoveArg.f18381f);
    }

    /* renamed from: f */
    public UserSelectorArg m12559f() {
        return this.f18379d;
    }

    /* renamed from: g */
    public UserSelectorArg m12560g() {
        return this.f18378c;
    }

    @Override // com.dropbox.core.p006v2.team.C3322z, com.dropbox.core.p006v2.team.C3277a0
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18378c, this.f18379d, Boolean.valueOf(this.f18380e), Boolean.valueOf(this.f18381f)});
    }

    @Override // com.dropbox.core.p006v2.team.C3322z, com.dropbox.core.p006v2.team.C3277a0
    public String toString() {
        return C3164a.f18382b.serialize((C3164a) this, false);
    }

    public MembersRemoveArg(UserSelectorArg userSelectorArg) {
        this(userSelectorArg, true, null, null, false, false);
    }
}
