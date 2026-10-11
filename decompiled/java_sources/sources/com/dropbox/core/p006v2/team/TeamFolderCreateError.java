package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.files.SyncSettingsError;
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
public final class TeamFolderCreateError {

    /* renamed from: a */
    public Tag f18489a;

    /* renamed from: b */
    public SyncSettingsError f18490b;
    public static final TeamFolderCreateError INVALID_FOLDER_NAME = new TeamFolderCreateError().m12689b(Tag.INVALID_FOLDER_NAME);
    public static final TeamFolderCreateError FOLDER_NAME_ALREADY_USED = new TeamFolderCreateError().m12689b(Tag.FOLDER_NAME_ALREADY_USED);
    public static final TeamFolderCreateError FOLDER_NAME_RESERVED = new TeamFolderCreateError().m12689b(Tag.FOLDER_NAME_RESERVED);
    public static final TeamFolderCreateError OTHER = new TeamFolderCreateError().m12689b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        INVALID_FOLDER_NAME,
        FOLDER_NAME_ALREADY_USED,
        FOLDER_NAME_RESERVED,
        SYNC_SETTINGS_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderCreateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3223a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18491a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18491a = iArr;
            try {
                iArr[Tag.INVALID_FOLDER_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18491a[Tag.FOLDER_NAME_ALREADY_USED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18491a[Tag.FOLDER_NAME_RESERVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18491a[Tag.SYNC_SETTINGS_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18491a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderCreateError$b */
    /* loaded from: classes4.dex */
    public static class C3224b extends UnionSerializer<TeamFolderCreateError> {

        /* renamed from: b */
        public static final C3224b f18492b = new C3224b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderCreateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderCreateError teamFolderCreateError;
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
            if ("invalid_folder_name".equals(readTag)) {
                teamFolderCreateError = TeamFolderCreateError.INVALID_FOLDER_NAME;
            } else if ("folder_name_already_used".equals(readTag)) {
                teamFolderCreateError = TeamFolderCreateError.FOLDER_NAME_ALREADY_USED;
            } else if ("folder_name_reserved".equals(readTag)) {
                teamFolderCreateError = TeamFolderCreateError.FOLDER_NAME_RESERVED;
            } else if ("sync_settings_error".equals(readTag)) {
                StoneSerializer.expectField("sync_settings_error", jsonParser);
                teamFolderCreateError = TeamFolderCreateError.syncSettingsError(SyncSettingsError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                teamFolderCreateError = TeamFolderCreateError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderCreateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderCreateError teamFolderCreateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3223a.f18491a[teamFolderCreateError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_folder_name");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("folder_name_already_used");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("folder_name_reserved");
                return;
            }
            if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("sync_settings_error", jsonGenerator);
            jsonGenerator.writeFieldName("sync_settings_error");
            SyncSettingsError.Serializer.INSTANCE.serialize(teamFolderCreateError.f18490b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamFolderCreateError syncSettingsError(SyncSettingsError syncSettingsError) {
        if (syncSettingsError != null) {
            return new TeamFolderCreateError().m12690c(Tag.SYNC_SETTINGS_ERROR, syncSettingsError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final TeamFolderCreateError m12689b(Tag tag) {
        TeamFolderCreateError teamFolderCreateError = new TeamFolderCreateError();
        teamFolderCreateError.f18489a = tag;
        return teamFolderCreateError;
    }

    /* renamed from: c */
    public final TeamFolderCreateError m12690c(Tag tag, SyncSettingsError syncSettingsError) {
        TeamFolderCreateError teamFolderCreateError = new TeamFolderCreateError();
        teamFolderCreateError.f18489a = tag;
        teamFolderCreateError.f18490b = syncSettingsError;
        return teamFolderCreateError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderCreateError)) {
            return false;
        }
        TeamFolderCreateError teamFolderCreateError = (TeamFolderCreateError) obj;
        Tag tag = this.f18489a;
        if (tag != teamFolderCreateError.f18489a) {
            return false;
        }
        int i = C3223a.f18491a[tag.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return i == 5;
        }
        SyncSettingsError syncSettingsError = this.f18490b;
        SyncSettingsError syncSettingsError2 = teamFolderCreateError.f18490b;
        return syncSettingsError == syncSettingsError2 || syncSettingsError.equals(syncSettingsError2);
    }

    public SyncSettingsError getSyncSettingsErrorValue() {
        if (this.f18489a == Tag.SYNC_SETTINGS_ERROR) {
            return this.f18490b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SYNC_SETTINGS_ERROR, but was Tag." + this.f18489a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18489a, this.f18490b});
    }

    public boolean isFolderNameAlreadyUsed() {
        return this.f18489a == Tag.FOLDER_NAME_ALREADY_USED;
    }

    public boolean isFolderNameReserved() {
        return this.f18489a == Tag.FOLDER_NAME_RESERVED;
    }

    public boolean isInvalidFolderName() {
        return this.f18489a == Tag.INVALID_FOLDER_NAME;
    }

    public boolean isOther() {
        return this.f18489a == Tag.OTHER;
    }

    public boolean isSyncSettingsError() {
        return this.f18489a == Tag.SYNC_SETTINGS_ERROR;
    }

    public Tag tag() {
        return this.f18489a;
    }

    public String toString() {
        return C3224b.f18492b.serialize((C3224b) this, false);
    }

    public String toStringMultiline() {
        return C3224b.f18492b.serialize((C3224b) this, true);
    }
}
