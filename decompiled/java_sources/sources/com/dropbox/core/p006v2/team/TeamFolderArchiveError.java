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
public final class TeamFolderArchiveError {
    public static final TeamFolderArchiveError OTHER = new TeamFolderArchiveError().m12668d(Tag.OTHER);

    /* renamed from: a */
    public Tag f18473a;

    /* renamed from: b */
    public TeamFolderAccessError f18474b;

    /* renamed from: c */
    public TeamFolderInvalidStatusError f18475c;

    /* renamed from: d */
    public TeamFolderTeamSharedDropboxError f18476d;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderArchiveError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3217a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18477a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18477a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18477a[Tag.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18477a[Tag.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18477a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderArchiveError$b */
    /* loaded from: classes4.dex */
    public static class C3218b extends UnionSerializer<TeamFolderArchiveError> {

        /* renamed from: b */
        public static final C3218b f18478b = new C3218b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderArchiveError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderArchiveError teamFolderArchiveError;
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
                teamFolderArchiveError = TeamFolderArchiveError.accessError(TeamFolderAccessError.C3214b.f18466b.deserialize(jsonParser));
            } else if ("status_error".equals(readTag)) {
                StoneSerializer.expectField("status_error", jsonParser);
                teamFolderArchiveError = TeamFolderArchiveError.statusError(TeamFolderInvalidStatusError.C3228b.f18499b.deserialize(jsonParser));
            } else if ("team_shared_dropbox_error".equals(readTag)) {
                StoneSerializer.expectField("team_shared_dropbox_error", jsonParser);
                teamFolderArchiveError = TeamFolderArchiveError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.C3240b.f18519b.deserialize(jsonParser));
            } else {
                if (!Constants.ATTRVAL_OTHER.equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                teamFolderArchiveError = TeamFolderArchiveError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderArchiveError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderArchiveError teamFolderArchiveError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3217a.f18477a[teamFolderArchiveError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                TeamFolderAccessError.C3214b.f18466b.serialize(teamFolderArchiveError.f18474b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                TeamFolderInvalidStatusError.C3228b.f18499b.serialize(teamFolderArchiveError.f18475c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                TeamFolderTeamSharedDropboxError.C3240b.f18519b.serialize(teamFolderArchiveError.f18476d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + teamFolderArchiveError.tag());
        }
    }

    public static TeamFolderArchiveError accessError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError != null) {
            return new TeamFolderArchiveError().m12669e(Tag.ACCESS_ERROR, teamFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderArchiveError statusError(TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        if (teamFolderInvalidStatusError != null) {
            return new TeamFolderArchiveError().m12670f(Tag.STATUS_ERROR, teamFolderInvalidStatusError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderArchiveError teamSharedDropboxError(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        if (teamFolderTeamSharedDropboxError != null) {
            return new TeamFolderArchiveError().m12671g(Tag.TEAM_SHARED_DROPBOX_ERROR, teamFolderTeamSharedDropboxError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final TeamFolderArchiveError m12668d(Tag tag) {
        TeamFolderArchiveError teamFolderArchiveError = new TeamFolderArchiveError();
        teamFolderArchiveError.f18473a = tag;
        return teamFolderArchiveError;
    }

    /* renamed from: e */
    public final TeamFolderArchiveError m12669e(Tag tag, TeamFolderAccessError teamFolderAccessError) {
        TeamFolderArchiveError teamFolderArchiveError = new TeamFolderArchiveError();
        teamFolderArchiveError.f18473a = tag;
        teamFolderArchiveError.f18474b = teamFolderAccessError;
        return teamFolderArchiveError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderArchiveError)) {
            return false;
        }
        TeamFolderArchiveError teamFolderArchiveError = (TeamFolderArchiveError) obj;
        Tag tag = this.f18473a;
        if (tag != teamFolderArchiveError.f18473a) {
            return false;
        }
        int i = C3217a.f18477a[tag.ordinal()];
        if (i == 1) {
            TeamFolderAccessError teamFolderAccessError = this.f18474b;
            TeamFolderAccessError teamFolderAccessError2 = teamFolderArchiveError.f18474b;
            return teamFolderAccessError == teamFolderAccessError2 || teamFolderAccessError.equals(teamFolderAccessError2);
        }
        if (i == 2) {
            TeamFolderInvalidStatusError teamFolderInvalidStatusError = this.f18475c;
            TeamFolderInvalidStatusError teamFolderInvalidStatusError2 = teamFolderArchiveError.f18475c;
            return teamFolderInvalidStatusError == teamFolderInvalidStatusError2 || teamFolderInvalidStatusError.equals(teamFolderInvalidStatusError2);
        }
        if (i != 3) {
            return i == 4;
        }
        TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError = this.f18476d;
        TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError2 = teamFolderArchiveError.f18476d;
        return teamFolderTeamSharedDropboxError == teamFolderTeamSharedDropboxError2 || teamFolderTeamSharedDropboxError.equals(teamFolderTeamSharedDropboxError2);
    }

    /* renamed from: f */
    public final TeamFolderArchiveError m12670f(Tag tag, TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        TeamFolderArchiveError teamFolderArchiveError = new TeamFolderArchiveError();
        teamFolderArchiveError.f18473a = tag;
        teamFolderArchiveError.f18475c = teamFolderInvalidStatusError;
        return teamFolderArchiveError;
    }

    /* renamed from: g */
    public final TeamFolderArchiveError m12671g(Tag tag, TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        TeamFolderArchiveError teamFolderArchiveError = new TeamFolderArchiveError();
        teamFolderArchiveError.f18473a = tag;
        teamFolderArchiveError.f18476d = teamFolderTeamSharedDropboxError;
        return teamFolderArchiveError;
    }

    public TeamFolderAccessError getAccessErrorValue() {
        if (this.f18473a == Tag.ACCESS_ERROR) {
            return this.f18474b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18473a.name());
    }

    public TeamFolderInvalidStatusError getStatusErrorValue() {
        if (this.f18473a == Tag.STATUS_ERROR) {
            return this.f18475c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.STATUS_ERROR, but was Tag." + this.f18473a.name());
    }

    public TeamFolderTeamSharedDropboxError getTeamSharedDropboxErrorValue() {
        if (this.f18473a == Tag.TEAM_SHARED_DROPBOX_ERROR) {
            return this.f18476d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag." + this.f18473a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18473a, this.f18474b, this.f18475c, this.f18476d});
    }

    public boolean isAccessError() {
        return this.f18473a == Tag.ACCESS_ERROR;
    }

    public boolean isOther() {
        return this.f18473a == Tag.OTHER;
    }

    public boolean isStatusError() {
        return this.f18473a == Tag.STATUS_ERROR;
    }

    public boolean isTeamSharedDropboxError() {
        return this.f18473a == Tag.TEAM_SHARED_DROPBOX_ERROR;
    }

    public Tag tag() {
        return this.f18473a;
    }

    public String toString() {
        return C3218b.f18478b.serialize((C3218b) this, false);
    }

    public String toStringMultiline() {
        return C3218b.f18478b.serialize((C3218b) this, true);
    }
}
