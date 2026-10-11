package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.ExpectedSharedContentLinkMetadata;
import com.dropbox.core.p006v2.sharing.FilePermission;
import com.dropbox.core.p006v2.sharing.FolderPolicy;
import com.dropbox.core.p006v2.sharing.SharedContentLinkMetadata;
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
public class SharedFileMetadata {
    protected final AccessLevel accessType;
    protected final ExpectedSharedContentLinkMetadata expectedLinkMetadata;

    /* renamed from: id */
    protected final String f17961id;
    protected final SharedContentLinkMetadata linkMetadata;
    protected final String name;
    protected final List<String> ownerDisplayNames;
    protected final Team ownerTeam;
    protected final String parentSharedFolderId;
    protected final String pathDisplay;
    protected final String pathLower;
    protected final List<FilePermission> permissions;
    protected final FolderPolicy policy;
    protected final String previewUrl;
    protected final Date timeInvited;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected AccessLevel accessType;
        protected ExpectedSharedContentLinkMetadata expectedLinkMetadata;

        /* renamed from: id */
        protected final String f17962id;
        protected SharedContentLinkMetadata linkMetadata;
        protected final String name;
        protected List<String> ownerDisplayNames;
        protected Team ownerTeam;
        protected String parentSharedFolderId;
        protected String pathDisplay;
        protected String pathLower;
        protected List<FilePermission> permissions;
        protected final FolderPolicy policy;
        protected final String previewUrl;
        protected Date timeInvited;

