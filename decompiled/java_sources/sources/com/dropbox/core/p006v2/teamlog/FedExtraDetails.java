package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.OrganizationDetails;
import com.dropbox.core.p006v2.teamlog.TeamDetails;
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
public final class FedExtraDetails {
    public static final FedExtraDetails OTHER = new FedExtraDetails().m15138c(Tag.OTHER);

    /* renamed from: a */
    public Tag f19780a;

    /* renamed from: b */
    public TeamDetails f19781b;

    /* renamed from: c */
    public OrganizationDetails f19782c;

    /* loaded from: classes4.dex */
    public enum Tag {
        TEAM,
        ORGANIZATION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FedExtraDetails$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3528a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19783a;

        static {
            int[] iArr = new int[Tag.values().length];
            f19783a = iArr;
            try {
                iArr[Tag.TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19783a[Tag.ORGANIZATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19783a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FedExtraDetails$b */
    /* loaded from: classes4.dex */
    public static class C3529b extends UnionSerializer<FedExtraDetails> {

        /* renamed from: b */
        public static final C3529b f19784b = new C3529b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FedExtraDetails deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FedExtraDetails team = "team".equals(readTag) ? FedExtraDetails.team(TeamDetails.C4267a.f20543b.deserialize(jsonParser, true)) : "organization".equals(readTag) ? FedExtraDetails.organization(OrganizationDetails.C3827a.f20100b.deserialize(jsonParser, true)) : FedExtraDetails.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return team;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FedExtraDetails fedExtraDetails, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3528a.f19783a[fedExtraDetails.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("team", jsonGenerator);
                TeamDetails.C4267a.f20543b.serialize(fedExtraDetails.f19781b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("organization", jsonGenerator);
            OrganizationDetails.C3827a.f20100b.serialize(fedExtraDetails.f19782c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static FedExtraDetails organization(OrganizationDetails organizationDetails) {
        if (organizationDetails != null) {
            return new FedExtraDetails().m15139d(Tag.ORGANIZATION, organizationDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FedExtraDetails team(TeamDetails teamDetails) {
        if (teamDetails != null) {
            return new FedExtraDetails().m15140e(Tag.TEAM, teamDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final FedExtraDetails m15138c(Tag tag) {
        FedExtraDetails fedExtraDetails = new FedExtraDetails();
        fedExtraDetails.f19780a = tag;
        return fedExtraDetails;
    }

    /* renamed from: d */
    public final FedExtraDetails m15139d(Tag tag, OrganizationDetails organizationDetails) {
        FedExtraDetails fedExtraDetails = new FedExtraDetails();
        fedExtraDetails.f19780a = tag;
        fedExtraDetails.f19782c = organizationDetails;
        return fedExtraDetails;
    }

    /* renamed from: e */
    public final FedExtraDetails m15140e(Tag tag, TeamDetails teamDetails) {
        FedExtraDetails fedExtraDetails = new FedExtraDetails();
        fedExtraDetails.f19780a = tag;
        fedExtraDetails.f19781b = teamDetails;
        return fedExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FedExtraDetails)) {
            return false;
        }
        FedExtraDetails fedExtraDetails = (FedExtraDetails) obj;
        Tag tag = this.f19780a;
        if (tag != fedExtraDetails.f19780a) {
            return false;
        }
        int i = C3528a.f19783a[tag.ordinal()];
        if (i == 1) {
            TeamDetails teamDetails = this.f19781b;
            TeamDetails teamDetails2 = fedExtraDetails.f19781b;
            return teamDetails == teamDetails2 || teamDetails.equals(teamDetails2);
        }
        if (i != 2) {
            return i == 3;
        }
        OrganizationDetails organizationDetails = this.f19782c;
        OrganizationDetails organizationDetails2 = fedExtraDetails.f19782c;
        return organizationDetails == organizationDetails2 || organizationDetails.equals(organizationDetails2);
    }

    public OrganizationDetails getOrganizationValue() {
        if (this.f19780a == Tag.ORGANIZATION) {
            return this.f19782c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ORGANIZATION, but was Tag." + this.f19780a.name());
    }

    public TeamDetails getTeamValue() {
        if (this.f19780a == Tag.TEAM) {
            return this.f19781b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM, but was Tag." + this.f19780a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19780a, this.f19781b, this.f19782c});
    }

    public boolean isOrganization() {
        return this.f19780a == Tag.ORGANIZATION;
    }

    public boolean isOther() {
        return this.f19780a == Tag.OTHER;
    }

    public boolean isTeam() {
        return this.f19780a == Tag.TEAM;
    }

    public Tag tag() {
        return this.f19780a;
    }

    public String toString() {
        return C3529b.f19784b.serialize((C3529b) this, false);
    }

    public String toStringMultiline() {
        return C3529b.f19784b.serialize((C3529b) this, true);
    }
}
