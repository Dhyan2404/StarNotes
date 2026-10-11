package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessInheritance;
import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.FolderPermission;
import com.dropbox.core.p006v2.sharing.FolderPolicy;
import com.dropbox.core.p006v2.sharing.SharedContentLinkMetadata;
import com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase;
import com.dropbox.core.p006v2.users.Team;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class SharedFolderMetadata extends SharedFolderMetadataBase {
    protected final AccessInheritance accessInheritance;
    protected final SharedContentLinkMetadata linkMetadata;
    protected final String name;
    protected final List<FolderPermission> permissions;
    protected final FolderPolicy policy;
    protected final String previewUrl;
    protected final String sharedFolderId;
    protected final Date timeInvited;

    /* loaded from: classes4.dex */
    public static class Builder extends SharedFolderMetadataBase.Builder {
        protected AccessInheritance accessInheritance;
        protected SharedContentLinkMetadata linkMetadata;
        protected final String name;
        protected List<FolderPermission> permissions;
        protected final FolderPolicy policy;
        protected final String previewUrl;
        protected final String sharedFolderId;
        protected final Date timeInvited;

        public Builder(AccessLevel accessLevel, boolean z, boolean z2, String str, FolderPolicy folderPolicy, String str2, String str3, Date date) {
            super(accessLevel, z, z2);
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str;
            if (folderPolicy == null) {
                throw new IllegalArgumentException("Required value for 'policy' is null");
            }
            this.policy = folderPolicy;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'previewUrl' is null");
            }
            this.previewUrl = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str3;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'timeInvited' is null");
            }
            this.timeInvited = LangUtil.truncateMillis(date);
            this.linkMetadata = null;
            this.permissions = null;
            this.accessInheritance = AccessInheritance.INHERIT;
        }

        public Builder withAccessInheritance(AccessInheritance accessInheritance) {
            if (accessInheritance != null) {
                this.accessInheritance = accessInheritance;
            } else {
                this.accessInheritance = AccessInheritance.INHERIT;
            }
            return this;
        }

        public Builder withLinkMetadata(SharedContentLinkMetadata sharedContentLinkMetadata) {
            this.linkMetadata = sharedContentLinkMetadata;
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public /* bridge */ /* synthetic */ SharedFolderMetadataBase.Builder withOwnerDisplayNames(List list) {
            return withOwnerDisplayNames((List<String>) list);
        }

        public Builder withPermissions(List<FolderPermission> list) {
            if (list != null) {
                Iterator<FolderPermission> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.permissions = list;
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public SharedFolderMetadata build() {
            return new SharedFolderMetadata(this.accessType, this.isInsideTeamFolder, this.isTeamFolder, this.name, this.policy, this.previewUrl, this.sharedFolderId, this.timeInvited, this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathLower, this.parentFolderName, this.linkMetadata, this.permissions, this.accessInheritance);
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withOwnerDisplayNames(List<String> list) {
            super.withOwnerDisplayNames(list);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withOwnerTeam(Team team) {
            super.withOwnerTeam(team);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withParentFolderName(String str) {
            super.withParentFolderName(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withParentSharedFolderId(String str) {
            super.withParentSharedFolderId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withPathLower(String str) {
            super.withPathLower(str);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedFolderMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2947a extends StructSerializer<SharedFolderMetadata> {

        /* renamed from: b */
        public static final C2947a f17971b = new C2947a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            AccessLevel accessLevel = null;
            String str2 = null;
            FolderPolicy folderPolicy = null;
            String str3 = null;
            String str4 = null;
            Date date = null;
            List list = null;
            Team team = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            SharedContentLinkMetadata sharedContentLinkMetadata = null;
            List list2 = null;
            AccessInheritance accessInheritance = AccessInheritance.INHERIT;
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_type".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("is_inside_team_folder".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("is_team_folder".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("policy".equals(currentName)) {
                    folderPolicy = FolderPolicy.C2831a.f17736b.deserialize(jsonParser);
                } else if ("preview_url".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("shared_folder_id".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("time_invited".equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if ("owner_display_names".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(jsonParser);
                } else if ("owner_team".equals(currentName)) {
                    team = (Team) StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("path_lower".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("parent_folder_name".equals(currentName)) {
                    str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("link_metadata".equals(currentName)) {
                    sharedContentLinkMetadata = (SharedContentLinkMetadata) StoneSerializers.nullableStruct(SharedContentLinkMetadata.C2938a.f17958b).deserialize(jsonParser);
                } else if ("permissions".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(FolderPermission.C2830a.f17735b)).deserialize(jsonParser);
                } else if ("access_inheritance".equals(currentName)) {
                    accessInheritance = AccessInheritance.C2794b.f17652b.deserialize(jsonParser);
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
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (folderPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"policy\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"preview_url\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"time_invited\" missing.");
            }
            SharedFolderMetadata sharedFolderMetadata = new SharedFolderMetadata(accessLevel, bool.booleanValue(), bool2.booleanValue(), str2, folderPolicy, str3, str4, date, list, team, str5, str6, str7, sharedContentLinkMetadata, list2, accessInheritance);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderMetadata, sharedFolderMetadata.toStringMultiline());
            return sharedFolderMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderMetadata sharedFolderMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(sharedFolderMetadata.accessType, jsonGenerator);
            jsonGenerator.writeFieldName("is_inside_team_folder");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(sharedFolderMetadata.isInsideTeamFolder), jsonGenerator);
            jsonGenerator.writeFieldName("is_team_folder");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(sharedFolderMetadata.isTeamFolder), jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedFolderMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("policy");
            FolderPolicy.C2831a.f17736b.serialize((FolderPolicy.C2831a) sharedFolderMetadata.policy, jsonGenerator);
            jsonGenerator.writeFieldName("preview_url");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedFolderMetadata.previewUrl, jsonGenerator);
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedFolderMetadata.sharedFolderId, jsonGenerator);
            jsonGenerator.writeFieldName("time_invited");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) sharedFolderMetadata.timeInvited, jsonGenerator);
            if (sharedFolderMetadata.ownerDisplayNames != null) {
                jsonGenerator.writeFieldName("owner_display_names");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize((StoneSerializer) sharedFolderMetadata.ownerDisplayNames, jsonGenerator);
            }
            if (sharedFolderMetadata.ownerTeam != null) {
                jsonGenerator.writeFieldName("owner_team");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize((StructSerializer) sharedFolderMetadata.ownerTeam, jsonGenerator);
            }
            if (sharedFolderMetadata.parentSharedFolderId != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderMetadata.parentSharedFolderId, jsonGenerator);
            }
            if (sharedFolderMetadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderMetadata.pathLower, jsonGenerator);
            }
            if (sharedFolderMetadata.parentFolderName != null) {
                jsonGenerator.writeFieldName("parent_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderMetadata.parentFolderName, jsonGenerator);
            }
            if (sharedFolderMetadata.linkMetadata != null) {
                jsonGenerator.writeFieldName("link_metadata");
                StoneSerializers.nullableStruct(SharedContentLinkMetadata.C2938a.f17958b).serialize((StructSerializer) sharedFolderMetadata.linkMetadata, jsonGenerator);
            }
            if (sharedFolderMetadata.permissions != null) {
                jsonGenerator.writeFieldName("permissions");
                StoneSerializers.nullable(StoneSerializers.list(FolderPermission.C2830a.f17735b)).serialize((StoneSerializer) sharedFolderMetadata.permissions, jsonGenerator);
            }
            jsonGenerator.writeFieldName("access_inheritance");
            AccessInheritance.C2794b.f17652b.serialize(sharedFolderMetadata.accessInheritance, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderMetadata(AccessLevel accessLevel, boolean z, boolean z2, String str, FolderPolicy folderPolicy, String str2, String str3, Date date, List<String> list, Team team, String str4, String str5, String str6, SharedContentLinkMetadata sharedContentLinkMetadata, List<FolderPermission> list2, AccessInheritance accessInheritance) {
        super(accessLevel, z, z2, list, team, str4, str5, str6);
        this.linkMetadata = sharedContentLinkMetadata;
        if (str != null) {
            this.name = str;
            if (list2 != null) {
                Iterator<FolderPermission> it2 = list2.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.permissions = list2;
            if (folderPolicy != null) {
                this.policy = folderPolicy;
                if (str2 != null) {
                    this.previewUrl = str2;
                    if (str3 != null) {
                        if (Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
                            this.sharedFolderId = str3;
                            if (date != null) {
                                this.timeInvited = LangUtil.truncateMillis(date);
                                if (accessInheritance != null) {
                                    this.accessInheritance = accessInheritance;
                                    return;
                                }
                                throw new IllegalArgumentException("Required value for 'accessInheritance' is null");
                            }
                            throw new IllegalArgumentException("Required value for 'timeInvited' is null");
                        }
                        throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
                    }
                    throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
                }
                throw new IllegalArgumentException("Required value for 'previewUrl' is null");
            }
            throw new IllegalArgumentException("Required value for 'policy' is null");
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    public static Builder newBuilder(AccessLevel accessLevel, boolean z, boolean z2, String str, FolderPolicy folderPolicy, String str2, String str3, Date date) {
        return new Builder(accessLevel, z, z2, str, folderPolicy, str2, str3, date);
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public boolean equals(Object obj) {
        String str;
        String str2;
        FolderPolicy folderPolicy;
        FolderPolicy folderPolicy2;
        String str3;
        String str4;
        String str5;
        String str6;
        Date date;
        Date date2;
        List<String> list;
        List<String> list2;
        Team team;
        Team team2;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        SharedContentLinkMetadata sharedContentLinkMetadata;
        SharedContentLinkMetadata sharedContentLinkMetadata2;
        List<FolderPermission> list3;
        List<FolderPermission> list4;
        AccessInheritance accessInheritance;
        AccessInheritance accessInheritance2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedFolderMetadata sharedFolderMetadata = (SharedFolderMetadata) obj;
        AccessLevel accessLevel = this.accessType;
        AccessLevel accessLevel2 = sharedFolderMetadata.accessType;
        return (accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && this.isInsideTeamFolder == sharedFolderMetadata.isInsideTeamFolder && this.isTeamFolder == sharedFolderMetadata.isTeamFolder && ((str = this.name) == (str2 = sharedFolderMetadata.name) || str.equals(str2)) && (((folderPolicy = this.policy) == (folderPolicy2 = sharedFolderMetadata.policy) || folderPolicy.equals(folderPolicy2)) && (((str3 = this.previewUrl) == (str4 = sharedFolderMetadata.previewUrl) || str3.equals(str4)) && (((str5 = this.sharedFolderId) == (str6 = sharedFolderMetadata.sharedFolderId) || str5.equals(str6)) && (((date = this.timeInvited) == (date2 = sharedFolderMetadata.timeInvited) || date.equals(date2)) && (((list = this.ownerDisplayNames) == (list2 = sharedFolderMetadata.ownerDisplayNames) || (list != null && list.equals(list2))) && (((team = this.ownerTeam) == (team2 = sharedFolderMetadata.ownerTeam) || (team != null && team.equals(team2))) && (((str7 = this.parentSharedFolderId) == (str8 = sharedFolderMetadata.parentSharedFolderId) || (str7 != null && str7.equals(str8))) && (((str9 = this.pathLower) == (str10 = sharedFolderMetadata.pathLower) || (str9 != null && str9.equals(str10))) && (((str11 = this.parentFolderName) == (str12 = sharedFolderMetadata.parentFolderName) || (str11 != null && str11.equals(str12))) && (((sharedContentLinkMetadata = this.linkMetadata) == (sharedContentLinkMetadata2 = sharedFolderMetadata.linkMetadata) || (sharedContentLinkMetadata != null && sharedContentLinkMetadata.equals(sharedContentLinkMetadata2))) && (((list3 = this.permissions) == (list4 = sharedFolderMetadata.permissions) || (list3 != null && list3.equals(list4))) && ((accessInheritance = this.accessInheritance) == (accessInheritance2 = sharedFolderMetadata.accessInheritance) || accessInheritance.equals(accessInheritance2)))))))))))));
    }

    public AccessInheritance getAccessInheritance() {
        return this.accessInheritance;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public boolean getIsInsideTeamFolder() {
        return this.isInsideTeamFolder;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public boolean getIsTeamFolder() {
        return this.isTeamFolder;
    }

    public SharedContentLinkMetadata getLinkMetadata() {
        return this.linkMetadata;
    }

    public String getName() {
        return this.name;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public List<String> getOwnerDisplayNames() {
        return this.ownerDisplayNames;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public Team getOwnerTeam() {
        return this.ownerTeam;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public String getParentFolderName() {
        return this.parentFolderName;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public String getPathLower() {
        return this.pathLower;
    }

    public List<FolderPermission> getPermissions() {
        return this.permissions;
    }

    public FolderPolicy getPolicy() {
        return this.policy;
    }

    public String getPreviewUrl() {
        return this.previewUrl;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public Date getTimeInvited() {
        return this.timeInvited;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.linkMetadata, this.name, this.permissions, this.policy, this.previewUrl, this.sharedFolderId, this.timeInvited, this.accessInheritance});
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public String toString() {
        return C2947a.f17971b.serialize((C2947a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedFolderMetadataBase
    public String toStringMultiline() {
        return C2947a.f17971b.serialize((C2947a) this, true);
    }

    public SharedFolderMetadata(AccessLevel accessLevel, boolean z, boolean z2, String str, FolderPolicy folderPolicy, String str2, String str3, Date date) {
        this(accessLevel, z, z2, str, folderPolicy, str2, str3, date, null, null, null, null, null, null, null, AccessInheritance.INHERIT);
    }
}
