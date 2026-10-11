package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo;
import com.dropbox.core.p006v2.teamlog.PathLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public class FileLogInfo extends FileOrFolderLogInfo {

    /* loaded from: classes4.dex */
    public static class Builder extends FileOrFolderLogInfo.Builder {
        public Builder(PathLogInfo pathLogInfo) {
            super(pathLogInfo);
        }

        @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo.Builder
        public FileLogInfo build() {
            return new FileLogInfo(this.path, this.displayName, this.fileId, this.fileSize);
        }

        @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo.Builder
        public Builder withDisplayName(String str) {
            super.withDisplayName(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo.Builder
        public Builder withFileId(String str) {
            super.withFileId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo.Builder
        public Builder withFileSize(Long l) {
            super.withFileSize(l);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FileLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3566a extends StructSerializer<FileLogInfo> {

        /* renamed from: b */
        public static final C3566a f19825b = new C3566a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PathLogInfo pathLogInfo = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    pathLogInfo = PathLogInfo.C3958a.f20234b.deserialize(jsonParser);
                } else if ("display_name".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("file_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("file_size".equals(currentName)) {
                    l = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (pathLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            FileLogInfo fileLogInfo = new FileLogInfo(pathLogInfo, str2, str3, l);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileLogInfo, fileLogInfo.toStringMultiline());
            return fileLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileLogInfo fileLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            PathLogInfo.C3958a.f20234b.serialize((PathLogInfo.C3958a) fileLogInfo.path, jsonGenerator);
            if (fileLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileLogInfo.displayName, jsonGenerator);
            }
            if (fileLogInfo.fileId != null) {
                jsonGenerator.writeFieldName("file_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileLogInfo.fileId, jsonGenerator);
            }
            if (fileLogInfo.fileSize != null) {
                jsonGenerator.writeFieldName("file_size");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) fileLogInfo.fileSize, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileLogInfo(PathLogInfo pathLogInfo, String str, String str2, Long l) {
        super(pathLogInfo, str, str2, l);
    }

    public static Builder newBuilder(PathLogInfo pathLogInfo) {
        return new Builder(pathLogInfo);
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileLogInfo fileLogInfo = (FileLogInfo) obj;
        PathLogInfo pathLogInfo = this.path;
        PathLogInfo pathLogInfo2 = fileLogInfo.path;
        if ((pathLogInfo == pathLogInfo2 || pathLogInfo.equals(pathLogInfo2)) && (((str = this.displayName) == (str2 = fileLogInfo.displayName) || (str != null && str.equals(str2))) && ((str3 = this.fileId) == (str4 = fileLogInfo.fileId) || (str3 != null && str3.equals(str4))))) {
            Long l = this.fileSize;
            Long l2 = fileLogInfo.fileSize;
            if (l == l2) {
                return true;
            }
            if (l != null && l.equals(l2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public String getFileId() {
        return this.fileId;
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public Long getFileSize() {
        return this.fileSize;
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public PathLogInfo getPath() {
        return this.path;
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public String toString() {
        return C3566a.f19825b.serialize((C3566a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public String toStringMultiline() {
        return C3566a.f19825b.serialize((C3566a) this, true);
    }

    public FileLogInfo(PathLogInfo pathLogInfo) {
        this(pathLogInfo, null, null, null);
    }
}
