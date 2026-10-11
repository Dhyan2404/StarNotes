package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PrimaryTeamRequestReminderDetails;
import com.dropbox.core.p006v2.teamlog.SecondaryTeamRequestReminderDetails;
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
public final class TeamMergeRequestReminderExtraDetails {
    public static final TeamMergeRequestReminderExtraDetails OTHER = new TeamMergeRequestReminderExtraDetails().m16671c(Tag.OTHER);

    /* renamed from: a */
    public Tag f20607a;

    /* renamed from: b */
    public PrimaryTeamRequestReminderDetails f20608b;

    /* renamed from: c */
    public SecondaryTeamRequestReminderDetails f20609c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PRIMARY_TEAM,
        SECONDARY_TEAM,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestReminderExtraDetails$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4322a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20610a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20610a = iArr;
            try {
                iArr[Tag.PRIMARY_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20610a[Tag.SECONDARY_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20610a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestReminderExtraDetails$b */
    /* loaded from: classes4.dex */
    public static class C4323b extends UnionSerializer<TeamMergeRequestReminderExtraDetails> {

        /* renamed from: b */
        public static final C4323b f20611b = new C4323b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestReminderExtraDetails deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamMergeRequestReminderExtraDetails primaryTeam = "primary_team".equals(readTag) ? TeamMergeRequestReminderExtraDetails.primaryTeam(PrimaryTeamRequestReminderDetails.C3968a.f20244b.deserialize(jsonParser, true)) : "secondary_team".equals(readTag) ? TeamMergeRequestReminderExtraDetails.secondaryTeam(SecondaryTeamRequestReminderDetails.C3996a.f20272b.deserialize(jsonParser, true)) : TeamMergeRequestReminderExtraDetails.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return primaryTeam;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4322a.f20610a[teamMergeRequestReminderExtraDetails.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("primary_team", jsonGenerator);
                PrimaryTeamRequestReminderDetails.C3968a.f20244b.serialize(teamMergeRequestReminderExtraDetails.f20608b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("secondary_team", jsonGenerator);
            SecondaryTeamRequestReminderDetails.C3996a.f20272b.serialize(teamMergeRequestReminderExtraDetails.f20609c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamMergeRequestReminderExtraDetails primaryTeam(PrimaryTeamRequestReminderDetails primaryTeamRequestReminderDetails) {
        if (primaryTeamRequestReminderDetails != null) {
            return new TeamMergeRequestReminderExtraDetails().m16672d(Tag.PRIMARY_TEAM, primaryTeamRequestReminderDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamMergeRequestReminderExtraDetails secondaryTeam(SecondaryTeamRequestReminderDetails secondaryTeamRequestReminderDetails) {
        if (secondaryTeamRequestReminderDetails != null) {
            return new TeamMergeRequestReminderExtraDetails().m16673e(Tag.SECONDARY_TEAM, secondaryTeamRequestReminderDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final TeamMergeRequestReminderExtraDetails m16671c(Tag tag) {
        TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails = new TeamMergeRequestReminderExtraDetails();
        teamMergeRequestReminderExtraDetails.f20607a = tag;
        return teamMergeRequestReminderExtraDetails;
    }

    /* renamed from: d */
    public final TeamMergeRequestReminderExtraDetails m16672d(Tag tag, PrimaryTeamRequestReminderDetails primaryTeamRequestReminderDetails) {
        TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails = new TeamMergeRequestReminderExtraDetails();
        teamMergeRequestReminderExtraDetails.f20607a = tag;
        teamMergeRequestReminderExtraDetails.f20608b = primaryTeamRequestReminderDetails;
        return teamMergeRequestReminderExtraDetails;
    }

    /* renamed from: e */
    public final TeamMergeRequestReminderExtraDetails m16673e(Tag tag, SecondaryTeamRequestReminderDetails secondaryTeamRequestReminderDetails) {
        TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails = new TeamMergeRequestReminderExtraDetails();
        teamMergeRequestReminderExtraDetails.f20607a = tag;
        teamMergeRequestReminderExtraDetails.f20609c = secondaryTeamRequestReminderDetails;
        return teamMergeRequestReminderExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamMergeRequestReminderExtraDetails)) {
            return false;
        }
        TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails = (TeamMergeRequestReminderExtraDetails) obj;
        Tag tag = this.f20607a;
        if (tag != teamMergeRequestReminderExtraDetails.f20607a) {
            return false;
        }
        int i = C4322a.f20610a[tag.ordinal()];
        if (i == 1) {
            PrimaryTeamRequestReminderDetails primaryTeamRequestReminderDetails = this.f20608b;
            PrimaryTeamRequestReminderDetails primaryTeamRequestReminderDetails2 = teamMergeRequestReminderExtraDetails.f20608b;
            return primaryTeamRequestReminderDetails == primaryTeamRequestReminderDetails2 || primaryTeamRequestReminderDetails.equals(primaryTeamRequestReminderDetails2);
        }
        if (i != 2) {
            return i == 3;
        }
        SecondaryTeamRequestReminderDetails secondaryTeamRequestReminderDetails = this.f20609c;
        SecondaryTeamRequestReminderDetails secondaryTeamRequestReminderDetails2 = teamMergeRequestReminderExtraDetails.f20609c;
        return secondaryTeamRequestReminderDetails == secondaryTeamRequestReminderDetails2 || secondaryTeamRequestReminderDetails.equals(secondaryTeamRequestReminderDetails2);
    }

    public PrimaryTeamRequestReminderDetails getPrimaryTeamValue() {
        if (this.f20607a == Tag.PRIMARY_TEAM) {
            return this.f20608b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PRIMARY_TEAM, but was Tag." + this.f20607a.name());
    }

    public SecondaryTeamRequestReminderDetails getSecondaryTeamValue() {
        if (this.f20607a == Tag.SECONDARY_TEAM) {
            return this.f20609c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SECONDARY_TEAM, but was Tag." + this.f20607a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20607a, this.f20608b, this.f20609c});
    }

    public boolean isOther() {
        return this.f20607a == Tag.OTHER;
    }

    public boolean isPrimaryTeam() {
        return this.f20607a == Tag.PRIMARY_TEAM;
    }

    public boolean isSecondaryTeam() {
        return this.f20607a == Tag.SECONDARY_TEAM;
    }

    public Tag tag() {
        return this.f20607a;
    }

    public String toString() {
        return C4323b.f20611b.serialize((C4323b) this, false);
    }

    public String toStringMultiline() {
        return C4323b.f20611b.serialize((C4323b) this, true);
    }
}
