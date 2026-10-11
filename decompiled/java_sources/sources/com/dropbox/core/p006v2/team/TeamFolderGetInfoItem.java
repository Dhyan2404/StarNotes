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
public final class TeamFolderGetInfoItem {

    /* renamed from: a */
    public Tag f18493a;

    /* renamed from: b */
    public String f18494b;

    /* renamed from: c */
    public TeamFolderMetadata f18495c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ID_NOT_FOUND,
        TEAM_FOLDER_METADATA
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderGetInfoItem$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3225a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18496a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18496a = iArr;
            try {
                iArr[Tag.ID_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18496a[Tag.TEAM_FOLDER_METADATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderGetInfoItem$b */
    /* loaded from: classes4.dex */
    public static class C3226b extends UnionSerializer<TeamFolderGetInfoItem> {

        /* renamed from: b */
        public static final C3226b f18497b = new C3226b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderGetInfoItem deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderGetInfoItem teamFolderMetadata;
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
            if ("id_not_found".equals(readTag)) {
                StoneSerializer.expectField("id_not_found", jsonParser);
                teamFolderMetadata = TeamFolderGetInfoItem.idNotFound(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"team_folder_metadata".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                teamFolderMetadata = TeamFolderGetInfoItem.teamFolderMetadata(TeamFolderMetadata.C3233a.f18504b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderMetadata;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderGetInfoItem teamFolderGetInfoItem, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3225a.f18496a[teamFolderGetInfoItem.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("id_not_found", jsonGenerator);
                jsonGenerator.writeFieldName("id_not_found");
                StoneSerializers.string().serialize((StoneSerializer<String>) teamFolderGetInfoItem.f18494b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + teamFolderGetInfoItem.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("team_folder_metadata", jsonGenerator);
            TeamFolderMetadata.C3233a.f18504b.serialize(teamFolderGetInfoItem.f18495c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamFolderGetInfoItem idNotFound(String str) {
        if (str != null) {
            return new TeamFolderGetInfoItem().m12696d(Tag.ID_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderGetInfoItem teamFolderMetadata(TeamFolderMetadata teamFolderMetadata) {
        if (teamFolderMetadata != null) {
            return new TeamFolderGetInfoItem().m12697e(Tag.TEAM_FOLDER_METADATA, teamFolderMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final TeamFolderGetInfoItem m12695c(Tag tag) {
        TeamFolderGetInfoItem teamFolderGetInfoItem = new TeamFolderGetInfoItem();
        teamFolderGetInfoItem.f18493a = tag;
        return teamFolderGetInfoItem;
    }

    /* renamed from: d */
    public final TeamFolderGetInfoItem m12696d(Tag tag, String str) {
        TeamFolderGetInfoItem teamFolderGetInfoItem = new TeamFolderGetInfoItem();
        teamFolderGetInfoItem.f18493a = tag;
        teamFolderGetInfoItem.f18494b = str;
        return teamFolderGetInfoItem;
    }

    /* renamed from: e */
    public final TeamFolderGetInfoItem m12697e(Tag tag, TeamFolderMetadata teamFolderMetadata) {
        TeamFolderGetInfoItem teamFolderGetInfoItem = new TeamFolderGetInfoItem();
        teamFolderGetInfoItem.f18493a = tag;
        teamFolderGetInfoItem.f18495c = teamFolderMetadata;
        return teamFolderGetInfoItem;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderGetInfoItem)) {
            return false;
        }
        TeamFolderGetInfoItem teamFolderGetInfoItem = (TeamFolderGetInfoItem) obj;
        Tag tag = this.f18493a;
        if (tag != teamFolderGetInfoItem.f18493a) {
            return false;
        }
        int i = C3225a.f18496a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18494b;
            String str2 = teamFolderGetInfoItem.f18494b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        TeamFolderMetadata teamFolderMetadata = this.f18495c;
        TeamFolderMetadata teamFolderMetadata2 = teamFolderGetInfoItem.f18495c;
        return teamFolderMetadata == teamFolderMetadata2 || teamFolderMetadata.equals(teamFolderMetadata2);
    }

    public String getIdNotFoundValue() {
        if (this.f18493a == Tag.ID_NOT_FOUND) {
            return this.f18494b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ID_NOT_FOUND, but was Tag." + this.f18493a.name());
    }

    public TeamFolderMetadata getTeamFolderMetadataValue() {
        if (this.f18493a == Tag.TEAM_FOLDER_METADATA) {
            return this.f18495c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_METADATA, but was Tag." + this.f18493a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18493a, this.f18494b, this.f18495c});
    }

    public boolean isIdNotFound() {
        return this.f18493a == Tag.ID_NOT_FOUND;
    }

    public boolean isTeamFolderMetadata() {
        return this.f18493a == Tag.TEAM_FOLDER_METADATA;
    }

    public Tag tag() {
        return this.f18493a;
    }

    public String toString() {
        return C3226b.f18497b.serialize((C3226b) this, false);
    }

    public String toStringMultiline() {
        return C3226b.f18497b.serialize((C3226b) this, true);
    }
}