        public Builder(String str, String str2, FolderPolicy folderPolicy, String str3) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str.length() < 4) {
                throw new IllegalArgumentException("String 'id' is shorter than 4");
            }
            if (!Pattern.matches("id:.+", str)) {
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            this.f17962id = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str2;
            if (folderPolicy == null) {
                throw new IllegalArgumentException("Required value for 'policy' is null");
            }
            this.policy = folderPolicy;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'previewUrl' is null");
            }
            this.previewUrl = str3;
            this.accessType = null;
            this.expectedLinkMetadata = null;
            this.linkMetadata = null;
            this.ownerDisplayNames = null;
            this.ownerTeam = null;
            this.parentSharedFolderId = null;
            this.pathDisplay = null;
            this.pathLower = null;
            this.permissions = null;
            this.timeInvited = null;
        }

        public SharedFileMetadata build() {
            return new SharedFileMetadata(this.f17962id, this.name, this.policy, this.previewUrl, this.accessType, this.expectedLinkMetadata, this.linkMetadata, this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathDisplay, this.pathLower, this.permissions, this.timeInvited);
        }

        public Builder withAccessType(AccessLevel accessLevel) {
            this.accessType = accessLevel;
            return this;
        }

        public Builder withExpectedLinkMetadata(ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata) {
            this.expectedLinkMetadata = expectedSharedContentLinkMetadata;
            return this;
        }

        public Builder withLinkMetadata(SharedContentLinkMetadata sharedContentLinkMetadata) {
            this.linkMetadata = sharedContentLinkMetadata;
            return this;
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

        public Builder withParentSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str;
            return this;
        }

        public Builder withPathDisplay(String str) {
            this.pathDisplay = str;
            return this;
        }

        public Builder withPathLower(String str) {
            this.pathLower = str;
            return this;
        }

        public Builder withPermissions(List<FilePermission> list) {
            if (list != null) {
                Iterator<FilePermission> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.permissions = list;
            return this;
        }

        public Builder withTimeInvited(Date date) {
            this.timeInvited = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedFileMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2941a extends StructSerializer<SharedFileMetadata> {

        /* renamed from: b */
        public static final C2941a f17963b = new C2941a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFileMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            FolderPolicy folderPolicy = null;
            String str4 = null;
            AccessLevel accessLevel = null;
            ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata = null;
            SharedContentLinkMetadata sharedContentLinkMetadata = null;
            List list = null;
            Team team = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            List list2 = null;
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("policy".equals(currentName)) {
                    folderPolicy = FolderPolicy.C2831a.f17736b.deserialize(jsonParser);
                } else if ("preview_url".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("access_type".equals(currentName)) {
                    accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("expected_link_metadata".equals(currentName)) {
                    expectedSharedContentLinkMetadata = (ExpectedSharedContentLinkMetadata) StoneSerializers.nullableStruct(ExpectedSharedContentLinkMetadata.C2815a.f17711b).deserialize(jsonParser);
                } else if ("link_metadata".equals(currentName)) {
                    sharedContentLinkMetadata = (SharedContentLinkMetadata) StoneSerializers.nullableStruct(SharedContentLinkMetadata.C2938a.f17958b).deserialize(jsonParser);
                } else if ("owner_display_names".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(jsonParser);
                } else if ("owner_team".equals(currentName)) {
                    team = (Team) StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("path_display".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("path_lower".equals(currentName)) {
                    str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("permissions".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(FilePermission.C2826a.f17731b)).deserialize(jsonParser);
                } else if ("time_invited".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
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
            if (folderPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"policy\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"preview_url\" missing.");
            }
            SharedFileMetadata sharedFileMetadata = new SharedFileMetadata(str2, str3, folderPolicy, str4, accessLevel, expectedSharedContentLinkMetadata, sharedContentLinkMetadata, list, team, str5, str6, str7, list2, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFileMetadata, sharedFileMetadata.toStringMultiline());
            return sharedFileMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFileMetadata sharedFileMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedFileMetadata.f17961id, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedFileMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("policy");
            FolderPolicy.C2831a.f17736b.serialize((FolderPolicy.C2831a) sharedFileMetadata.policy, jsonGenerator);
            jsonGenerator.writeFieldName("preview_url");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedFileMetadata.previewUrl, jsonGenerator);
            if (sharedFileMetadata.accessType != null) {
                jsonGenerator.writeFieldName("access_type");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize((StoneSerializer) sharedFileMetadata.accessType, jsonGenerator);
            }
            if (sharedFileMetadata.expectedLinkMetadata != null) {
                jsonGenerator.writeFieldName("expected_link_metadata");
                StoneSerializers.nullableStruct(ExpectedSharedContentLinkMetadata.C2815a.f17711b).serialize((StructSerializer) sharedFileMetadata.expectedLinkMetadata, jsonGenerator);
            }
            if (sharedFileMetadata.linkMetadata != null) {
                jsonGenerator.writeFieldName("link_metadata");
                StoneSerializers.nullableStruct(SharedContentLinkMetadata.C2938a.f17958b).serialize((StructSerializer) sharedFileMetadata.linkMetadata, jsonGenerator);
            }
            if (sharedFileMetadata.ownerDisplayNames != null) {
                jsonGenerator.writeFieldName("owner_display_names");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize((StoneSerializer) sharedFileMetadata.ownerDisplayNames, jsonGenerator);
            }
            if (sharedFileMetadata.ownerTeam != null) {
                jsonGenerator.writeFieldName("owner_team");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize((StructSerializer) sharedFileMetadata.ownerTeam, jsonGenerator);
            }
            if (sharedFileMetadata.parentSharedFolderId != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFileMetadata.parentSharedFolderId, jsonGenerator);
            }
            if (sharedFileMetadata.pathDisplay != null) {
                jsonGenerator.writeFieldName("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFileMetadata.pathDisplay, jsonGenerator);
            }
            if (sharedFileMetadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFileMetadata.pathLower, jsonGenerator);
            }
            if (sharedFileMetadata.permissions != null) {
                jsonGenerator.writeFieldName("permissions");
                StoneSerializers.nullable(StoneSerializers.list(FilePermission.C2826a.f17731b)).serialize((StoneSerializer) sharedFileMetadata.permissions, jsonGenerator);
            }
            if (sharedFileMetadata.timeInvited != null) {
                jsonGenerator.writeFieldName("time_invited");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedFileMetadata.timeInvited, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFileMetadata(String str, String str2, FolderPolicy folderPolicy, String str3, AccessLevel accessLevel, ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata, SharedContentLinkMetadata sharedContentLinkMetadata, List<String> list, Team team, String str4, String str5, String str6, List<FilePermission> list2, Date date) {
        this.accessType = accessLevel;
        if (str != null) {
            if (str.length() >= 4) {
                if (Pattern.matches("id:.+", str)) {
                    this.f17961id = str;
                    this.expectedLinkMetadata = expectedSharedContentLinkMetadata;
                    this.linkMetadata = sharedContentLinkMetadata;
                    if (str2 != null) {
                        this.name = str2;
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
                        if (str4 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str4)) {
                            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
                        }
                        this.parentSharedFolderId = str4;
                        this.pathDisplay = str5;
                        this.pathLower = str6;
                        if (list2 != null) {
                            Iterator<FilePermission> it3 = list2.iterator();
                            while (it3.hasNext()) {
                                if (it3.next() == null) {
                                    throw new IllegalArgumentException("An item in list 'permissions' is null");
                                }
                            }
                        }
                        this.permissions = list2;
                        if (folderPolicy != null) {
                            this.policy = folderPolicy;
                            if (str3 != null) {
                                this.previewUrl = str3;
                                this.timeInvited = LangUtil.truncateMillis(date);
                                return;
                            }
                            throw new IllegalArgumentException("Required value for 'previewUrl' is null");
                        }
                        throw new IllegalArgumentException("Required value for 'policy' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'name' is null");
                }
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            throw new IllegalArgumentException("String 'id' is shorter than 4");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    public static Builder newBuilder(String str, String str2, FolderPolicy folderPolicy, String str3) {
        return new Builder(str, str2, folderPolicy, str3);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        FolderPolicy folderPolicy;
        FolderPolicy folderPolicy2;
        String str3;
        String str4;
        AccessLevel accessLevel;
        AccessLevel accessLevel2;
        ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata;
        ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata2;
        SharedContentLinkMetadata sharedContentLinkMetadata;
        SharedContentLinkMetadata sharedContentLinkMetadata2;
        List<String> list;
        List<String> list2;
        Team team;
        Team team2;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        List<FilePermission> list3;
        List<FilePermission> list4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedFileMetadata sharedFileMetadata = (SharedFileMetadata) obj;
        String str11 = this.f17961id;
        String str12 = sharedFileMetadata.f17961id;
        if ((str11 == str12 || str11.equals(str12)) && (((str = this.name) == (str2 = sharedFileMetadata.name) || str.equals(str2)) && (((folderPolicy = this.policy) == (folderPolicy2 = sharedFileMetadata.policy) || folderPolicy.equals(folderPolicy2)) && (((str3 = this.previewUrl) == (str4 = sharedFileMetadata.previewUrl) || str3.equals(str4)) && (((accessLevel = this.accessType) == (accessLevel2 = sharedFileMetadata.accessType) || (accessLevel != null && accessLevel.equals(accessLevel2))) && (((expectedSharedContentLinkMetadata = this.expectedLinkMetadata) == (expectedSharedContentLinkMetadata2 = sharedFileMetadata.expectedLinkMetadata) || (expectedSharedContentLinkMetadata != null && expectedSharedContentLinkMetadata.equals(expectedSharedContentLinkMetadata2))) && (((sharedContentLinkMetadata = this.linkMetadata) == (sharedContentLinkMetadata2 = sharedFileMetadata.linkMetadata) || (sharedContentLinkMetadata != null && sharedContentLinkMetadata.equals(sharedContentLinkMetadata2))) && (((list = this.ownerDisplayNames) == (list2 = sharedFileMetadata.ownerDisplayNames) || (list != null && list.equals(list2))) && (((team = this.ownerTeam) == (team2 = sharedFileMetadata.ownerTeam) || (team != null && team.equals(team2))) && (((str5 = this.parentSharedFolderId) == (str6 = sharedFileMetadata.parentSharedFolderId) || (str5 != null && str5.equals(str6))) && (((str7 = this.pathDisplay) == (str8 = sharedFileMetadata.pathDisplay) || (str7 != null && str7.equals(str8))) && (((str9 = this.pathLower) == (str10 = sharedFileMetadata.pathLower) || (str9 != null && str9.equals(str10))) && ((list3 = this.permissions) == (list4 = sharedFileMetadata.permissions) || (list3 != null && list3.equals(list4))))))))))))))) {
            Date date = this.timeInvited;
            Date date2 = sharedFileMetadata.timeInvited;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public ExpectedSharedContentLinkMetadata getExpectedLinkMetadata() {
        return this.expectedLinkMetadata;
    }

    public String getId() {
        return this.f17961id;
    }

    public SharedContentLinkMetadata getLinkMetadata() {
        return this.linkMetadata;
    }

    public String getName() {
        return this.name;
    }

    public List<String> getOwnerDisplayNames() {
        return this.ownerDisplayNames;
    }

    public Team getOwnerTeam() {
        return this.ownerTeam;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    public String getPathDisplay() {
        return this.pathDisplay;
    }

    public String getPathLower() {
        return this.pathLower;
    }

    public List<FilePermission> getPermissions() {
        return this.permissions;
    }

    public FolderPolicy getPolicy() {
        return this.policy;
    }

    public String getPreviewUrl() {
        return this.previewUrl;
    }

    public Date getTimeInvited() {
        return this.timeInvited;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessType, this.f17961id, this.expectedLinkMetadata, this.linkMetadata, this.name, this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathDisplay, this.pathLower, this.permissions, this.policy, this.previewUrl, this.timeInvited});
    }

    public String toString() {
        return C2941a.f17963b.serialize((C2941a) this, false);
    }

    public String toStringMultiline() {
        return C2941a.f17963b.serialize((C2941a) this, true);
    }

    public SharedFileMetadata(String str, String str2, FolderPolicy folderPolicy, String str3) {
        this(str, str2, folderPolicy, str3, null, null, null, null, null, null, null, null, null, null);
    }
}
