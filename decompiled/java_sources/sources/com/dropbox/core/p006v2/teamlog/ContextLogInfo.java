package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.NonTeamMemberLogInfo;
import com.dropbox.core.p006v2.teamlog.TeamLogInfo;
import com.dropbox.core.p006v2.teamlog.TeamMemberLogInfo;
import com.dropbox.core.p006v2.teamlog.TrustedNonTeamMemberLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class ContextLogInfo {

    /* renamed from: a */
    public Tag f18789a;

    /* renamed from: b */
    public TeamMemberLogInfo f18790b;

    /* renamed from: c */
    public NonTeamMemberLogInfo f18791c;

    /* renamed from: d */
    public TeamLogInfo f18792d;

    /* renamed from: e */
    public TrustedNonTeamMemberLogInfo f18793e;
    public static final ContextLogInfo ANONYMOUS = new ContextLogInfo().m13183e(Tag.ANONYMOUS);
    public static final ContextLogInfo TEAM = new ContextLogInfo().m13183e(Tag.TEAM);
    public static final ContextLogInfo OTHER = new ContextLogInfo().m13183e(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        TEAM_MEMBER,
        NON_TEAM_MEMBER,
        ANONYMOUS,
        TEAM,
        ORGANIZATION_TEAM,
        TRUSTED_NON_TEAM_MEMBER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ContextLogInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3402a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18794a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18794a = iArr;
            try {
                iArr[Tag.TEAM_MEMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18794a[Tag.NON_TEAM_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18794a[Tag.ANONYMOUS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18794a[Tag.TEAM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18794a[Tag.ORGANIZATION_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18794a[Tag.TRUSTED_NON_TEAM_MEMBER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18794a[Tag.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ContextLogInfo$b */
    /* loaded from: classes4.dex */
    public static class C3403b extends UnionSerializer<ContextLogInfo> {

        /* renamed from: b */
        public static final C3403b f18795b = new C3403b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ContextLogInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
            ContextLogInfo teamMember = "team_member".equals(readTag) ? ContextLogInfo.teamMember(TeamMemberLogInfo.C4286a.f20562b.deserialize(jsonParser, true)) : "non_team_member".equals(readTag) ? ContextLogInfo.nonTeamMember(NonTeamMemberLogInfo.C3813a.f20086b.deserialize(jsonParser, true)) : "anonymous".equals(readTag) ? ContextLogInfo.ANONYMOUS : "team".equals(readTag) ? ContextLogInfo.TEAM : "organization_team".equals(readTag) ? ContextLogInfo.organizationTeam(TeamLogInfo.C4285a.f20561b.deserialize(jsonParser, true)) : "trusted_non_team_member".equals(readTag) ? ContextLogInfo.trustedNonTeamMember(TrustedNonTeamMemberLogInfo.C4380a.f20668b.deserialize(jsonParser, true)) : ContextLogInfo.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamMember;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ContextLogInfo contextLogInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3402a.f18794a[contextLogInfo.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("team_member", jsonGenerator);
                    TeamMemberLogInfo.C4286a.f20562b.serialize(contextLogInfo.f18790b, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("non_team_member", jsonGenerator);
                    NonTeamMemberLogInfo.C3813a.f20086b.serialize(contextLogInfo.f18791c, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("anonymous");
                    return;
                case 4:
                    jsonGenerator.writeString("team");
                    return;
                case 5:
                    jsonGenerator.writeStartObject();
                    writeTag("organization_team", jsonGenerator);
                    TeamLogInfo.C4285a.f20561b.serialize(contextLogInfo.f18792d, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("trusted_non_team_member", jsonGenerator);
                    TrustedNonTeamMemberLogInfo.C4380a.f20668b.serialize(contextLogInfo.f18793e, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static ContextLogInfo nonTeamMember(NonTeamMemberLogInfo nonTeamMemberLogInfo) {
        if (nonTeamMemberLogInfo != null) {
            return new ContextLogInfo().m13184f(Tag.NON_TEAM_MEMBER, nonTeamMemberLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ContextLogInfo organizationTeam(TeamLogInfo teamLogInfo) {
        if (teamLogInfo != null) {
            return new ContextLogInfo().m13185g(Tag.ORGANIZATION_TEAM, teamLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ContextLogInfo teamMember(TeamMemberLogInfo teamMemberLogInfo) {
        if (teamMemberLogInfo != null) {
            return new ContextLogInfo().m13186h(Tag.TEAM_MEMBER, teamMemberLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ContextLogInfo trustedNonTeamMember(TrustedNonTeamMemberLogInfo trustedNonTeamMemberLogInfo) {
        if (trustedNonTeamMemberLogInfo != null) {
            return new ContextLogInfo().m13187i(Tag.TRUSTED_NON_TEAM_MEMBER, trustedNonTeamMemberLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: e */
    public final ContextLogInfo m13183e(Tag tag) {
        ContextLogInfo contextLogInfo = new ContextLogInfo();
        contextLogInfo.f18789a = tag;
        return contextLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ContextLogInfo)) {
            return false;
        }
        ContextLogInfo contextLogInfo = (ContextLogInfo) obj;
        Tag tag = this.f18789a;
        if (tag != contextLogInfo.f18789a) {
            return false;
        }
        switch (C3402a.f18794a[tag.ordinal()]) {
            case 1:
                TeamMemberLogInfo teamMemberLogInfo = this.f18790b;
                TeamMemberLogInfo teamMemberLogInfo2 = contextLogInfo.f18790b;
                return teamMemberLogInfo == teamMemberLogInfo2 || teamMemberLogInfo.equals(teamMemberLogInfo2);
            case 2:
                NonTeamMemberLogInfo nonTeamMemberLogInfo = this.f18791c;
                NonTeamMemberLogInfo nonTeamMemberLogInfo2 = contextLogInfo.f18791c;
                return nonTeamMemberLogInfo == nonTeamMemberLogInfo2 || nonTeamMemberLogInfo.equals(nonTeamMemberLogInfo2);
            case 3:
            case 4:
                return true;
            case 5:
                TeamLogInfo teamLogInfo = this.f18792d;
                TeamLogInfo teamLogInfo2 = contextLogInfo.f18792d;
                return teamLogInfo == teamLogInfo2 || teamLogInfo.equals(teamLogInfo2);
            case 6:
                TrustedNonTeamMemberLogInfo trustedNonTeamMemberLogInfo = this.f18793e;
                TrustedNonTeamMemberLogInfo trustedNonTeamMemberLogInfo2 = contextLogInfo.f18793e;
                return trustedNonTeamMemberLogInfo == trustedNonTeamMemberLogInfo2 || trustedNonTeamMemberLogInfo.equals(trustedNonTeamMemberLogInfo2);
            case 7:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final ContextLogInfo m13184f(Tag tag, NonTeamMemberLogInfo nonTeamMemberLogInfo) {
        ContextLogInfo contextLogInfo = new ContextLogInfo();
        contextLogInfo.f18789a = tag;
        contextLogInfo.f18791c = nonTeamMemberLogInfo;
        return contextLogInfo;
    }

    /* renamed from: g */
    public final ContextLogInfo m13185g(Tag tag, TeamLogInfo teamLogInfo) {
        ContextLogInfo contextLogInfo = new ContextLogInfo();
        contextLogInfo.f18789a = tag;
        contextLogInfo.f18792d = teamLogInfo;
        return contextLogInfo;
    }

    public NonTeamMemberLogInfo getNonTeamMemberValue() {
        if (this.f18789a == Tag.NON_TEAM_MEMBER) {
            return this.f18791c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NON_TEAM_MEMBER, but was Tag." + this.f18789a.name());
    }

    public TeamLogInfo getOrganizationTeamValue() {
        if (this.f18789a == Tag.ORGANIZATION_TEAM) {
            return this.f18792d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ORGANIZATION_TEAM, but was Tag." + this.f18789a.name());
    }

    public TeamMemberLogInfo getTeamMemberValue() {
        if (this.f18789a == Tag.TEAM_MEMBER) {
            return this.f18790b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MEMBER, but was Tag." + this.f18789a.name());
    }

    public TrustedNonTeamMemberLogInfo getTrustedNonTeamMemberValue() {
        if (this.f18789a == Tag.TRUSTED_NON_TEAM_MEMBER) {
            return this.f18793e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TRUSTED_NON_TEAM_MEMBER, but was Tag." + this.f18789a.name());
    }

    /* renamed from: h */
    public final ContextLogInfo m13186h(Tag tag, TeamMemberLogInfo teamMemberLogInfo) {
        ContextLogInfo contextLogInfo = new ContextLogInfo();
        contextLogInfo.f18789a = tag;
        contextLogInfo.f18790b = teamMemberLogInfo;
        return contextLogInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18789a, this.f18790b, this.f18791c, this.f18792d, this.f18793e});
    }

    /* renamed from: i */
    public final ContextLogInfo m13187i(Tag tag, TrustedNonTeamMemberLogInfo trustedNonTeamMemberLogInfo) {
        ContextLogInfo contextLogInfo = new ContextLogInfo();
        contextLogInfo.f18789a = tag;
        contextLogInfo.f18793e = trustedNonTeamMemberLogInfo;
        return contextLogInfo;
    }

    public boolean isAnonymous() {
        return this.f18789a == Tag.ANONYMOUS;
    }

    public boolean isNonTeamMember() {
        return this.f18789a == Tag.NON_TEAM_MEMBER;
    }

    public boolean isOrganizationTeam() {
        return this.f18789a == Tag.ORGANIZATION_TEAM;
    }

    public boolean isOther() {
        return this.f18789a == Tag.OTHER;
    }

    public boolean isTeam() {
        return this.f18789a == Tag.TEAM;
    }

    public boolean isTeamMember() {
        return this.f18789a == Tag.TEAM_MEMBER;
    }

    public boolean isTrustedNonTeamMember() {
        return this.f18789a == Tag.TRUSTED_NON_TEAM_MEMBER;
    }

    public Tag tag() {
        return this.f18789a;
    }

    public String toString() {
        return C3403b.f18795b.serialize((C3403b) this, false);
    }

    public String toStringMultiline() {
        return C3403b.f18795b.serialize((C3403b) this, true);
    }
}
