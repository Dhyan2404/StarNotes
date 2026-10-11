package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.TeamFolderMetadata;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class TeamFolderArchiveLaunch {

    /* renamed from: a */
    public Tag f18484a;

    /* renamed from: b */
    public String f18485b;

    /* renamed from: c */
    public TeamFolderMetadata f18486c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderArchiveLaunch$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3221a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18487a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18487a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18487a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderArchiveLaunch$b */
    /* loaded from: classes4.dex */
    public static class C3222b extends UnionSerializer<TeamFolderArchiveLaunch> {

        /* renamed from: b */
        public static final C3222b f18488b = new C3222b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderArchiveLaunch deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderArchiveLaunch complete;
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
            if ("async_job_id".equals(readTag)) {
                StoneSerializer.expectField("async_job_id", jsonParser);
                complete = TeamFolderArchiveLaunch.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"complete".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                complete = TeamFolderArchiveLaunch.complete(TeamFolderMetadata.C3233a.f18504b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderArchiveLaunch teamFolderArchiveLaunch, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3221a.f18487a[teamFolderArchiveLaunch.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) teamFolderArchiveLaunch.f18485b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + teamFolderArchiveLaunch.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            TeamFolderMetadata.C3233a.f18504b.serialize(teamFolderArchiveLaunch.f18486c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamFolderArchiveLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new TeamFolderArchiveLaunch().m12684d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static TeamFolderArchiveLaunch complete(TeamFolderMetadata teamFolderMetadata) {
        if (teamFolderMetadata != null) {
            return new TeamFolderArchiveLaunch().m12685e(Tag.COMPLETE, teamFolderMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final TeamFolderArchiveLaunch m12683c(Tag tag) {
        TeamFolderArchiveLaunch teamFolderArchiveLaunch = new TeamFolderArchiveLaunch();
        teamFolderArchiveLaunch.f18484a = tag;
        return teamFolderArchiveLaunch;
    }

    /* renamed from: d */
    public final TeamFolderArchiveLaunch m12684d(Tag tag, String str) {
        TeamFolderArchiveLaunch teamFolderArchiveLaunch = new TeamFolderArchiveLaunch();
        teamFolderArchiveLaunch.f18484a = tag;
        teamFolderArchiveLaunch.f18485b = str;
        return teamFolderArchiveLaunch;
    }

    /* renamed from: e */
    public final TeamFolderArchiveLaunch m12685e(Tag tag, TeamFolderMetadata teamFolderMetadata) {
        TeamFolderArchiveLaunch teamFolderArchiveLaunch = new TeamFolderArchiveLaunch();
        teamFolderArchiveLaunch.f18484a = tag;
        teamFolderArchiveLaunch.f18486c = teamFolderMetadata;
        return teamFolderArchiveLaunch;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderArchiveLaunch)) {
            return false;
        }
        TeamFolderArchiveLaunch teamFolderArchiveLaunch = (TeamFolderArchiveLaunch) obj;
        Tag tag = this.f18484a;
        if (tag != teamFolderArchiveLaunch.f18484a) {
            return false;
        }
        int i = C3221a.f18487a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18485b;
            String str2 = teamFolderArchiveLaunch.f18485b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        TeamFolderMetadata teamFolderMetadata = this.f18486c;
        TeamFolderMetadata teamFolderMetadata2 = teamFolderArchiveLaunch.f18486c;
        return teamFolderMetadata == teamFolderMetadata2 || teamFolderMetadata.equals(teamFolderMetadata2);
    }

    public String getAsyncJobIdValue() {
        if (this.f18484a == Tag.ASYNC_JOB_ID) {
            return this.f18485b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f18484a.name());
    }

    public TeamFolderMetadata getCompleteValue() {
        if (this.f18484a == Tag.COMPLETE) {
            return this.f18486c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f18484a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18484a, this.f18485b, this.f18486c});
    }

    public boolean isAsyncJobId() {
        return this.f18484a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f18484a == Tag.COMPLETE;
    }

    public Tag tag() {
        return this.f18484a;
    }

    public String toString() {
        return C3222b.f18488b.serialize((C3222b) this, false);
    }

    public String toStringMultiline() {
        return C3222b.f18488b.serialize((C3222b) this, true);
    }
}
