package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.TeamFolderAccessError;
import com.dropbox.core.p006v2.team.TeamFolderInvalidStatusError;
import com.dropbox.core.p006v2.team.TeamFolderTeamSharedDropboxError;
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
public final class TeamFolderRenameError {

    /* renamed from: a */
    public Tag f18511a;

    /* renamed from: b */
    public TeamFolderAccessError f18512b;

    /* renamed from: c */
    public TeamFolderInvalidStatusError f18513c;

    /* renamed from: d */
    public TeamFolderTeamSharedDropboxError f18514d;
    public static final TeamFolderRenameError OTHER = new TeamFolderRenameError().m12722d(Tag.OTHER);
    public static final TeamFolderRenameError INVALID_FOLDER_NAME = new TeamFolderRenameError().m12722d(Tag.INVALID_FOLDER_NAME);
    public static final TeamFolderRenameError FOLDER_NAME_ALREADY_USED = new TeamFolderRenameError().m12722d(Tag.FOLDER_NAME_ALREADY_USED);
    public static final TeamFolderRenameError FOLDER_NAME_RESERVED = new TeamFolderRenameError().m12722d(Tag.FOLDER_NAME_RESERVED);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER,
        INVALID_FOLDER_NAME,
        FOLDER_NAME_ALREADY_USED,
        FOLDER_NAME_RESERVED
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderRenameError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3236a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18515a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18515a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18515a[Tag.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18515a[Tag.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18515a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18515a[Tag.INVALID_FOLDER_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18515a[Tag.FOLDER_NAME_ALREADY_USED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18515a[Tag.FOLDER_NAME_RESERVED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderRenameError$b */
    /* loaded from: classes4.dex */
    public static class C3237b extends UnionSerializer<TeamFolderRenameError> {

        /* renamed from: b */
        public static final C3237b f18516b = new C3237b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderRenameError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderRenameError teamFolderRenameError;
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
            if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                teamFolderRenameError = TeamFolderRenameError.accessError(TeamFolderAccessError.C3214b.f18466b.deserialize(jsonParser));
            } else if ("status_error".equals(readTag)) {
                StoneSerializer.expectField("status_error", jsonParser);
                teamFolderRenameError = TeamFolderRenameError.statusError(TeamFolderInvalidStatusError.C3228b.f18499b.deserialize(jsonParser));
            } else if ("team_shared_dropbox_error".equals(readTag)) {
                StoneSerializer.expectField("team_shared_dropbox_error", jsonParser);
                teamFolderRenameError = TeamFolderRenameError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.C3240b.f18519b.deserialize(jsonParser));
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                teamFolderRenameError = TeamFolderRenameError.OTHER;
            } else if ("invalid_folder_name".equals(readTag)) {
                teamFolderRenameError = TeamFolderRenameError.INVALID_FOLDER_NAME;
            } else if ("folder_name_already_used".equals(readTag)) {
                teamFolderRenameError = TeamFolderRenameError.FOLDER_NAME_ALREADY_USED;
            } else {
                if (!"folder_name_reserved".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                teamFolderRenameError = TeamFolderRenameError.FOLDER_NAME_RESERVED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderRenameError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderRenameError teamFolderRenameError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3236a.f18515a[teamFolderRenameError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    TeamFolderAccessError.C3214b.f18466b.serialize(teamFolderRenameError.f18512b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("status_error", jsonGenerator);
                    jsonGenerator.writeFieldName("status_error");
                    TeamFolderInvalidStatusError.C3228b.f18499b.serialize(teamFolderRenameError.f18513c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("team_shared_dropbox_error", jsonGenerator);
                    jsonGenerator.writeFieldName("team_shared_dropbox_error");
                    TeamFolderTeamSharedDropboxError.C3240b.f18519b.serialize(teamFolderRenameError.f18514d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 5:
                    jsonGenerator.writeString("invalid_folder_name");
                    return;
                case 6:
                    jsonGenerator.writeString("folder_name_already_used");
                    return;
                case 7:
                    jsonGenerator.writeString("folder_name_reserved");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + teamFolderRenameError.tag());
            }
        }
    }

    public static TeamFolderRenameError accessError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError != null) {
            return new TeamFolderRenameError().m12723e(Tag.ACCESS_ERROR, teamFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderRenameError statusError(TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        if (teamFolderInvalidStatusError != null) {
            return new TeamFolderRenameError().m12724f(Tag.STATUS_ERROR, teamFolderInvalidStatusError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderRenameError teamSharedDropboxError(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        if (teamFolderTeamSharedDropboxError != null) {
            return new TeamFolderRenameError().m12725g(Tag.TEAM_SHARED_DROPBOX_ERROR, teamFolderTeamSharedDropboxError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final TeamFolderRenameError m12722d(Tag tag) {
        TeamFolderRenameError teamFolderRenameError = new TeamFolderRenameError();
        teamFolderRenameError.f18511a = tag;
        return teamFolderRenameError;
    }

    /* renamed from: e */
    public final TeamFolderRenameError m12723e(Tag tag, TeamFolderAccessError teamFolderAccessError) {
        TeamFolderRenameError teamFolderRenameError = new TeamFolderRenameError();
        teamFolderRenameError.f18511a = tag;
        teamFolderRenameError.f18512b = teamFolderAccessError;
        return teamFolderRenameError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderRenameError)) {
            return false;
        }
        TeamFolderRenameError teamFolderRenameError = (TeamFolderRenameError) obj;
        Tag tag = this.f18511a;
        if (tag != teamFolderRenameError.f18511a) {
            return false;
        }
        switch (C3236a.f18515a[tag.ordinal()]) {
            case 1:
                TeamFolderAccessError teamFolderAccessError = this.f18512b;
                TeamFolderAccessError teamFolderAccessError2 = teamFolderRenameError.f18512b;
                return teamFolderAccessError == teamFolderAccessError2 || teamFolderAccessError.equals(teamFolderAccessError2);
            case 2:
                TeamFolderInvalidStatusError teamFolderInvalidStatusError = this.f18513c;
                TeamFolderInvalidStatusError teamFolderInvalidStatusError2 = teamFolderRenameError.f18513c;
                return teamFolderInvalidStatusError == teamFolderInvalidStatusError2 || teamFolderInvalidStatusError.equals(teamFolderInvalidStatusError2);
            case 3:
                TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError = this.f18514d;
                TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError2 = teamFolderRenameError.f18514d;
                return teamFolderTeamSharedDropboxError == teamFolderTeamSharedDropboxError2 || teamFolderTeamSharedDropboxError.equals(teamFolderTeamSharedDropboxError2);
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final TeamFolderRenameError m12724f(Tag tag, TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        TeamFolderRenameError teamFolderRenameError = new TeamFolderRenameError();
        teamFolderRenameError.f18511a = tag;
        teamFolderRenameError.f18513c = teamFolderInvalidStatusError;
        return teamFolderRenameError;
    }

    /* renamed from: g */
    public final TeamFolderRenameError m12725g(Tag tag, TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        TeamFolderRenameError teamFolderRenameError = new TeamFolderRenameError();
        teamFolderRenameError.f18511a = tag;
        teamFolderRenameError.f18514d = teamFolderTeamSharedDropboxError;
        return teamFolderRenameError;
    }

    public TeamFolderAccessError getAccessErrorValue() {
        if (this.f18511a == Tag.ACCESS_ERROR) {
            return this.f18512b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18511a.name());
    }

    public TeamFolderInvalidStatusError getStatusErrorValue() {
        if (this.f18511a == Tag.STATUS_ERROR) {
            return this.f18513c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.STATUS_ERROR, but was Tag." + this.f18511a.name());
    }

    public TeamFolderTeamSharedDropboxError getTeamSharedDropboxErrorValue() {
        if (this.f18511a == Tag.TEAM_SHARED_DROPBOX_ERROR) {
            return this.f18514d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag." + this.f18511a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18511a, this.f18512b, this.f18513c, this.f18514d});
    }

    public boolean isAccessError() {
        return this.f18511a == Tag.ACCESS_ERROR;
    }

    public boolean isFolderNameAlreadyUsed() {
        return this.f18511a == Tag.FOLDER_NAME_ALREADY_USED;
    }

    public boolean isFolderNameReserved() {
        return this.f18511a == Tag.FOLDER_NAME_RESERVED;
    }

    public boolean isInvalidFolderName() {
        return this.f18511a == Tag.INVALID_FOLDER_NAME;
    }

    public boolean isOther() {
        return this.f18511a == Tag.OTHER;
    }

    public boolean isStatusError() {
        return this.f18511a == Tag.STATUS_ERROR;
    }

    public boolean isTeamSharedDropboxError() {
        return this.f18511a == Tag.TEAM_SHARED_DROPBOX_ERROR;
    }

    public Tag tag() {
        return this.f18511a;
    }

    public String toString() {
        return C3237b.f18516b.serialize((C3237b) this, false);
    }

    public String toStringMultiline() {
        return C3237b.f18516b.serialize((C3237b) this, true);
    }
}
