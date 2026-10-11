package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PrimaryTeamRequestAcceptedDetails;
import com.dropbox.core.p006v2.teamlog.SecondaryTeamRequestAcceptedDetails;
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
public final class TeamMergeRequestAcceptedExtraDetails {
    public static final TeamMergeRequestAcceptedExtraDetails OTHER = new TeamMergeRequestAcceptedExtraDetails().m16602c(Tag.OTHER);

    /* renamed from: a */
    public Tag f20568a;

    /* renamed from: b */
    public PrimaryTeamRequestAcceptedDetails f20569b;

    /* renamed from: c */
    public SecondaryTeamRequestAcceptedDetails f20570c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PRIMARY_TEAM,
        SECONDARY_TEAM,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestAcceptedExtraDetails$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4292a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20571a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20571a = iArr;
            try {
                iArr[Tag.PRIMARY_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20571a[Tag.SECONDARY_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20571a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestAcceptedExtraDetails$b */
    /* loaded from: classes4.dex */
    public static class C4293b extends UnionSerializer<TeamMergeRequestAcceptedExtraDetails> {

        /* renamed from: b */
        public static final C4293b f20572b = new C4293b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestAcceptedExtraDetails deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamMergeRequestAcceptedExtraDetails primaryTeam = "primary_team".equals(readTag) ? TeamMergeRequestAcceptedExtraDetails.primaryTeam(PrimaryTeamRequestAcceptedDetails.C3965a.f20241b.deserialize(jsonParser, true)) : "secondary_team".equals(readTag) ? TeamMergeRequestAcceptedExtraDetails.secondaryTeam(SecondaryTeamRequestAcceptedDetails.C3993a.f20269b.deserialize(jsonParser, true)) : TeamMergeRequestAcceptedExtraDetails.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return primaryTeam;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4292a.f20571a[teamMergeRequestAcceptedExtraDetails.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("primary_team", jsonGenerator);
                PrimaryTeamRequestAcceptedDetails.C3965a.f20241b.serialize(teamMergeRequestAcceptedExtraDetails.f20569b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("secondary_team", jsonGenerator);
            SecondaryTeamRequestAcceptedDetails.C3993a.f20269b.serialize(teamMergeRequestAcceptedExtraDetails.f20570c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamMergeRequestAcceptedExtraDetails primaryTeam(PrimaryTeamRequestAcceptedDetails primaryTeamRequestAcceptedDetails) {
        if (primaryTeamRequestAcceptedDetails != null) {
            return new TeamMergeRequestAcceptedExtraDetails().m16603d(Tag.PRIMARY_TEAM, primaryTeamRequestAcceptedDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamMergeRequestAcceptedExtraDetails secondaryTeam(SecondaryTeamRequestAcceptedDetails secondaryTeamRequestAcceptedDetails) {
        if (secondaryTeamRequestAcceptedDetails != null) {
            return new TeamMergeRequestAcceptedExtraDetails().m16604e(Tag.SECONDARY_TEAM, secondaryTeamRequestAcceptedDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final TeamMergeRequestAcceptedExtraDetails m16602c(Tag tag) {
        TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails = new TeamMergeRequestAcceptedExtraDetails();
        teamMergeRequestAcceptedExtraDetails.f20568a = tag;
        return teamMergeRequestAcceptedExtraDetails;
    }

    /* renamed from: d */
    public final TeamMergeRequestAcceptedExtraDetails m16603d(Tag tag, PrimaryTeamRequestAcceptedDetails primaryTeamRequestAcceptedDetails) {
        TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails = new TeamMergeRequestAcceptedExtraDetails();
        teamMergeRequestAcceptedExtraDetails.f20568a = tag;
        teamMergeRequestAcceptedExtraDetails.f20569b = primaryTeamRequestAcceptedDetails;
        return teamMergeRequestAcceptedExtraDetails;
    }

    /* renamed from: e */
    public final TeamMergeRequestAcceptedExtraDetails m16604e(Tag tag, SecondaryTeamRequestAcceptedDetails secondaryTeamRequestAcceptedDetails) {
        TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails = new TeamMergeRequestAcceptedExtraDetails();
        teamMergeRequestAcceptedExtraDetails.f20568a = tag;
        teamMergeRequestAcceptedExtraDetails.f20570c = secondaryTeamRequestAcceptedDetails;
        return teamMergeRequestAcceptedExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamMergeRequestAcceptedExtraDetails)) {
            return false;
        }
        TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails = (TeamMergeRequestAcceptedExtraDetails) obj;
        Tag tag = this.f20568a;
        if (tag != teamMergeRequestAcceptedExtraDetails.f20568a) {
            return false;
        }
        int i = C4292a.f20571a[tag.ordinal()];
        if (i == 1) {
            PrimaryTeamRequestAcceptedDetails primaryTeamRequestAcceptedDetails = this.f20569b;
            PrimaryTeamRequestAcceptedDetails primaryTeamRequestAcceptedDetails2 = teamMergeRequestAcceptedExtraDetails.f20569b;
            return primaryTeamRequestAcceptedDetails == primaryTeamRequestAcceptedDetails2 || primaryTeamRequestAcceptedDetails.equals(primaryTeamRequestAcceptedDetails2);
        }
        if (i != 2) {
            return i == 3;
        }
        SecondaryTeamRequestAcceptedDetails secondaryTeamRequestAcceptedDetails = this.f20570c;
        SecondaryTeamRequestAcceptedDetails secondaryTeamRequestAcceptedDetails2 = teamMergeRequestAcceptedExtraDetails.f20570c;
        return secondaryTeamRequestAcceptedDetails == secondaryTeamRequestAcceptedDetails2 || secondaryTeamRequestAcceptedDetails.equals(secondaryTeamRequestAcceptedDetails2);
    }

    public PrimaryTeamRequestAcceptedDetails getPrimaryTeamValue() {
        if (this.f20568a == Tag.PRIMARY_TEAM) {
            return this.f20569b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PRIMARY_TEAM, but was Tag." + this.f20568a.name());
    }

    public SecondaryTeamRequestAcceptedDetails getSecondaryTeamValue() {
        if (this.f20568a == Tag.SECONDARY_TEAM) {
            return this.f20570c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SECONDARY_TEAM, but was Tag." + this.f20568a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20568a, this.f20569b, this.f20570c});
    }

    public boolean isOther() {
        return this.f20568a == Tag.OTHER;
    }

    public boolean isPrimaryTeam() {
        return this.f20568a == Tag.PRIMARY_TEAM;
    }

    public boolean isSecondaryTeam() {
        return this.f20568a == Tag.SECONDARY_TEAM;
    }

    public Tag tag() {
        return this.f20568a;
    }

    public String toString() {
        return C4293b.f20572b.serialize((C4293b) this, false);
    }

    public String toStringMultiline() {
        return C4293b.f20572b.serialize((C4293b) this, true);
    }
}
