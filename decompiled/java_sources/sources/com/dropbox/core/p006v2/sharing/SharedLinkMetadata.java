package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.FileLinkMetadata;
import com.dropbox.core.p006v2.sharing.FolderLinkMetadata;
import com.dropbox.core.p006v2.sharing.LinkPermissions;
import com.dropbox.core.p006v2.sharing.TeamMemberInfo;
import com.dropbox.core.p006v2.users.Team;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class SharedLinkMetadata {
    protected final Team contentOwnerTeamInfo;
    protected final Date expires;

    /* renamed from: id */
    protected final String f17981id;
    protected final LinkPermissions linkPermissions;
    protected final String name;
    protected final String pathLower;
    protected final TeamMemberInfo teamMemberInfo;
    protected final String url;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Team contentOwnerTeamInfo;
        protected Date expires;

        /* renamed from: id */
        protected String f17982id;
        protected final LinkPermissions linkPermissions;
        protected final String name;
        protected String pathLower;
        protected TeamMemberInfo teamMemberInfo;
        protected final String url;

        public Builder(String str, String str2, LinkPermissions linkPermissions) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            this.url = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str2;
            if (linkPermissions == null) {
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            this.linkPermissions = linkPermissions;
            this.f17982id = null;
            this.expires = null;
            this.pathLower = null;
            this.teamMemberInfo = null;
            this.contentOwnerTeamInfo = null;
        }

        public SharedLinkMetadata build() {
            return new SharedLinkMetadata(this.url, this.name, this.linkPermissions, this.f17982id, this.expires, this.pathLower, this.teamMemberInfo, this.contentOwnerTeamInfo);
        }

        public Builder withContentOwnerTeamInfo(Team team) {
            this.contentOwnerTeamInfo = team;
            return this;
        }

        public Builder withExpires(Date date) {
            this.expires = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withId(String str) {
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f17982id = str;
            return this;
        }

        public Builder withPathLower(String str) {
            this.pathLower = str;
            return this;
        }

        public Builder withTeamMemberInfo(TeamMemberInfo teamMemberInfo) {
            this.teamMemberInfo = teamMemberInfo;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2955a extends StructSerializer<SharedLinkMetadata> {

        /* renamed from: b */
        public static final C2955a f17983b = new C2955a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.sharing.SharedLinkMetadata deserialize(com.fasterxml.jackson.core.JsonParser r12, boolean r13) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 347
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.sharing.SharedLinkMetadata.C2955a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.SharedLinkMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkMetadata sharedLinkMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (sharedLinkMetadata instanceof FileLinkMetadata) {
                FileLinkMetadata.C2818a.f17714b.serialize((FileLinkMetadata) sharedLinkMetadata, jsonGenerator, z);
                return;
            }
            if (sharedLinkMetadata instanceof FolderLinkMetadata) {
                FolderLinkMetadata.C2829a.f17734b.serialize((FolderLinkMetadata) sharedLinkMetadata, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedLinkMetadata.url, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedLinkMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            LinkPermissions.C2864a.f17796b.serialize((LinkPermissions.C2864a) sharedLinkMetadata.linkPermissions, jsonGenerator);
            if (sharedLinkMetadata.f17981id != null) {
                jsonGenerator.writeFieldName("id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkMetadata.f17981id, jsonGenerator);
            }
            if (sharedLinkMetadata.expires != null) {
                jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkMetadata.expires, jsonGenerator);
            }
            if (sharedLinkMetadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkMetadata.pathLower, jsonGenerator);
            }
            if (sharedLinkMetadata.teamMemberInfo != null) {
                jsonGenerator.writeFieldName("team_member_info");
                StoneSerializers.nullableStruct(TeamMemberInfo.C2964a.f17992b).serialize((StructSerializer) sharedLinkMetadata.teamMemberInfo, jsonGenerator);
            }
            if (sharedLinkMetadata.contentOwnerTeamInfo != null) {
                jsonGenerator.writeFieldName("content_owner_team_info");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize((StructSerializer) sharedLinkMetadata.contentOwnerTeamInfo, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkMetadata(String str, String str2, LinkPermissions linkPermissions, String str3, Date date, String str4, TeamMemberInfo teamMemberInfo, Team team) {
        if (str != null) {
            this.url = str;
            if (str3 != null && str3.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f17981id = str3;
            if (str2 != null) {
                this.name = str2;
                this.expires = LangUtil.truncateMillis(date);
                this.pathLower = str4;
                if (linkPermissions != null) {
                    this.linkPermissions = linkPermissions;
                    this.teamMemberInfo = teamMemberInfo;
                    this.contentOwnerTeamInfo = team;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    public static Builder newBuilder(String str, String str2, LinkPermissions linkPermissions) {
        return new Builder(str, str2, linkPermissions);
    }

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
        SharedLinkMetadata sharedLinkMetadata = (SharedLinkMetadata) obj;
        String str7 = this.url;
        String str8 = sharedLinkMetadata.url;
        if ((str7 == str8 || str7.equals(str8)) && (((str = this.name) == (str2 = sharedLinkMetadata.name) || str.equals(str2)) && (((linkPermissions = this.linkPermissions) == (linkPermissions2 = sharedLinkMetadata.linkPermissions) || linkPermissions.equals(linkPermissions2)) && (((str3 = this.f17981id) == (str4 = sharedLinkMetadata.f17981id) || (str3 != null && str3.equals(str4))) && (((date = this.expires) == (date2 = sharedLinkMetadata.expires) || (date != null && date.equals(date2))) && (((str5 = this.pathLower) == (str6 = sharedLinkMetadata.pathLower) || (str5 != null && str5.equals(str6))) && ((teamMemberInfo = this.teamMemberInfo) == (teamMemberInfo2 = sharedLinkMetadata.teamMemberInfo) || (teamMemberInfo != null && teamMemberInfo.equals(teamMemberInfo2))))))))) {
            Team team = this.contentOwnerTeamInfo;
            Team team2 = sharedLinkMetadata.contentOwnerTeamInfo;
            if (team == team2) {
                return true;
            }
            if (team != null && team.equals(team2)) {
                return true;
            }
        }
        return false;
    }

    public Team getContentOwnerTeamInfo() {
        return this.contentOwnerTeamInfo;
    }

    public Date getExpires() {
        return this.expires;
    }

    public String getId() {
        return this.f17981id;
    }

    public LinkPermissions getLinkPermissions() {
        return this.linkPermissions;
    }

    public String getName() {
        return this.name;
    }

    public String getPathLower() {
        return this.pathLower;
    }

    public TeamMemberInfo getTeamMemberInfo() {
        return this.teamMemberInfo;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.f17981id, this.name, this.expires, this.pathLower, this.linkPermissions, this.teamMemberInfo, this.contentOwnerTeamInfo});
    }

    public String toString() {
        return C2955a.f17983b.serialize((C2955a) this, false);
    }

    public String toStringMultiline() {
        return C2955a.f17983b.serialize((C2955a) this, true);
    }

    public SharedLinkMetadata(String str, String str2, LinkPermissions linkPermissions) {
        this(str, str2, linkPermissions, null, null, null, null, null);
    }
}
