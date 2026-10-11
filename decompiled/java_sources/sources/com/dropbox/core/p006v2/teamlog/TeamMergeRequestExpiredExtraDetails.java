package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PrimaryTeamRequestExpiredDetails;
import com.dropbox.core.p006v2.teamlog.SecondaryTeamRequestExpiredDetails;
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
public final class TeamMergeRequestExpiredExtraDetails {
    public static final TeamMergeRequestExpiredExtraDetails OTHER = new TeamMergeRequestExpiredExtraDetails().m16644c(Tag.OTHER);

    /* renamed from: a */
    public Tag f20592a;

    /* renamed from: b */
    public PrimaryTeamRequestExpiredDetails f20593b;

    /* renamed from: c */
    public SecondaryTeamRequestExpiredDetails f20594c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PRIMARY_TEAM,
        SECONDARY_TEAM,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestExpiredExtraDetails$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4310a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20595a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20595a = iArr;
            try {
                iArr[Tag.PRIMARY_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20595a[Tag.SECONDARY_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20595a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestExpiredExtraDetails$b */
    /* loaded from: classes4.dex */
    public static class C4311b extends UnionSerializer<TeamMergeRequestExpiredExtraDetails> {

        /* renamed from: b */
        public static final C4311b f20596b = new C4311b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestExpiredExtraDetails deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamMergeRequestExpiredExtraDetails primaryTeam = "primary_team".equals(readTag) ? TeamMergeRequestExpiredExtraDetails.primaryTeam(PrimaryTeamRequestExpiredDetails.C3967a.f20243b.deserialize(jsonParser, true)) : "secondary_team".equals(readTag) ? TeamMergeRequestExpiredExtraDetails.secondaryTeam(SecondaryTeamRequestExpiredDetails.C3995a.f20271b.deserialize(jsonParser, true)) : TeamMergeRequestExpiredExtraDetails.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return primaryTeam;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4310a.f20595a[teamMergeRequestExpiredExtraDetails.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("primary_team", jsonGenerator);
                PrimaryTeamRequestExpiredDetails.C3967a.f20243b.serialize(teamMergeRequestExpiredExtraDetails.f20593b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("secondary_team", jsonGenerator);
            SecondaryTeamRequestExpiredDetails.C3995a.f20271b.serialize(teamMergeRequestExpiredExtraDetails.f20594c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamMergeRequestExpiredExtraDetails primaryTeam(PrimaryTeamRequestExpiredDetails primaryTeamRequestExpiredDetails) {
        if (primaryTeamRequestExpiredDetails != null) {
            return new TeamMergeRequestExpiredExtraDetails().m16645d(Tag.PRIMARY_TEAM, primaryTeamRequestExpiredDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamMergeRequestExpiredExtraDetails secondaryTeam(SecondaryTeamRequestExpiredDetails secondaryTeamRequestExpiredDetails) {
        if (secondaryTeamRequestExpiredDetails != null) {
            return new TeamMergeRequestExpiredExtraDetails().m16646e(Tag.SECONDARY_TEAM, secondaryTeamRequestExpiredDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final TeamMergeRequestExpiredExtraDetails m16644c(Tag tag) {
        TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails = new TeamMergeRequestExpiredExtraDetails();
        teamMergeRequestExpiredExtraDetails.f20592a = tag;
        return teamMergeRequestExpiredExtraDetails;
    }

    /* renamed from: d */
    public final TeamMergeRequestExpiredExtraDetails m16645d(Tag tag, PrimaryTeamRequestExpiredDetails primaryTeamRequestExpiredDetails) {
        TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails = new TeamMergeRequestExpiredExtraDetails();
        teamMergeRequestExpiredExtraDetails.f20592a = tag;
        teamMergeRequestExpiredExtraDetails.f20593b = primaryTeamRequestExpiredDetails;
        return teamMergeRequestExpiredExtraDetails;
    }

    /* renamed from: e */
    public final TeamMergeRequestExpiredExtraDetails m16646e(Tag tag, SecondaryTeamRequestExpiredDetails secondaryTeamRequestExpiredDetails) {
        TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails = new TeamMergeRequestExpiredExtraDetails();
        teamMergeRequestExpiredExtraDetails.f20592a = tag;
        teamMergeRequestExpiredExtraDetails.f20594c = secondaryTeamRequestExpiredDetails;
        return teamMergeRequestExpiredExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamMergeRequestExpiredExtraDetails)) {
            return false;
        }
        TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails = (TeamMergeRequestExpiredExtraDetails) obj;
        Tag tag = this.f20592a;
        if (tag != teamMergeRequestExpiredExtraDetails.f20592a) {
            return false;
        }
        int i = C4310a.f20595a[tag.ordinal()];
        if (i == 1) {
            PrimaryTeamRequestExpiredDetails primaryTeamRequestExpiredDetails = this.f20593b;
            PrimaryTeamRequestExpiredDetails primaryTeamRequestExpiredDetails2 = teamMergeRequestExpiredExtraDetails.f20593b;
            return primaryTeamRequestExpiredDetails == primaryTeamRequestExpiredDetails2 || primaryTeamRequestExpiredDetails.equals(primaryTeamRequestExpiredDetails2);
        }
        if (i != 2) {
            return i == 3;
        }
        SecondaryTeamRequestExpiredDetails secondaryTeamRequestExpiredDetails = this.f20594c;
        SecondaryTeamRequestExpiredDetails secondaryTeamRequestExpiredDetails2 = teamMergeRequestExpiredExtraDetails.f20594c;
        return secondaryTeamRequestExpiredDetails == secondaryTeamRequestExpiredDetails2 || secondaryTeamRequestExpiredDetails.equals(secondaryTeamRequestExpiredDetails2);
    }

    public PrimaryTeamRequestExpiredDetails getPrimaryTeamValue() {
        if (this.f20592a == Tag.PRIMARY_TEAM) {
            return this.f20593b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PRIMARY_TEAM, but was Tag." + this.f20592a.name());
    }

    public SecondaryTeamRequestExpiredDetails getSecondaryTeamValue() {
        if (this.f20592a == Tag.SECONDARY_TEAM) {
            return this.f20594c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SECONDARY_TEAM, but was Tag." + this.f20592a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20592a, this.f20593b, this.f20594c});
    }

    public boolean isOther() {
        return this.f20592a == Tag.OTHER;
    }

    public boolean isPrimaryTeam() {
        return this.f20592a == Tag.PRIMARY_TEAM;
    }

    public boolean isSecondaryTeam() {
        return this.f20592a == Tag.SECONDARY_TEAM;
    }

    public Tag tag() {
        return this.f20592a;
    }

    public String toString() {
        return C4311b.f20596b.serialize((C4311b) this, false);
    }

    public String toStringMultiline() {
        return C4311b.f20596b.serialize((C4311b) this, true);
    }
}
