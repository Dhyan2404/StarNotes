package com.dropbox.core.p006v2.teampolicies;

import com.dropbox.core.p006v2.teampolicies.SharedFolderJoinPolicy;
import com.dropbox.core.p006v2.teampolicies.SharedFolderMemberPolicy;
import com.dropbox.core.p006v2.teampolicies.SharedLinkCreatePolicy;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class TeamSharingPolicies {
    protected final SharedFolderJoinPolicy sharedFolderJoinPolicy;
    protected final SharedFolderMemberPolicy sharedFolderMemberPolicy;
    protected final SharedLinkCreatePolicy sharedLinkCreatePolicy;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<TeamSharingPolicies> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamSharingPolicies deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharedFolderMemberPolicy sharedFolderMemberPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                SharedFolderJoinPolicy sharedFolderJoinPolicy = null;
                SharedLinkCreatePolicy sharedLinkCreatePolicy = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("shared_folder_member_policy".equals(currentName)) {
                        sharedFolderMemberPolicy = SharedFolderMemberPolicy.C4425b.f20720b.deserialize(jsonParser);
                    } else if ("shared_folder_join_policy".equals(currentName)) {
                        sharedFolderJoinPolicy = SharedFolderJoinPolicy.C4423b.f20718b.deserialize(jsonParser);
                    } else if ("shared_link_create_policy".equals(currentName)) {
                        sharedLinkCreatePolicy = SharedLinkCreatePolicy.C4427b.f20722b.deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (sharedFolderMemberPolicy == null) {
                    throw new JsonParseException(jsonParser, "Required field \"shared_folder_member_policy\" missing.");
                }
                if (sharedFolderJoinPolicy == null) {
                    throw new JsonParseException(jsonParser, "Required field \"shared_folder_join_policy\" missing.");
                }
                if (sharedLinkCreatePolicy != null) {
                    TeamSharingPolicies teamSharingPolicies = new TeamSharingPolicies(sharedFolderMemberPolicy, sharedFolderJoinPolicy, sharedLinkCreatePolicy);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(teamSharingPolicies, teamSharingPolicies.toStringMultiline());
                    return teamSharingPolicies;
                }
                throw new JsonParseException(jsonParser, "Required field \"shared_link_create_policy\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamSharingPolicies teamSharingPolicies, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_member_policy");
            SharedFolderMemberPolicy.C4425b.f20720b.serialize(teamSharingPolicies.sharedFolderMemberPolicy, jsonGenerator);
            jsonGenerator.writeFieldName("shared_folder_join_policy");
            SharedFolderJoinPolicy.C4423b.f20718b.serialize(teamSharingPolicies.sharedFolderJoinPolicy, jsonGenerator);
            jsonGenerator.writeFieldName("shared_link_create_policy");
            SharedLinkCreatePolicy.C4427b.f20722b.serialize(teamSharingPolicies.sharedLinkCreatePolicy, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamSharingPolicies(SharedFolderMemberPolicy sharedFolderMemberPolicy, SharedFolderJoinPolicy sharedFolderJoinPolicy, SharedLinkCreatePolicy sharedLinkCreatePolicy) {
        if (sharedFolderMemberPolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderMemberPolicy' is null");
        }
        this.sharedFolderMemberPolicy = sharedFolderMemberPolicy;
        if (sharedFolderJoinPolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderJoinPolicy' is null");
        }
        this.sharedFolderJoinPolicy = sharedFolderJoinPolicy;
        if (sharedLinkCreatePolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinkCreatePolicy' is null");
        }
        this.sharedLinkCreatePolicy = sharedLinkCreatePolicy;
    }

    public boolean equals(Object obj) {
        SharedFolderJoinPolicy sharedFolderJoinPolicy;
        SharedFolderJoinPolicy sharedFolderJoinPolicy2;
        SharedLinkCreatePolicy sharedLinkCreatePolicy;
        SharedLinkCreatePolicy sharedLinkCreatePolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamSharingPolicies teamSharingPolicies = (TeamSharingPolicies) obj;
        SharedFolderMemberPolicy sharedFolderMemberPolicy = this.sharedFolderMemberPolicy;
        SharedFolderMemberPolicy sharedFolderMemberPolicy2 = teamSharingPolicies.sharedFolderMemberPolicy;
        return (sharedFolderMemberPolicy == sharedFolderMemberPolicy2 || sharedFolderMemberPolicy.equals(sharedFolderMemberPolicy2)) && ((sharedFolderJoinPolicy = this.sharedFolderJoinPolicy) == (sharedFolderJoinPolicy2 = teamSharingPolicies.sharedFolderJoinPolicy) || sharedFolderJoinPolicy.equals(sharedFolderJoinPolicy2)) && ((sharedLinkCreatePolicy = this.sharedLinkCreatePolicy) == (sharedLinkCreatePolicy2 = teamSharingPolicies.sharedLinkCreatePolicy) || sharedLinkCreatePolicy.equals(sharedLinkCreatePolicy2));
    }

    public SharedFolderJoinPolicy getSharedFolderJoinPolicy() {
        return this.sharedFolderJoinPolicy;
    }

    public SharedFolderMemberPolicy getSharedFolderMemberPolicy() {
        return this.sharedFolderMemberPolicy;
    }

    public SharedLinkCreatePolicy getSharedLinkCreatePolicy() {
        return this.sharedLinkCreatePolicy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderMemberPolicy, this.sharedFolderJoinPolicy, this.sharedLinkCreatePolicy});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
