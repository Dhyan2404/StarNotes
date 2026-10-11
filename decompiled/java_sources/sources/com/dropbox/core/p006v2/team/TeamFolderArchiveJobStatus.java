package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.TeamFolderArchiveError;
import com.dropbox.core.p006v2.team.TeamFolderMetadata;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class TeamFolderArchiveJobStatus {
    public static final TeamFolderArchiveJobStatus IN_PROGRESS = new TeamFolderArchiveJobStatus().m12676c(Tag.IN_PROGRESS);

    /* renamed from: a */
    public Tag f18479a;

    /* renamed from: b */
    public TeamFolderMetadata f18480b;

    /* renamed from: c */
    public TeamFolderArchiveError f18481c;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderArchiveJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3219a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18482a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18482a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18482a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18482a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderArchiveJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C3220b extends UnionSerializer<TeamFolderArchiveJobStatus> {

        /* renamed from: b */
        public static final C3220b f18483b = new C3220b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderArchiveJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderArchiveJobStatus failed;
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
            if ("in_progress".equals(readTag)) {
                failed = TeamFolderArchiveJobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                failed = TeamFolderArchiveJobStatus.complete(TeamFolderMetadata.C3233a.f18504b.deserialize(jsonParser, true));
            } else {
                if (!"failed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failed", jsonParser);
                failed = TeamFolderArchiveJobStatus.failed(TeamFolderArchiveError.C3218b.f18478b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderArchiveJobStatus teamFolderArchiveJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3219a.f18482a[teamFolderArchiveJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("complete", jsonGenerator);
                TeamFolderMetadata.C3233a.f18504b.serialize(teamFolderArchiveJobStatus.f18480b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + teamFolderArchiveJobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failed", jsonGenerator);
            jsonGenerator.writeFieldName("failed");
            TeamFolderArchiveError.C3218b.f18478b.serialize(teamFolderArchiveJobStatus.f18481c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamFolderArchiveJobStatus complete(TeamFolderMetadata teamFolderMetadata) {
        if (teamFolderMetadata != null) {
            return new TeamFolderArchiveJobStatus().m12677d(Tag.COMPLETE, teamFolderMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderArchiveJobStatus failed(TeamFolderArchiveError teamFolderArchiveError) {
        if (teamFolderArchiveError != null) {
            return new TeamFolderArchiveJobStatus().m12678e(Tag.FAILED, teamFolderArchiveError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final TeamFolderArchiveJobStatus m12676c(Tag tag) {
        TeamFolderArchiveJobStatus teamFolderArchiveJobStatus = new TeamFolderArchiveJobStatus();
        teamFolderArchiveJobStatus.f18479a = tag;
        return teamFolderArchiveJobStatus;
    }

    /* renamed from: d */
    public final TeamFolderArchiveJobStatus m12677d(Tag tag, TeamFolderMetadata teamFolderMetadata) {
        TeamFolderArchiveJobStatus teamFolderArchiveJobStatus = new TeamFolderArchiveJobStatus();
        teamFolderArchiveJobStatus.f18479a = tag;
        teamFolderArchiveJobStatus.f18480b = teamFolderMetadata;
        return teamFolderArchiveJobStatus;
    }

    /* renamed from: e */
    public final TeamFolderArchiveJobStatus m12678e(Tag tag, TeamFolderArchiveError teamFolderArchiveError) {
        TeamFolderArchiveJobStatus teamFolderArchiveJobStatus = new TeamFolderArchiveJobStatus();
        teamFolderArchiveJobStatus.f18479a = tag;
        teamFolderArchiveJobStatus.f18481c = teamFolderArchiveError;
        return teamFolderArchiveJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderArchiveJobStatus)) {
            return false;
        }
        TeamFolderArchiveJobStatus teamFolderArchiveJobStatus = (TeamFolderArchiveJobStatus) obj;
        Tag tag = this.f18479a;
        if (tag != teamFolderArchiveJobStatus.f18479a) {
            return false;
        }
        int i = C3219a.f18482a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            TeamFolderMetadata teamFolderMetadata = this.f18480b;
            TeamFolderMetadata teamFolderMetadata2 = teamFolderArchiveJobStatus.f18480b;
            return teamFolderMetadata == teamFolderMetadata2 || teamFolderMetadata.equals(teamFolderMetadata2);
        }
        if (i != 3) {
            return false;
        }
        TeamFolderArchiveError teamFolderArchiveError = this.f18481c;
        TeamFolderArchiveError teamFolderArchiveError2 = teamFolderArchiveJobStatus.f18481c;
        return teamFolderArchiveError == teamFolderArchiveError2 || teamFolderArchiveError.equals(teamFolderArchiveError2);
    }

    public TeamFolderMetadata getCompleteValue() {
        if (this.f18479a == Tag.COMPLETE) {
            return this.f18480b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f18479a.name());
    }

    public TeamFolderArchiveError getFailedValue() {
        if (this.f18479a == Tag.FAILED) {
            return this.f18481c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f18479a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18479a, this.f18480b, this.f18481c});
    }

    public boolean isComplete() {
        return this.f18479a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f18479a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f18479a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f18479a;
    }

    public String toString() {
        return C3220b.f18483b.serialize((C3220b) this, false);
    }

    public String toStringMultiline() {
        return C3220b.f18483b.serialize((C3220b) this, true);
    }
}
