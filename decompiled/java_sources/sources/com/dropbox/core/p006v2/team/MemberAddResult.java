package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.TeamMemberInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class MemberAddResult {

    /* renamed from: a */
    public Tag f18329a;

    /* renamed from: b */
    public TeamMemberInfo f18330b;

    /* renamed from: c */
    public String f18331c;

    /* renamed from: d */
    public String f18332d;

    /* renamed from: e */
    public String f18333e;

    /* renamed from: f */
    public String f18334f;

    /* renamed from: g */
    public String f18335g;

    /* renamed from: h */
    public String f18336h;

    /* renamed from: i */
    public String f18337i;

    /* renamed from: j */
    public String f18338j;

    /* renamed from: k */
    public String f18339k;

    /* renamed from: l */
    public String f18340l;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        TEAM_LICENSE_LIMIT,
        FREE_TEAM_MEMBER_LIMIT_REACHED,
        USER_ALREADY_ON_TEAM,
        USER_ON_ANOTHER_TEAM,
        USER_ALREADY_PAIRED,
        USER_MIGRATION_FAILED,
        DUPLICATE_EXTERNAL_MEMBER_ID,
        DUPLICATE_MEMBER_PERSISTENT_ID,
        PERSISTENT_ID_DISABLED,
        USER_CREATION_FAILED
    }

    /* renamed from: com.dropbox.core.v2.team.MemberAddResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3140a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18341a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18341a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18341a[Tag.TEAM_LICENSE_LIMIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18341a[Tag.FREE_TEAM_MEMBER_LIMIT_REACHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18341a[Tag.USER_ALREADY_ON_TEAM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18341a[Tag.USER_ON_ANOTHER_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18341a[Tag.USER_ALREADY_PAIRED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18341a[Tag.USER_MIGRATION_FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18341a[Tag.DUPLICATE_EXTERNAL_MEMBER_ID.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18341a[Tag.DUPLICATE_MEMBER_PERSISTENT_ID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18341a[Tag.PERSISTENT_ID_DISABLED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f18341a[Tag.USER_CREATION_FAILED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MemberAddResult$b */
    /* loaded from: classes4.dex */
    public static class C3141b extends UnionSerializer<MemberAddResult> {

        /* renamed from: b */
        public static final C3141b f18342b = new C3141b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberAddResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MemberAddResult userCreationFailed;
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
            if (FirebaseAnalytics.Param.SUCCESS.equals(readTag)) {
                userCreationFailed = MemberAddResult.success(TeamMemberInfo.C3245a.f18533b.deserialize(jsonParser, true));
            } else if ("team_license_limit".equals(readTag)) {
                StoneSerializer.expectField("team_license_limit", jsonParser);
                userCreationFailed = MemberAddResult.teamLicenseLimit(StoneSerializers.string().deserialize(jsonParser));
            } else if ("free_team_member_limit_reached".equals(readTag)) {
                StoneSerializer.expectField("free_team_member_limit_reached", jsonParser);
                userCreationFailed = MemberAddResult.freeTeamMemberLimitReached(StoneSerializers.string().deserialize(jsonParser));
            } else if ("user_already_on_team".equals(readTag)) {
                StoneSerializer.expectField("user_already_on_team", jsonParser);
                userCreationFailed = MemberAddResult.userAlreadyOnTeam(StoneSerializers.string().deserialize(jsonParser));
            } else if ("user_on_another_team".equals(readTag)) {
                StoneSerializer.expectField("user_on_another_team", jsonParser);
                userCreationFailed = MemberAddResult.userOnAnotherTeam(StoneSerializers.string().deserialize(jsonParser));
            } else if ("user_already_paired".equals(readTag)) {
                StoneSerializer.expectField("user_already_paired", jsonParser);
                userCreationFailed = MemberAddResult.userAlreadyPaired(StoneSerializers.string().deserialize(jsonParser));
            } else if ("user_migration_failed".equals(readTag)) {
                StoneSerializer.expectField("user_migration_failed", jsonParser);
                userCreationFailed = MemberAddResult.userMigrationFailed(StoneSerializers.string().deserialize(jsonParser));
            } else if ("duplicate_external_member_id".equals(readTag)) {
                StoneSerializer.expectField("duplicate_external_member_id", jsonParser);
                userCreationFailed = MemberAddResult.duplicateExternalMemberId(StoneSerializers.string().deserialize(jsonParser));
            } else if ("duplicate_member_persistent_id".equals(readTag)) {
                StoneSerializer.expectField("duplicate_member_persistent_id", jsonParser);
                userCreationFailed = MemberAddResult.duplicateMemberPersistentId(StoneSerializers.string().deserialize(jsonParser));
            } else if ("persistent_id_disabled".equals(readTag)) {
                StoneSerializer.expectField("persistent_id_disabled", jsonParser);
                userCreationFailed = MemberAddResult.persistentIdDisabled(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"user_creation_failed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("user_creation_failed", jsonParser);
                userCreationFailed = MemberAddResult.userCreationFailed(StoneSerializers.string().deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userCreationFailed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberAddResult memberAddResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3140a.f18341a[memberAddResult.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                    TeamMemberInfo.C3245a.f18533b.serialize(memberAddResult.f18330b, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("team_license_limit", jsonGenerator);
                    jsonGenerator.writeFieldName("team_license_limit");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18331c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("free_team_member_limit_reached", jsonGenerator);
                    jsonGenerator.writeFieldName("free_team_member_limit_reached");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18332d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("user_already_on_team", jsonGenerator);
                    jsonGenerator.writeFieldName("user_already_on_team");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18333e, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeStartObject();
                    writeTag("user_on_another_team", jsonGenerator);
                    jsonGenerator.writeFieldName("user_on_another_team");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18334f, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("user_already_paired", jsonGenerator);
                    jsonGenerator.writeFieldName("user_already_paired");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18335g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("user_migration_failed", jsonGenerator);
                    jsonGenerator.writeFieldName("user_migration_failed");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18336h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeStartObject();
                    writeTag("duplicate_external_member_id", jsonGenerator);
                    jsonGenerator.writeFieldName("duplicate_external_member_id");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18337i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 9:
                    jsonGenerator.writeStartObject();
                    writeTag("duplicate_member_persistent_id", jsonGenerator);
                    jsonGenerator.writeFieldName("duplicate_member_persistent_id");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18338j, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 10:
                    jsonGenerator.writeStartObject();
                    writeTag("persistent_id_disabled", jsonGenerator);
                    jsonGenerator.writeFieldName("persistent_id_disabled");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18339k, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 11:
                    jsonGenerator.writeStartObject();
                    writeTag("user_creation_failed", jsonGenerator);
                    jsonGenerator.writeFieldName("user_creation_failed");
                    StoneSerializers.string().serialize((StoneSerializer<String>) memberAddResult.f18340l, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + memberAddResult.tag());
            }
        }
    }

    public static MemberAddResult duplicateExternalMemberId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12493m(Tag.DUPLICATE_EXTERNAL_MEMBER_ID, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult duplicateMemberPersistentId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12494n(Tag.DUPLICATE_MEMBER_PERSISTENT_ID, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult freeTeamMemberLimitReached(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12495o(Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult persistentIdDisabled(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12496p(Tag.PERSISTENT_ID_DISABLED, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult success(TeamMemberInfo teamMemberInfo) {
        if (teamMemberInfo != null) {
            return new MemberAddResult().m12497q(Tag.SUCCESS, teamMemberInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static MemberAddResult teamLicenseLimit(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12498r(Tag.TEAM_LICENSE_LIMIT, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult userAlreadyOnTeam(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12499s(Tag.USER_ALREADY_ON_TEAM, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult userAlreadyPaired(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12500t(Tag.USER_ALREADY_PAIRED, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult userCreationFailed(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12501u(Tag.USER_CREATION_FAILED, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult userMigrationFailed(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12502v(Tag.USER_MIGRATION_FAILED, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static MemberAddResult userOnAnotherTeam(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberAddResult().m12503w(Tag.USER_ON_ANOTHER_TEAM, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MemberAddResult)) {
            return false;
        }
        MemberAddResult memberAddResult = (MemberAddResult) obj;
        Tag tag = this.f18329a;
        if (tag != memberAddResult.f18329a) {
            return false;
        }
        switch (C3140a.f18341a[tag.ordinal()]) {
            case 1:
                TeamMemberInfo teamMemberInfo = this.f18330b;
                TeamMemberInfo teamMemberInfo2 = memberAddResult.f18330b;
                return teamMemberInfo == teamMemberInfo2 || teamMemberInfo.equals(teamMemberInfo2);
            case 2:
                String str = this.f18331c;
                String str2 = memberAddResult.f18331c;
                return str == str2 || str.equals(str2);
            case 3:
                String str3 = this.f18332d;
                String str4 = memberAddResult.f18332d;
                return str3 == str4 || str3.equals(str4);
            case 4:
                String str5 = this.f18333e;
                String str6 = memberAddResult.f18333e;
                return str5 == str6 || str5.equals(str6);
            case 5:
                String str7 = this.f18334f;
                String str8 = memberAddResult.f18334f;
                return str7 == str8 || str7.equals(str8);
            case 6:
                String str9 = this.f18335g;
                String str10 = memberAddResult.f18335g;
                return str9 == str10 || str9.equals(str10);
            case 7:
                String str11 = this.f18336h;
                String str12 = memberAddResult.f18336h;
                return str11 == str12 || str11.equals(str12);
            case 8:
                String str13 = this.f18337i;
                String str14 = memberAddResult.f18337i;
                return str13 == str14 || str13.equals(str14);
            case 9:
                String str15 = this.f18338j;
                String str16 = memberAddResult.f18338j;
                return str15 == str16 || str15.equals(str16);
            case 10:
                String str17 = this.f18339k;
                String str18 = memberAddResult.f18339k;
                return str17 == str18 || str17.equals(str18);
            case 11:
                String str19 = this.f18340l;
                String str20 = memberAddResult.f18340l;
                return str19 == str20 || str19.equals(str20);
            default:
                return false;
        }
    }

    public String getDuplicateExternalMemberIdValue() {
        if (this.f18329a == Tag.DUPLICATE_EXTERNAL_MEMBER_ID) {
            return this.f18337i;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DUPLICATE_EXTERNAL_MEMBER_ID, but was Tag." + this.f18329a.name());
    }

    public String getDuplicateMemberPersistentIdValue() {
        if (this.f18329a == Tag.DUPLICATE_MEMBER_PERSISTENT_ID) {
            return this.f18338j;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DUPLICATE_MEMBER_PERSISTENT_ID, but was Tag." + this.f18329a.name());
    }

    public String getFreeTeamMemberLimitReachedValue() {
        if (this.f18329a == Tag.FREE_TEAM_MEMBER_LIMIT_REACHED) {
            return this.f18332d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, but was Tag." + this.f18329a.name());
    }

    public String getPersistentIdDisabledValue() {
        if (this.f18329a == Tag.PERSISTENT_ID_DISABLED) {
            return this.f18339k;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PERSISTENT_ID_DISABLED, but was Tag." + this.f18329a.name());
    }

    public TeamMemberInfo getSuccessValue() {
        if (this.f18329a == Tag.SUCCESS) {
            return this.f18330b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18329a.name());
    }

    public String getTeamLicenseLimitValue() {
        if (this.f18329a == Tag.TEAM_LICENSE_LIMIT) {
            return this.f18331c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_LICENSE_LIMIT, but was Tag." + this.f18329a.name());
    }

    public String getUserAlreadyOnTeamValue() {
        if (this.f18329a == Tag.USER_ALREADY_ON_TEAM) {
            return this.f18333e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ALREADY_ON_TEAM, but was Tag." + this.f18329a.name());
    }

    public String getUserAlreadyPairedValue() {
        if (this.f18329a == Tag.USER_ALREADY_PAIRED) {
            return this.f18335g;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ALREADY_PAIRED, but was Tag." + this.f18329a.name());
    }

    public String getUserCreationFailedValue() {
        if (this.f18329a == Tag.USER_CREATION_FAILED) {
            return this.f18340l;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_CREATION_FAILED, but was Tag." + this.f18329a.name());
    }

    public String getUserMigrationFailedValue() {
        if (this.f18329a == Tag.USER_MIGRATION_FAILED) {
            return this.f18336h;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_MIGRATION_FAILED, but was Tag." + this.f18329a.name());
    }

    public String getUserOnAnotherTeamValue() {
        if (this.f18329a == Tag.USER_ON_ANOTHER_TEAM) {
            return this.f18334f;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ON_ANOTHER_TEAM, but was Tag." + this.f18329a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18329a, this.f18330b, this.f18331c, this.f18332d, this.f18333e, this.f18334f, this.f18335g, this.f18336h, this.f18337i, this.f18338j, this.f18339k, this.f18340l});
    }

    public boolean isDuplicateExternalMemberId() {
        return this.f18329a == Tag.DUPLICATE_EXTERNAL_MEMBER_ID;
    }

    public boolean isDuplicateMemberPersistentId() {
        return this.f18329a == Tag.DUPLICATE_MEMBER_PERSISTENT_ID;
    }

    public boolean isFreeTeamMemberLimitReached() {
        return this.f18329a == Tag.FREE_TEAM_MEMBER_LIMIT_REACHED;
    }

    public boolean isPersistentIdDisabled() {
        return this.f18329a == Tag.PERSISTENT_ID_DISABLED;
    }

    public boolean isSuccess() {
        return this.f18329a == Tag.SUCCESS;
    }

    public boolean isTeamLicenseLimit() {
        return this.f18329a == Tag.TEAM_LICENSE_LIMIT;
    }

    public boolean isUserAlreadyOnTeam() {
        return this.f18329a == Tag.USER_ALREADY_ON_TEAM;
    }

    public boolean isUserAlreadyPaired() {
        return this.f18329a == Tag.USER_ALREADY_PAIRED;
    }

    public boolean isUserCreationFailed() {
        return this.f18329a == Tag.USER_CREATION_FAILED;
    }

    public boolean isUserMigrationFailed() {
        return this.f18329a == Tag.USER_MIGRATION_FAILED;
    }

    public boolean isUserOnAnotherTeam() {
        return this.f18329a == Tag.USER_ON_ANOTHER_TEAM;
    }

    /* renamed from: l */
    public final MemberAddResult m12492l(Tag tag) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        return memberAddResult;
    }

    /* renamed from: m */
    public final MemberAddResult m12493m(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18337i = str;
        return memberAddResult;
    }

    /* renamed from: n */
    public final MemberAddResult m12494n(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18338j = str;
        return memberAddResult;
    }

    /* renamed from: o */
    public final MemberAddResult m12495o(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18332d = str;
        return memberAddResult;
    }

    /* renamed from: p */
    public final MemberAddResult m12496p(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18339k = str;
        return memberAddResult;
    }

    /* renamed from: q */
    public final MemberAddResult m12497q(Tag tag, TeamMemberInfo teamMemberInfo) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18330b = teamMemberInfo;
        return memberAddResult;
    }

    /* renamed from: r */
    public final MemberAddResult m12498r(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18331c = str;
        return memberAddResult;
    }

    /* renamed from: s */
    public final MemberAddResult m12499s(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18333e = str;
        return memberAddResult;
    }

    /* renamed from: t */
    public final MemberAddResult m12500t(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18335g = str;
        return memberAddResult;
    }

    public Tag tag() {
        return this.f18329a;
    }

    public String toString() {
        return C3141b.f18342b.serialize((C3141b) this, false);
    }

    public String toStringMultiline() {
        return C3141b.f18342b.serialize((C3141b) this, true);
    }

    /* renamed from: u */
    public final MemberAddResult m12501u(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18340l = str;
        return memberAddResult;
    }

    /* renamed from: v */
    public final MemberAddResult m12502v(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18336h = str;
        return memberAddResult;
    }

    /* renamed from: w */
    public final MemberAddResult m12503w(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult.f18329a = tag;
        memberAddResult.f18334f = str;
        return memberAddResult;
    }
}
