package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.LinkPermissions;
import com.dropbox.core.p006v2.sharing.SharedLinkMetadata;
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
import java.util.regex.Pattern;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class FileLinkMetadata extends SharedLinkMetadata {
    protected final Date clientModified;
    protected final String rev;
    protected final Date serverModified;
    protected final long size;

    /* loaded from: classes4.dex */
    public static class Builder extends SharedLinkMetadata.Builder {
        protected final Date clientModified;
        protected final String rev;
        protected final Date serverModified;
        protected final long size;

        public Builder(String str, String str2, LinkPermissions linkPermissions, Date date, Date date2, String str3, long j) {
            super(str, str2, linkPermissions);
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'clientModified' is null");
            }
            this.clientModified = LangUtil.truncateMillis(date);
            if (date2 == null) {
                throw new IllegalArgumentException("Required value for 'serverModified' is null");
            }
            this.serverModified = LangUtil.truncateMillis(date2);
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            if (str3.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str3)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
            this.rev = str3;
            this.size = j;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public FileLinkMetadata build() {
            return new FileLinkMetadata(this.url, this.name, this.linkPermissions, this.clientModified, this.serverModified, this.rev, this.size, this.f17982id, this.expires, this.pathLower, this.teamMemberInfo, this.contentOwnerTeamInfo);
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

    /* renamed from: com.dropbox.core.v2.sharing.FileLinkMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2818a extends StructSerializer<FileLinkMetadata> {

        /* renamed from: b */
        public static final C2818a f17714b = new C2818a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
        
            if ("file".equals(r2) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.sharing.FileLinkMetadata deserialize(com.fasterxml.jackson.core.JsonParser r18, boolean r19) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 437
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.sharing.FileLinkMetadata.C2818a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.FileLinkMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileLinkMetadata fileLinkMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("file", jsonGenerator);
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileLinkMetadata.url, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileLinkMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            LinkPermissions.C2864a.f17796b.serialize((LinkPermissions.C2864a) fileLinkMetadata.linkPermissions, jsonGenerator);
            jsonGenerator.writeFieldName("client_modified");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) fileLinkMetadata.clientModified, jsonGenerator);
            jsonGenerator.writeFieldName("server_modified");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) fileLinkMetadata.serverModified, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileLinkMetadata.rev, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(fileLinkMetadata.size), jsonGenerator);
            if (fileLinkMetadata.f17981id != null) {
                jsonGenerator.writeFieldName("id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileLinkMetadata.f17981id, jsonGenerator);
            }
            if (fileLinkMetadata.expires != null) {
                jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) fileLinkMetadata.expires, jsonGenerator);
            }
            if (fileLinkMetadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileLinkMetadata.pathLower, jsonGenerator);
            }
            if (fileLinkMetadata.teamMemberInfo != null) {
                jsonGenerator.writeFieldName("team_member_info");
                StoneSerializers.nullableStruct(TeamMemberInfo.C2964a.f17992b).serialize((StructSerializer) fileLinkMetadata.teamMemberInfo, jsonGenerator);
            }
            if (fileLinkMetadata.contentOwnerTeamInfo != null) {
                jsonGenerator.writeFieldName("content_owner_team_info");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize((StructSerializer) fileLinkMetadata.contentOwnerTeamInfo, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileLinkMetadata(String str, String str2, LinkPermissions linkPermissions, Date date, Date date2, String str3, long j, String str4, Date date3, String str5, TeamMemberInfo teamMemberInfo, Team team) {
        super(str, str2, linkPermissions, str4, date3, str5, teamMemberInfo, team);
        if (date != null) {
            this.clientModified = LangUtil.truncateMillis(date);
            if (date2 != null) {
                this.serverModified = LangUtil.truncateMillis(date2);
                if (str3 != null) {
                    if (str3.length() >= 9) {
                        if (Pattern.matches("[0-9a-f]+", str3)) {
                            this.rev = str3;
                            this.size = j;
                            return;
                        }
                        throw new IllegalArgumentException("String 'rev' does not match pattern");
                    }
                    throw new IllegalArgumentException("String 'rev' is shorter than 9");
                }
                throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            throw new IllegalArgumentException("Required value for 'serverModified' is null");
        }
        throw new IllegalArgumentException("Required value for 'clientModified' is null");
    }

    public static Builder newBuilder(String str, String str2, LinkPermissions linkPermissions, Date date, Date date2, String str3, long j) {
        return new Builder(str, str2, linkPermissions, date, date2, str3, j);
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public boolean equals(Object obj) {
        String str;
        String str2;
        LinkPermissions linkPermissions;
        LinkPermissions linkPermissions2;
        Date date;
        Date date2;
        Date date3;
        Date date4;
        String str3;
        String str4;
        String str5;
        String str6;
        Date date5;
        Date date6;
        String str7;
        String str8;
        TeamMemberInfo teamMemberInfo;
        TeamMemberInfo teamMemberInfo2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileLinkMetadata fileLinkMetadata = (FileLinkMetadata) obj;
        String str9 = this.url;
        String str10 = fileLinkMetadata.url;
        if ((str9 == str10 || str9.equals(str10)) && (((str = this.name) == (str2 = fileLinkMetadata.name) || str.equals(str2)) && (((linkPermissions = this.linkPermissions) == (linkPermissions2 = fileLinkMetadata.linkPermissions) || linkPermissions.equals(linkPermissions2)) && (((date = this.clientModified) == (date2 = fileLinkMetadata.clientModified) || date.equals(date2)) && (((date3 = this.serverModified) == (date4 = fileLinkMetadata.serverModified) || date3.equals(date4)) && (((str3 = this.rev) == (str4 = fileLinkMetadata.rev) || str3.equals(str4)) && this.size == fileLinkMetadata.size && (((str5 = this.f17981id) == (str6 = fileLinkMetadata.f17981id) || (str5 != null && str5.equals(str6))) && (((date5 = this.expires) == (date6 = fileLinkMetadata.expires) || (date5 != null && date5.equals(date6))) && (((str7 = this.pathLower) == (str8 = fileLinkMetadata.pathLower) || (str7 != null && str7.equals(str8))) && ((teamMemberInfo = this.teamMemberInfo) == (teamMemberInfo2 = fileLinkMetadata.teamMemberInfo) || (teamMemberInfo != null && teamMemberInfo.equals(teamMemberInfo2)))))))))))) {
            Team team = this.contentOwnerTeamInfo;
            Team team2 = fileLinkMetadata.contentOwnerTeamInfo;
            if (team == team2) {
                return true;
            }
            if (team != null && team.equals(team2)) {
                return true;
            }
        }
        return false;
    }

    public Date getClientModified() {
        return this.clientModified;
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

    public String getRev() {
        return this.rev;
    }

    public Date getServerModified() {
        return this.serverModified;
    }

    public long getSize() {
        return this.size;
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.clientModified, this.serverModified, this.rev, Long.valueOf(this.size)});
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public String toString() {
        return C2818a.f17714b.serialize((C2818a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedLinkMetadata
    public String toStringMultiline() {
        return C2818a.f17714b.serialize((C2818a) this, true);
    }

    public FileLinkMetadata(String str, String str2, LinkPermissions linkPermissions, Date date, Date date2, String str3, long j) {
        this(str, str2, linkPermissions, date, date2, str3, j, null, null, null, null, null);
    }
}
