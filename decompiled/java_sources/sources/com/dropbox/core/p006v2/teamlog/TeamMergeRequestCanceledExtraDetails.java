package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PrimaryTeamRequestCanceledDetails;
import com.dropbox.core.p006v2.teamlog.SecondaryTeamRequestCanceledDetails;
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
public final class TeamMergeRequestCanceledExtraDetails {
    public static final TeamMergeRequestCanceledExtraDetails OTHER = new TeamMergeRequestCanceledExtraDetails().m16625c(Tag.OTHER);

    /* renamed from: a */
    public Tag f20581a;

    /* renamed from: b */
    public PrimaryTeamRequestCanceledDetails f20582b;

    /* renamed from: c */
    public SecondaryTeamRequestCanceledDetails f20583c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PRIMARY_TEAM,
        SECONDARY_TEAM,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestCanceledExtraDetails$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4302a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20584a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20584a = iArr;
            try {
                iArr[Tag.PRIMARY_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20584a[Tag.SECONDARY_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20584a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestCanceledExtraDetails$b */
    /* loaded from: classes4.dex */
    public static class C4303b extends UnionSerializer<TeamMergeRequestCanceledExtraDetails> {

        /* renamed from: b */
        public static final C4303b f20585b = new C4303b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestCanceledExtraDetails deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamMergeRequestCanceledExtraDetails primaryTeam = "primary_team".equals(readTag) ? TeamMergeRequestCanceledExtraDetails.primaryTeam(PrimaryTeamRequestCanceledDetails.C3966a.f20242b.deserialize(jsonParser, true)) : "secondary_team".equals(readTag) ? TeamMergeRequestCanceledExtraDetails.secondaryTeam(SecondaryTeamRequestCanceledDetails.C3994a.f20270b.deserialize(jsonParser, true)) : TeamMergeRequestCanceledExtraDetails.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return primaryTeam;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4302a.f20584a[teamMergeRequestCanceledExtraDetails.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("primary_team", jsonGenerator);
                PrimaryTeamRequestCanceledDetails.C3966a.f20242b.serialize(teamMergeRequestCanceledExtraDetails.f20582b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("secondary_team", jsonGenerator);
            SecondaryTeamRequestCanceledDetails.C3994a.f20270b.serialize(teamMergeRequestCanceledExtraDetails.f20583c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamMergeRequestCanceledExtraDetails primaryTeam(PrimaryTeamRequestCanceledDetails primaryTeamRequestCanceledDetails) {
        if (primaryTeamRequestCanceledDetails != null) {
            return new TeamMergeRequestCanceledExtraDetails().m16626d(Tag.PRIMARY_TEAM, primaryTeamRequestCanceledDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamMergeRequestCanceledExtraDetails secondaryTeam(SecondaryTeamRequestCanceledDetails secondaryTeamRequestCanceledDetails) {
        if (secondaryTeamRequestCanceledDetails != null) {
            return new TeamMergeRequestCanceledExtraDetails().m16627e(Tag.SECONDARY_TEAM, secondaryTeamRequestCanceledDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final TeamMergeRequestCanceledExtraDetails m16625c(Tag tag) {
        TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails = new TeamMergeRequestCanceledExtraDetails();
        teamMergeRequestCanceledExtraDetails.f20581a = tag;
        return teamMergeRequestCanceledExtraDetails;
    }

    /* renamed from: d */
    public final TeamMergeRequestCanceledExtraDetails m16626d(Tag tag, PrimaryTeamRequestCanceledDetails primaryTeamRequestCanceledDetails) {
        TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails = new TeamMergeRequestCanceledExtraDetails();
        teamMergeRequestCanceledExtraDetails.f20581a = tag;
        teamMergeRequestCanceledExtraDetails.f20582b = primaryTeamRequestCanceledDetails;
        return teamMergeRequestCanceledExtraDetails;
    }

    /* renamed from: e */
    public final TeamMergeRequestCanceledExtraDetails m16627e(Tag tag, SecondaryTeamRequestCanceledDetails secondaryTeamRequestCanceledDetails) {
        TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails = new TeamMergeRequestCanceledExtraDetails();
        teamMergeRequestCanceledExtraDetails.f20581a = tag;
        teamMergeRequestCanceledExtraDetails.f20583c = secondaryTeamRequestCanceledDetails;
        return teamMergeRequestCanceledExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamMergeRequestCanceledExtraDetails)) {
            return false;
        }
        TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails = (TeamMergeRequestCanceledExtraDetails) obj;
        Tag tag = this.f20581a;
        if (tag != teamMergeRequestCanceledExtraDetails.f20581a) {
            return false;
        }
        int i = C4302a.f20584a[tag.ordinal()];
        if (i == 1) {
            PrimaryTeamRequestCanceledDetails primaryTeamRequestCanceledDetails = this.f20582b;
            PrimaryTeamRequestCanceledDetails primaryTeamRequestCanceledDetails2 = teamMergeRequestCanceledExtraDetails.f20582b;
            return primaryTeamRequestCanceledDetails == primaryTeamRequestCanceledDetails2 || primaryTeamRequestCanceledDetails.equals(primaryTeamRequestCanceledDetails2);
        }
        if (i != 2) {
            return i == 3;
        }
        SecondaryTeamRequestCanceledDetails secondaryTeamRequestCanceledDetails = this.f20583c;
        SecondaryTeamRequestCanceledDetails secondaryTeamRequestCanceledDetails2 = teamMergeRequestCanceledExtraDetails.f20583c;
        return secondaryTeamRequestCanceledDetails == secondaryTeamRequestCanceledDetails2 || secondaryTeamRequestCanceledDetails.equals(secondaryTeamRequestCanceledDetails2);
    }

    public PrimaryTeamRequestCanceledDetails getPrimaryTeamValue() {
        if (this.f20581a == Tag.PRIMARY_TEAM) {
            return this.f20582b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PRIMARY_TEAM, but was Tag." + this.f20581a.name());
    }

    public SecondaryTeamRequestCanceledDetails getSecondaryTeamValue() {
        if (this.f20581a == Tag.SECONDARY_TEAM) {
            return this.f20583c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SECONDARY_TEAM, but was Tag." + this.f20581a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20581a, this.f20582b, this.f20583c});
    }

    public boolean isOther() {
        return this.f20581a == Tag.OTHER;
    }

    public boolean isPrimaryTeam() {
        return this.f20581a == Tag.PRIMARY_TEAM;
    }

    public boolean isSecondaryTeam() {
        return this.f20581a == Tag.SECONDARY_TEAM;
    }

    public Tag tag() {
        return this.f20581a;
    }

    public String toString() {
        return C4303b.f20585b.serialize((C4303b) this, false);
    }

    public String toStringMultiline() {
        return C4303b.f20585b.serialize((C4303b) this, true);
    }
}
