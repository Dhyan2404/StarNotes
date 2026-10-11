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
public final class TeamFolderPermanentlyDeleteError {
    public static final TeamFolderPermanentlyDeleteError OTHER = new TeamFolderPermanentlyDeleteError().m12713d(Tag.OTHER);

    /* renamed from: a */
    public Tag f18505a;

    /* renamed from: b */
    public TeamFolderAccessError f18506b;

    /* renamed from: c */
    public TeamFolderInvalidStatusError f18507c;

    /* renamed from: d */
    public TeamFolderTeamSharedDropboxError f18508d;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderPermanentlyDeleteError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3234a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18509a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18509a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18509a[Tag.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18509a[Tag.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18509a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderPermanentlyDeleteError$b */
    /* loaded from: classes4.dex */
    public static class C3235b extends UnionSerializer<TeamFolderPermanentlyDeleteError> {

        /* renamed from: b */
        public static final C3235b f18510b = new C3235b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderPermanentlyDeleteError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderPermanentlyDeleteError teamFolderPermanentlyDeleteError;
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
                teamFolderPermanentlyDeleteError = TeamFolderPermanentlyDeleteError.accessError(TeamFolderAccessError.C3214b.f18466b.deserialize(jsonParser));
            } else if ("status_error".equals(readTag)) {
                StoneSerializer.expectField("status_error", jsonParser);
                teamFolderPermanentlyDeleteError = TeamFolderPermanentlyDeleteError.statusError(TeamFolderInvalidStatusError.C3228b.f18499b.deserialize(jsonParser));
            } else if ("team_shared_dropbox_error".equals(readTag)) {
                StoneSerializer.expectField("team_shared_dropbox_error", jsonParser);
                teamFolderPermanentlyDeleteError = TeamFolderPermanentlyDeleteError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.C3240b.f18519b.deserialize(jsonParser));
            } else {
                if (!Constants.ATTRVAL_OTHER.equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                teamFolderPermanentlyDeleteError = TeamFolderPermanentlyDeleteError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderPermanentlyDeleteError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderPermanentlyDeleteError teamFolderPermanentlyDeleteError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3234a.f18509a[teamFolderPermanentlyDeleteError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                TeamFolderAccessError.C3214b.f18466b.serialize(teamFolderPermanentlyDeleteError.f18506b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                TeamFolderInvalidStatusError.C3228b.f18499b.serialize(teamFolderPermanentlyDeleteError.f18507c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                TeamFolderTeamSharedDropboxError.C3240b.f18519b.serialize(teamFolderPermanentlyDeleteError.f18508d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + teamFolderPermanentlyDeleteError.tag());
        }
    }

    public static TeamFolderPermanentlyDeleteError accessError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError != null) {
            return new TeamFolderPermanentlyDeleteError().m12714e(Tag.ACCESS_ERROR, teamFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderPermanentlyDeleteError statusError(TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        if (teamFolderInvalidStatusError != null) {
            return new TeamFolderPermanentlyDeleteError().m12715f(Tag.STATUS_ERROR, teamFolderInvalidStatusError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderPermanentlyDeleteError teamSharedDropboxError(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        if (teamFolderTeamSharedDropboxError != null) {
            return new TeamFolderPermanentlyDeleteError().m12716g(Tag.TEAM_SHARED_DROPBOX_ERROR, teamFolderTeamSharedDropboxError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final TeamFolderPermanentlyDeleteError m12713d(Tag tag) {
        TeamFolderPermanentlyDeleteError teamFolderPermanentlyDeleteError = new TeamFolderPermanentlyDeleteError();
        teamFolderPermanentlyDeleteError.f18505a = tag;
        return teamFolderPermanentlyDeleteError;
    }

    /* renamed from: e */
    public final TeamFolderPermanentlyDeleteError m12714e(Tag tag, TeamFolderAccessError teamFolderAccessError) {
        TeamFolderPermanentlyDeleteError teamFolderPermanentlyDeleteError = new TeamFolderPermanentlyDeleteError();
        teamFolderPermanentlyDeleteError.f18505a = tag;
        teamFolderPermanentlyDeleteError.f18506b = teamFolderAccessError;
        return teamFolderPermanentlyDeleteError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderPermanentlyDeleteError)) {
            return false;
        }
        TeamFolderPermanentlyDeleteError teamFolderPermanentlyDeleteError = (TeamFolderPermanentlyDeleteError) obj;
        Tag tag = this.f18505a;
        if (tag != teamFolderPermanentlyDeleteError.f18505a) {
            return false;
        }
        int i = C3234a.f18509a[tag.ordinal()];
        if (i == 1) {
            TeamFolderAccessError teamFolderAccessError = this.f18506b;
            TeamFolderAccessError teamFolderAccessError2 = teamFolderPermanentlyDeleteError.f18506b;
            return teamFolderAccessError == teamFolderAccessError2 || teamFolderAccessError.equals(teamFolderAccessError2);
        }
        if (i == 2) {
            TeamFolderInvalidStatusError teamFolderInvalidStatusError = this.f18507c;
            TeamFolderInvalidStatusError teamFolderInvalidStatusError2 = teamFolderPermanentlyDeleteError.f18507c;
            return teamFolderInvalidStatusError == teamFolderInvalidStatusError2 || teamFolderInvalidStatusError.equals(teamFolderInvalidStatusError2);
        }
        if (i != 3) {
            return i == 4;
        }
        TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError = this.f18508d;
        TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError2 = teamFolderPermanentlyDeleteError.f18508d;
        return teamFolderTeamSharedDropboxError == teamFolderTeamSharedDropboxError2 || teamFolderTeamSharedDropboxError.equals(teamFolderTeamSharedDropboxError2);
    }

    /* renamed from: f */
    public final TeamFolderPermanentlyDeleteError m12715f(Tag tag, TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        TeamFolderPermanentlyDeleteError teamFolderPermanentlyDeleteError = new TeamFolderPermanentlyDeleteError();
        teamFolderPermanentlyDeleteError.f18505a = tag;
        teamFolderPermanentlyDeleteError.f18507c = teamFolderInvalidStatusError;
        return teamFolderPermanentlyDeleteError;
    }

    /* renamed from: g */
    public final TeamFolderPermanentlyDeleteError m12716g(Tag tag, TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        TeamFolderPermanentlyDeleteError teamFolderPermanentlyDeleteError = new TeamFolderPermanentlyDeleteError();
        teamFolderPermanentlyDeleteError.f18505a = tag;
        teamFolderPermanentlyDeleteError.f18508d = teamFolderTeamSharedDropboxError;
        return teamFolderPermanentlyDeleteError;
    }

    public TeamFolderAccessError getAccessErrorValue() {
        if (this.f18505a == Tag.ACCESS_ERROR) {
            return this.f18506b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18505a.name());
    }

    public TeamFolderInvalidStatusError getStatusErrorValue() {
        if (this.f18505a == Tag.STATUS_ERROR) {
            return this.f18507c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.STATUS_ERROR, but was Tag." + this.f18505a.name());
    }

    public TeamFolderTeamSharedDropboxError getTeamSharedDropboxErrorValue() {
        if (this.f18505a == Tag.TEAM_SHARED_DROPBOX_ERROR) {
            return this.f18508d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag." + this.f18505a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18505a, this.f18506b, this.f18507c, this.f18508d});
    }

    public boolean isAccessError() {
        return this.f18505a == Tag.ACCESS_ERROR;
    }

    public boolean isOther() {
        return this.f18505a == Tag.OTHER;
    }

    public boolean isStatusError() {
        return this.f18505a == Tag.STATUS_ERROR;
    }

    public boolean isTeamSharedDropboxError() {
        return this.f18505a == Tag.TEAM_SHARED_DROPBOX_ERROR;
    }

    public Tag tag() {
        return this.f18505a;
    }

    public String toString() {
        return C3235b.f18510b.serialize((C3235b) this, false);
    }

    public String toStringMultiline() {
        return C3235b.f18510b.serialize((C3235b) this, true);
    }
}
