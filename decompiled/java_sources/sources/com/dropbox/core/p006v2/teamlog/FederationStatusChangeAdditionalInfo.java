package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ConnectedTeamName;
import com.dropbox.core.p006v2.teamlog.NonTrustedTeamDetails;
import com.dropbox.core.p006v2.teamlog.OrganizationName;
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
public final class FederationStatusChangeAdditionalInfo {
    public static final FederationStatusChangeAdditionalInfo OTHER = new FederationStatusChangeAdditionalInfo().m15148d(Tag.OTHER);

    /* renamed from: a */
    public Tag f19787a;

    /* renamed from: b */
    public ConnectedTeamName f19788b;

    /* renamed from: c */
    public NonTrustedTeamDetails f19789c;

    /* renamed from: d */
    public OrganizationName f19790d;

    /* loaded from: classes4.dex */
    public enum Tag {
        CONNECTED_TEAM_NAME,
        NON_TRUSTED_TEAM_DETAILS,
        ORGANIZATION_NAME,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FederationStatusChangeAdditionalInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3532a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19791a;

        static {
            int[] iArr = new int[Tag.values().length];
            f19791a = iArr;
            try {
                iArr[Tag.CONNECTED_TEAM_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19791a[Tag.NON_TRUSTED_TEAM_DETAILS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19791a[Tag.ORGANIZATION_NAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19791a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FederationStatusChangeAdditionalInfo$b */
    /* loaded from: classes4.dex */
    public static class C3533b extends UnionSerializer<FederationStatusChangeAdditionalInfo> {

        /* renamed from: b */
        public static final C3533b f19792b = new C3533b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FederationStatusChangeAdditionalInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FederationStatusChangeAdditionalInfo connectedTeamName = "connected_team_name".equals(readTag) ? FederationStatusChangeAdditionalInfo.connectedTeamName(ConnectedTeamName.C3397a.f18784b.deserialize(jsonParser, true)) : "non_trusted_team_details".equals(readTag) ? FederationStatusChangeAdditionalInfo.nonTrustedTeamDetails(NonTrustedTeamDetails.C3814a.f20087b.deserialize(jsonParser, true)) : "organization_name".equals(readTag) ? FederationStatusChangeAdditionalInfo.organizationName(OrganizationName.C3828a.f20101b.deserialize(jsonParser, true)) : FederationStatusChangeAdditionalInfo.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return connectedTeamName;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3532a.f19791a[federationStatusChangeAdditionalInfo.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("connected_team_name", jsonGenerator);
                ConnectedTeamName.C3397a.f18784b.serialize(federationStatusChangeAdditionalInfo.f19788b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("non_trusted_team_details", jsonGenerator);
                NonTrustedTeamDetails.C3814a.f20087b.serialize(federationStatusChangeAdditionalInfo.f19789c, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("organization_name", jsonGenerator);
            OrganizationName.C3828a.f20101b.serialize(federationStatusChangeAdditionalInfo.f19790d, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static FederationStatusChangeAdditionalInfo connectedTeamName(ConnectedTeamName connectedTeamName) {
        if (connectedTeamName != null) {
            return new FederationStatusChangeAdditionalInfo().m15149e(Tag.CONNECTED_TEAM_NAME, connectedTeamName);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FederationStatusChangeAdditionalInfo nonTrustedTeamDetails(NonTrustedTeamDetails nonTrustedTeamDetails) {
        if (nonTrustedTeamDetails != null) {
            return new FederationStatusChangeAdditionalInfo().m15150f(Tag.NON_TRUSTED_TEAM_DETAILS, nonTrustedTeamDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FederationStatusChangeAdditionalInfo organizationName(OrganizationName organizationName) {
        if (organizationName != null) {
            return new FederationStatusChangeAdditionalInfo().m15151g(Tag.ORGANIZATION_NAME, organizationName);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final FederationStatusChangeAdditionalInfo m15148d(Tag tag) {
        FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo = new FederationStatusChangeAdditionalInfo();
        federationStatusChangeAdditionalInfo.f19787a = tag;
        return federationStatusChangeAdditionalInfo;
    }

    /* renamed from: e */
    public final FederationStatusChangeAdditionalInfo m15149e(Tag tag, ConnectedTeamName connectedTeamName) {
        FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo = new FederationStatusChangeAdditionalInfo();
        federationStatusChangeAdditionalInfo.f19787a = tag;
        federationStatusChangeAdditionalInfo.f19788b = connectedTeamName;
        return federationStatusChangeAdditionalInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FederationStatusChangeAdditionalInfo)) {
            return false;
        }
        FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo = (FederationStatusChangeAdditionalInfo) obj;
        Tag tag = this.f19787a;
        if (tag != federationStatusChangeAdditionalInfo.f19787a) {
            return false;
        }
        int i = C3532a.f19791a[tag.ordinal()];
        if (i == 1) {
            ConnectedTeamName connectedTeamName = this.f19788b;
            ConnectedTeamName connectedTeamName2 = federationStatusChangeAdditionalInfo.f19788b;
            return connectedTeamName == connectedTeamName2 || connectedTeamName.equals(connectedTeamName2);
        }
        if (i == 2) {
            NonTrustedTeamDetails nonTrustedTeamDetails = this.f19789c;
            NonTrustedTeamDetails nonTrustedTeamDetails2 = federationStatusChangeAdditionalInfo.f19789c;
            return nonTrustedTeamDetails == nonTrustedTeamDetails2 || nonTrustedTeamDetails.equals(nonTrustedTeamDetails2);
        }
        if (i != 3) {
            return i == 4;
        }
        OrganizationName organizationName = this.f19790d;
        OrganizationName organizationName2 = federationStatusChangeAdditionalInfo.f19790d;
        return organizationName == organizationName2 || organizationName.equals(organizationName2);
    }

    /* renamed from: f */
    public final FederationStatusChangeAdditionalInfo m15150f(Tag tag, NonTrustedTeamDetails nonTrustedTeamDetails) {
        FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo = new FederationStatusChangeAdditionalInfo();
        federationStatusChangeAdditionalInfo.f19787a = tag;
        federationStatusChangeAdditionalInfo.f19789c = nonTrustedTeamDetails;
        return federationStatusChangeAdditionalInfo;
    }

    /* renamed from: g */
    public final FederationStatusChangeAdditionalInfo m15151g(Tag tag, OrganizationName organizationName) {
        FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo = new FederationStatusChangeAdditionalInfo();
        federationStatusChangeAdditionalInfo.f19787a = tag;
        federationStatusChangeAdditionalInfo.f19790d = organizationName;
        return federationStatusChangeAdditionalInfo;
    }

    public ConnectedTeamName getConnectedTeamNameValue() {
        if (this.f19787a == Tag.CONNECTED_TEAM_NAME) {
            return this.f19788b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CONNECTED_TEAM_NAME, but was Tag." + this.f19787a.name());
    }

    public NonTrustedTeamDetails getNonTrustedTeamDetailsValue() {
        if (this.f19787a == Tag.NON_TRUSTED_TEAM_DETAILS) {
            return this.f19789c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NON_TRUSTED_TEAM_DETAILS, but was Tag." + this.f19787a.name());
    }

    public OrganizationName getOrganizationNameValue() {
        if (this.f19787a == Tag.ORGANIZATION_NAME) {
            return this.f19790d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ORGANIZATION_NAME, but was Tag." + this.f19787a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19787a, this.f19788b, this.f19789c, this.f19790d});
    }

    public boolean isConnectedTeamName() {
        return this.f19787a == Tag.CONNECTED_TEAM_NAME;
    }

    public boolean isNonTrustedTeamDetails() {
        return this.f19787a == Tag.NON_TRUSTED_TEAM_DETAILS;
    }

    public boolean isOrganizationName() {
        return this.f19787a == Tag.ORGANIZATION_NAME;
    }

    public boolean isOther() {
        return this.f19787a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f19787a;
    }

    public String toString() {
        return C3533b.f19792b.serialize((C3533b) this, false);
    }

    public String toStringMultiline() {
        return C3533b.f19792b.serialize((C3533b) this, true);
    }
}
