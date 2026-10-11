package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.LinkPermissions;
import com.dropbox.core.p006v2.sharing.SharedLinkMetadata;
import com.dropbox.core.p006v2.sharing.TeamMemberInfo;
import com.dropbox.core.p006v2.users.Team;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.io.IOException;
import java.util.Date;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class FolderLinkMetadata extends SharedLinkMetadata {

    /* loaded from: classes4.dex */
    public static class Builder extends SharedLinkMetadata.Builder {
        public Builder(String str, String str2, LinkPermissions linkPermissions) {
            super(str, str2, linkPermissions);
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public FolderLinkMetadata build() {
            return new FolderLinkMetadata(this.url, this.name, this.linkPermissions, this.f17982id, this.expires, this.pathLower, this.teamMemberInfo, this.contentOwnerTeamInfo);
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withContentOwnerTeamInfo(Team team) {
            super.withContentOwnerTeamInfo(team);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withExpires(Date date) {
            super.withExpires(date);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withId(String str) {
            super.withId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withPathLower(String str) {
            super.withPathLower(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withTeamMemberInfo(TeamMemberInfo teamMemberInfo) {
            super.withTeamMemberInfo(teamMemberInfo);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.FolderLinkMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2829a extends StructSerializer<FolderLinkMetadata> {

        /* renamed from: b */
        public static final C2829a f17734b = new C2829a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if (com.onyx.android.sdk.data.common.cloud.Constant.FOLDER.equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.sharing.FolderLinkMetadata deserialize(com.fasterxml.jackson.core.JsonParser r11, boolean r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.sharing.FolderLinkMetadata.C2829a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.FolderLinkMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderLinkMetadata folderLinkMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag(Constant.FOLDER, jsonGenerator);
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) folderLinkMetadata.url, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) folderLinkMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            LinkPermissions.C2864a.f17796b.serialize((LinkPermissions.C2864a) folderLinkMetadata.linkPermissions, jsonGenerator);
            if (folderLinkMetadata.f17981id != null) {
                jsonGenerator.writeFieldName("id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderLinkMetadata.f17981id, jsonGenerator);
            }
            if (folderLinkMetadata.expires != null) {
                jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) folderLinkMetadata.expires, jsonGenerator);
            }
            if (folderLinkMetadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderLinkMetadata.pathLower, jsonGenerator);
            }
            if (folderLinkMetadata.teamMemberInfo != null) {
                jsonGenerator.writeFieldName("team_member_info");
                StoneSerializers.nullableStruct(TeamMemberInfo.C2964a.f17992b).serialize((StructSerializer) folderLinkMetadata.teamMemberInfo, jsonGenerator);
            }
            if (folderLinkMetadata.contentOwnerTeamInfo != null) {
                jsonGenerator.writeFieldName("content_owner_team_info");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize((StructSerializer) folderLinkMetadata.contentOwnerTeamInfo, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FolderLinkMetadata(String str, String str2, LinkPermissions linkPermissions, String str3, Date date, String str4, TeamMemberInfo teamMemberInfo, Team team) {
        super(str, str2, linkPermissions, str3, date, str4, teamMemberInfo, team);
    }

    public static Builder newBuilder(String str, String str2, LinkPermissions linkPermissions) {
        return new Builder(str, str2, linkPermissions);
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public boolean equals(Object obj) {
        String str;
        String str2;
        LinkPermissions linkPermissions;
        LinkPermissions linkPermissions2;
        String str3;
        String str4;
        Date date;
        Date date2;
        String str5;
        String str6;
        TeamMemberInfo teamMemberInfo;
        TeamMemberInfo teamMemberInfo2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FolderLinkMetadata folderLinkMetadata = (FolderLinkMetadata) obj;
        String str7 = this.url;
        String str8 = folderLinkMetadata.url;
        if ((str7 == str8 || str7.equals(str8)) && (((str = this.name) == (str2 = folderLinkMetadata.name) || str.equals(str2)) && (((linkPermissions = this.linkPermissions) == (linkPermissions2 = folderLinkMetadata.linkPermissions) || linkPermissions.equals(linkPermissions2)) && (((str3 = this.f17981id) == (str4 = folderLinkMetadata.f17981id) || (str3 != null && str3.equals(str4))) && (((date = this.expires) == (date2 = folderLinkMetadata.expires) || (date != null && date.equals(date2))) && (((str5 = this.pathLower) == (str6 = folderLinkMetadata.pathLower) || (str5 != null && str5.equals(str6))) && ((teamMemberInfo = this.teamMemberInfo) == (teamMemberInfo2 = folderLinkMetadata.teamMemberInfo) || (teamMemberInfo != null && teamMemberInfo.equals(teamMemberInfo2))))))))) {
            Team team = this.contentOwnerTeamInfo;
            Team team2 = folderLinkMetadata.contentOwnerTeamInfo;
            if (team == team2) {
                return true;
            }
            if (team != null && team.equals(team2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public Team getContentOwnerTeamInfo() {
        return this.contentOwnerTeamInfo;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public Date getExpires() {
        return this.expires;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public String getId() {
        return this.f17981id;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public LinkPermissions getLinkPermissions() {
        return this.linkPermissions;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public String getName() {
        return this.name;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public String getPathLower() {
        return this.pathLower;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public TeamMemberInfo getTeamMemberInfo() {
        return this.teamMemberInfo;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public String getUrl() {
        return this.url;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public String toString() {
        return C2829a.f17734b.serialize((C2829a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public String toStringMultiline() {
        return C2829a.f17734b.serialize((C2829a) this, true);
    }

    public FolderLinkMetadata(String str, String str2, LinkPermissions linkPermissions) {
        this(str, str2, linkPermissions, null, null, null, null, null);
    }
}
