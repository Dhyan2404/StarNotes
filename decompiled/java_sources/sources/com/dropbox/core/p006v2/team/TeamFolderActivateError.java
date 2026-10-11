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
public final class TeamFolderActivateError {
    public static final TeamFolderActivateError OTHER = new TeamFolderActivateError().m12659d(Tag.OTHER);

    /* renamed from: a */
    public Tag f18467a;

    /* renamed from: b */
    public TeamFolderAccessError f18468b;

    /* renamed from: c */
    public TeamFolderInvalidStatusError f18469c;

    /* renamed from: d */
    public TeamFolderTeamSharedDropboxError f18470d;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderActivateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3215a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18471a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18471a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18471a[Tag.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18471a[Tag.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18471a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderActivateError$b */
    /* loaded from: classes4.dex */
    public static class C3216b extends UnionSerializer<TeamFolderActivateError> {

        /* renamed from: b */
        public static final C3216b f18472b = new C3216b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderActivateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderActivateError teamFolderActivateError;
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
                teamFolderActivateError = TeamFolderActivateError.accessError(TeamFolderAccessError.C3214b.f18466b.deserialize(jsonParser));
            } else if ("status_error".equals(readTag)) {
                StoneSerializer.expectField("status_error", jsonParser);
                teamFolderActivateError = TeamFolderActivateError.statusError(TeamFolderInvalidStatusError.C3228b.f18499b.deserialize(jsonParser));
            } else if ("team_shared_dropbox_error".equals(readTag)) {
                StoneSerializer.expectField("team_shared_dropbox_error", jsonParser);
                teamFolderActivateError = TeamFolderActivateError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.C3240b.f18519b.deserialize(jsonParser));
            } else {
                if (!Constants.ATTRVAL_OTHER.equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                teamFolderActivateError = TeamFolderActivateError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderActivateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderActivateError teamFolderActivateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3215a.f18471a[teamFolderActivateError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                TeamFolderAccessError.C3214b.f18466b.serialize(teamFolderActivateError.f18468b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                TeamFolderInvalidStatusError.C3228b.f18499b.serialize(teamFolderActivateError.f18469c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                TeamFolderTeamSharedDropboxError.C3240b.f18519b.serialize(teamFolderActivateError.f18470d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + teamFolderActivateError.tag());
        }
    }

    public static TeamFolderActivateError accessError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError != null) {
            return new TeamFolderActivateError().m12660e(Tag.ACCESS_ERROR, teamFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderActivateError statusError(TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        if (teamFolderInvalidStatusError != null) {
            return new TeamFolderActivateError().m12661f(Tag.STATUS_ERROR, teamFolderInvalidStatusError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderActivateError teamSharedDropboxError(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        if (teamFolderTeamSharedDropboxError != null) {
            return new TeamFolderActivateError().m12662g(Tag.TEAM_SHARED_DROPBOX_ERROR, teamFolderTeamSharedDropboxError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final TeamFolderActivateError m12659d(Tag tag) {
        TeamFolderActivateError teamFolderActivateError = new TeamFolderActivateError();
        teamFolderActivateError.f18467a = tag;
        return teamFolderActivateError;
    }

    /* renamed from: e */
    public final TeamFolderActivateError m12660e(Tag tag, TeamFolderAccessError teamFolderAccessError) {
        TeamFolderActivateError teamFolderActivateError = new TeamFolderActivateError();
        teamFolderActivateError.f18467a = tag;
        teamFolderActivateError.f18468b = teamFolderAccessError;
        return teamFolderActivateError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderActivateError)) {
            return false;
        }
        TeamFolderActivateError teamFolderActivateError = (TeamFolderActivateError) obj;
        Tag tag = this.f18467a;
        if (tag != teamFolderActivateError.f18467a) {
            return false;
        }
        int i = C3215a.f18471a[tag.ordinal()];
        if (i == 1) {
            TeamFolderAccessError teamFolderAccessError = this.f18468b;
            TeamFolderAccessError teamFolderAccessError2 = teamFolderActivateError.f18468b;
            return teamFolderAccessError == teamFolderAccessError2 || teamFolderAccessError.equals(teamFolderAccessError2);
        }
        if (i == 2) {
            TeamFolderInvalidStatusError teamFolderInvalidStatusError = this.f18469c;
            TeamFolderInvalidStatusError teamFolderInvalidStatusError2 = teamFolderActivateError.f18469c;
            return teamFolderInvalidStatusError == teamFolderInvalidStatusError2 || teamFolderInvalidStatusError.equals(teamFolderInvalidStatusError2);
        }
        if (i != 3) {
            return i == 4;
        }
        TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError = this.f18470d;
        TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError2 = teamFolderActivateError.f18470d;
        return teamFolderTeamSharedDropboxError == teamFolderTeamSharedDropboxError2 || teamFolderTeamSharedDropboxError.equals(teamFolderTeamSharedDropboxError2);
    }

    /* renamed from: f */
    public final TeamFolderActivateError m12661f(Tag tag, TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        TeamFolderActivateError teamFolderActivateError = new TeamFolderActivateError();
        teamFolderActivateError.f18467a = tag;
        teamFolderActivateError.f18469c = teamFolderInvalidStatusError;
        return teamFolderActivateError;
    }

    /* renamed from: g */
    public final TeamFolderActivateError m12662g(Tag tag, TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        TeamFolderActivateError teamFolderActivateError = new TeamFolderActivateError();
        teamFolderActivateError.f18467a = tag;
        teamFolderActivateError.f18470d = teamFolderTeamSharedDropboxError;
        return teamFolderActivateError;
    }

    public TeamFolderAccessError getAccessErrorValue() {
        if (this.f18467a == Tag.ACCESS_ERROR) {
            return this.f18468b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18467a.name());
    }

    public TeamFolderInvalidStatusError getStatusErrorValue() {
        if (this.f18467a == Tag.STATUS_ERROR) {
            return this.f18469c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.STATUS_ERROR, but was Tag." + this.f18467a.name());
    }

    public TeamFolderTeamSharedDropboxError getTeamSharedDropboxErrorValue() {
        if (this.f18467a == Tag.TEAM_SHARED_DROPBOX_ERROR) {
            return this.f18470d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag." + this.f18467a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18467a, this.f18468b, this.f18469c, this.f18470d});
    }

    public boolean isAccessError() {
        return this.f18467a == Tag.ACCESS_ERROR;
    }

    public boolean isOther() {
        return this.f18467a == Tag.OTHER;
    }

    public boolean isStatusError() {
        return this.f18467a == Tag.STATUS_ERROR;
    }

    public boolean isTeamSharedDropboxError() {
        return this.f18467a == Tag.TEAM_SHARED_DROPBOX_ERROR;
    }

    public Tag tag() {
        return this.f18467a;
    }

    public String toString() {
        return C3216b.f18472b.serialize((C3216b) this, false);
    }

    public String toStringMultiline() {
        return C3216b.f18472b.serialize((C3216b) this, true);
    }
}
