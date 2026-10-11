package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.users.Team;
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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class SharedFolderMetadataBase {
    protected final AccessLevel accessType;
    protected final boolean isInsideTeamFolder;
    protected final boolean isTeamFolder;
    protected final List<String> ownerDisplayNames;
    protected final Team ownerTeam;
    protected final String parentFolderName;
    protected final String parentSharedFolderId;
    protected final String pathLower;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final AccessLevel accessType;
        protected final boolean isInsideTeamFolder;
        protected final boolean isTeamFolder;
        protected List<String> ownerDisplayNames;
        protected Team ownerTeam;
        protected String parentFolderName;
        protected String parentSharedFolderId;
        protected String pathLower;

        public Builder(AccessLevel accessLevel, boolean z, boolean z2) {
            if (accessLevel == null) {
                throw new IllegalArgumentException("Required value for 'accessType' is null");
            }
            this.accessType = accessLevel;
            this.isInsideTeamFolder = z;
            this.isTeamFolder = z2;
            this.ownerDisplayNames = null;
            this.ownerTeam = null;
            this.parentSharedFolderId = null;
            this.pathLower = null;
            this.parentFolderName = null;
        }

        public SharedFolderMetadataBase build() {
            return new SharedFolderMetadataBase(this.accessType, this.isInsideTeamFolder, this.isTeamFolder, this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathLower, this.parentFolderName);
        }

        public Builder withOwnerDisplayNames(List<String> list) {
            if (list != null) {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
                    }
                }
            }
            this.ownerDisplayNames = list;
            return this;
        }

        public Builder withOwnerTeam(Team team) {
            this.ownerTeam = team;
            return this;
        }

        public Builder withParentFolderName(String str) {
            this.parentFolderName = str;
            return this;
        }

        public Builder withParentSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str;
            return this;
        }

        public Builder withPathLower(String str) {
            this.pathLower = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedFolderMetadataBase$a */
    /* loaded from: classes4.dex */
    public static class C2948a extends StructSerializer<SharedFolderMetadataBase> {

        /* renamed from: b */
        public static final C2948a f17972b = new C2948a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderMetadataBase deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool2 = null;
            AccessLevel accessLevel = null;
            List list = null;
            Team team = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_type".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("is_inside_team_folder".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("is_team_folder".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("owner_display_names".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(jsonParser);
                } else if ("owner_team".equals(currentName)) {
                    team = (Team) StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("path_lower".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("parent_folder_name".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_inside_team_folder\" missing.");
            }
            if (bool2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_team_folder\" missing.");
            }
            SharedFolderMetadataBase sharedFolderMetadataBase = new SharedFolderMetadataBase(accessLevel, bool.booleanValue(), bool2.booleanValue(), list, team, str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderMetadataBase, sharedFolderMetadataBase.toStringMultiline());
            return sharedFolderMetadataBase;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderMetadataBase sharedFolderMetadataBase, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(sharedFolderMetadataBase.accessType, jsonGenerator);
            jsonGenerator.writeFieldName("is_inside_team_folder");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(sharedFolderMetadataBase.isInsideTeamFolder), jsonGenerator);
            jsonGenerator.writeFieldName("is_team_folder");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(sharedFolderMetadataBase.isTeamFolder), jsonGenerator);
            if (sharedFolderMetadataBase.ownerDisplayNames != null) {
                jsonGenerator.writeFieldName("owner_display_names");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize((StoneSerializer) sharedFolderMetadataBase.ownerDisplayNames, jsonGenerator);
            }
            if (sharedFolderMetadataBase.ownerTeam != null) {
                jsonGenerator.writeFieldName("owner_team");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize((StructSerializer) sharedFolderMetadataBase.ownerTeam, jsonGenerator);
            }
            if (sharedFolderMetadataBase.parentSharedFolderId != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderMetadataBase.parentSharedFolderId, jsonGenerator);
            }
            if (sharedFolderMetadataBase.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderMetadataBase.pathLower, jsonGenerator);
            }
            if (sharedFolderMetadataBase.parentFolderName != null) {
                jsonGenerator.writeFieldName("parent_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderMetadataBase.parentFolderName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderMetadataBase(AccessLevel accessLevel, boolean z, boolean z2, List<String> list, Team team, String str, String str2, String str3) {
        if (accessLevel != null) {
            this.accessType = accessLevel;
            this.isInsideTeamFolder = z;
            this.isTeamFolder = z2;
            if (list != null) {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
                    }
                }
            }
            this.ownerDisplayNames = list;
            this.ownerTeam = team;
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str;
            this.pathLower = str2;
            this.parentFolderName = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'accessType' is null");
    }

    public static Builder newBuilder(AccessLevel accessLevel, boolean z, boolean z2) {
        return new Builder(accessLevel, z, z2);
    }

    public boolean equals(Object obj) {
        List<String> list;
        List<String> list2;
        Team team;
        Team team2;
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedFolderMetadataBase sharedFolderMetadataBase = (SharedFolderMetadataBase) obj;
        AccessLevel accessLevel = this.accessType;
        AccessLevel accessLevel2 = sharedFolderMetadataBase.accessType;
        if ((accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && this.isInsideTeamFolder == sharedFolderMetadataBase.isInsideTeamFolder && this.isTeamFolder == sharedFolderMetadataBase.isTeamFolder && (((list = this.ownerDisplayNames) == (list2 = sharedFolderMetadataBase.ownerDisplayNames) || (list != null && list.equals(list2))) && (((team = this.ownerTeam) == (team2 = sharedFolderMetadataBase.ownerTeam) || (team != null && team.equals(team2))) && (((str = this.parentSharedFolderId) == (str2 = sharedFolderMetadataBase.parentSharedFolderId) || (str != null && str.equals(str2))) && ((str3 = this.pathLower) == (str4 = sharedFolderMetadataBase.pathLower) || (str3 != null && str3.equals(str4))))))) {
            String str5 = this.parentFolderName;
            String str6 = sharedFolderMetadataBase.parentFolderName;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public boolean getIsInsideTeamFolder() {
        return this.isInsideTeamFolder;
    }

    public boolean getIsTeamFolder() {
        return this.isTeamFolder;
    }

    public List<String> getOwnerDisplayNames() {
        return this.ownerDisplayNames;
    }

    public Team getOwnerTeam() {
        return this.ownerTeam;
    }

    public String getParentFolderName() {
        return this.parentFolderName;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    public String getPathLower() {
        return this.pathLower;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessType, Boolean.valueOf(this.isInsideTeamFolder), Boolean.valueOf(this.isTeamFolder), this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathLower, this.parentFolderName});
    }

    public String toString() {
        return C2948a.f17972b.serialize((C2948a) this, false);
    }

    public String toStringMultiline() {
        return C2948a.f17972b.serialize((C2948a) this, true);
    }

    public SharedFolderMetadataBase(AccessLevel accessLevel, boolean z, boolean z2) {
        this(accessLevel, z, z2, null, null, null, null, null);
    }
}
