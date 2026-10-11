package com.dropbox.core.p006v2.users;

import com.dropbox.core.p006v2.teampolicies.OfficeAddInPolicy;
import com.dropbox.core.p006v2.teampolicies.TeamSharingPolicies;
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
public class FullTeam extends Team {
    protected final OfficeAddInPolicy officeAddinPolicy;
    protected final TeamSharingPolicies sharingPolicies;

    /* renamed from: com.dropbox.core.v2.users.FullTeam$a */
    /* loaded from: classes4.dex */
    public static class C4436a extends StructSerializer<FullTeam> {

        /* renamed from: b */
        public static final C4436a f20734b = new C4436a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FullTeam deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            TeamSharingPolicies teamSharingPolicies = null;
            OfficeAddInPolicy officeAddInPolicy = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sharing_policies".equals(currentName)) {
                    teamSharingPolicies = TeamSharingPolicies.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("office_addin_policy".equals(currentName)) {
                    officeAddInPolicy = OfficeAddInPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (teamSharingPolicies == null) {
                throw new JsonParseException(jsonParser, "Required field \"sharing_policies\" missing.");
            }
            if (officeAddInPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"office_addin_policy\" missing.");
            }
            FullTeam fullTeam = new FullTeam(str2, str3, teamSharingPolicies, officeAddInPolicy);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fullTeam, fullTeam.toStringMultiline());
            return fullTeam;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FullTeam fullTeam, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) fullTeam.f20750id, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) fullTeam.name, jsonGenerator);
            jsonGenerator.writeFieldName("sharing_policies");
            TeamSharingPolicies.Serializer.INSTANCE.serialize((TeamSharingPolicies.Serializer) fullTeam.sharingPolicies, jsonGenerator);
            jsonGenerator.writeFieldName("office_addin_policy");
            OfficeAddInPolicy.Serializer.INSTANCE.serialize(fullTeam.officeAddinPolicy, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FullTeam(String str, String str2, TeamSharingPolicies teamSharingPolicies, OfficeAddInPolicy officeAddInPolicy) {
        super(str, str2);
        if (teamSharingPolicies == null) {
            throw new IllegalArgumentException("Required value for 'sharingPolicies' is null");
        }
        this.sharingPolicies = teamSharingPolicies;
        if (officeAddInPolicy == null) {
            throw new IllegalArgumentException("Required value for 'officeAddinPolicy' is null");
        }
        this.officeAddinPolicy = officeAddInPolicy;
    }

    @Override // com.dropbox.core.p006v2.users.Team
    public boolean equals(Object obj) {
        String str;
        String str2;
        TeamSharingPolicies teamSharingPolicies;
        TeamSharingPolicies teamSharingPolicies2;
        OfficeAddInPolicy officeAddInPolicy;
        OfficeAddInPolicy officeAddInPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FullTeam fullTeam = (FullTeam) obj;
        String str3 = this.f20750id;
        String str4 = fullTeam.f20750id;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.name) == (str2 = fullTeam.name) || str.equals(str2)) && (((teamSharingPolicies = this.sharingPolicies) == (teamSharingPolicies2 = fullTeam.sharingPolicies) || teamSharingPolicies.equals(teamSharingPolicies2)) && ((officeAddInPolicy = this.officeAddinPolicy) == (officeAddInPolicy2 = fullTeam.officeAddinPolicy) || officeAddInPolicy.equals(officeAddInPolicy2)));
    }

    @Override // com.dropbox.core.p006v2.users.Team
    public String getId() {
        return this.f20750id;
    }

    @Override // com.dropbox.core.p006v2.users.Team
    public String getName() {
        return this.name;
    }

    public OfficeAddInPolicy getOfficeAddinPolicy() {
        return this.officeAddinPolicy;
    }

    public TeamSharingPolicies getSharingPolicies() {
        return this.sharingPolicies;
    }

    @Override // com.dropbox.core.p006v2.users.Team
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.sharingPolicies, this.officeAddinPolicy});
    }

    @Override // com.dropbox.core.p006v2.users.Team
    public String toString() {
        return C4436a.f20734b.serialize((C4436a) this, false);
    }

    @Override // com.dropbox.core.p006v2.users.Team
    public String toStringMultiline() {
        return C4436a.f20734b.serialize((C4436a) this, true);
    }
}
