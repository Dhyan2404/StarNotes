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
import java.util.Arrays;

/* loaded from: classes4.dex */
public class FolderLogInfo extends FileOrFolderLogInfo {
    protected final Long fileCount;

    /* loaded from: classes4.dex */
    public static class Builder extends FileOrFolderLogInfo.Builder {
        protected Long fileCount;

        public Builder(PathLogInfo pathLogInfo) {
            super(pathLogInfo);
            this.fileCount = null;
        }

        public Builder withFileCount(Long l) {
            this.fileCount = l;
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo.Builder
        public FolderLogInfo build() {
            return new FolderLogInfo(this.path, this.displayName, this.fileId, this.fileSize, this.fileCount);
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

    /* renamed from: com.dropbox.core.v2.teamlog.FolderLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3624a extends StructSerializer<FolderLogInfo> {

        /* renamed from: b */
        public static final C3624a f19883b = new C3624a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FolderLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PathLogInfo pathLogInfo = null;
            String str2 = null;
            String str3 = null;
            Long l = null;
            Long l2 = null;
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
                } else if ("file_count".equals(currentName)) {
                    l2 = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (pathLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            FolderLogInfo folderLogInfo = new FolderLogInfo(pathLogInfo, str2, str3, l, l2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(folderLogInfo, folderLogInfo.toStringMultiline());
            return folderLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderLogInfo folderLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            PathLogInfo.C3958a.f20234b.serialize((PathLogInfo.C3958a) folderLogInfo.path, jsonGenerator);
            if (folderLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderLogInfo.displayName, jsonGenerator);
            }
            if (folderLogInfo.fileId != null) {
                jsonGenerator.writeFieldName("file_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderLogInfo.fileId, jsonGenerator);
            }
            if (folderLogInfo.fileSize != null) {
                jsonGenerator.writeFieldName("file_size");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) folderLogInfo.fileSize, jsonGenerator);
            }
            if (folderLogInfo.fileCount != null) {
                jsonGenerator.writeFieldName("file_count");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) folderLogInfo.fileCount, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FolderLogInfo(PathLogInfo pathLogInfo, String str, String str2, Long l, Long l2) {
        super(pathLogInfo, str, str2, l);
        this.fileCount = l2;
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
        Long l;
        Long l2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FolderLogInfo folderLogInfo = (FolderLogInfo) obj;
        PathLogInfo pathLogInfo = this.path;
        PathLogInfo pathLogInfo2 = folderLogInfo.path;
        if ((pathLogInfo == pathLogInfo2 || pathLogInfo.equals(pathLogInfo2)) && (((str = this.displayName) == (str2 = folderLogInfo.displayName) || (str != null && str.equals(str2))) && (((str3 = this.fileId) == (str4 = folderLogInfo.fileId) || (str3 != null && str3.equals(str4))) && ((l = this.fileSize) == (l2 = folderLogInfo.fileSize) || (l != null && l.equals(l2)))))) {
            Long l3 = this.fileCount;
            Long l4 = folderLogInfo.fileCount;
            if (l3 == l4) {
                return true;
            }
            if (l3 != null && l3.equals(l4)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public String getDisplayName() {
        return this.displayName;
    }

    public Long getFileCount() {
        return this.fileCount;
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.fileCount});
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public String toString() {
        return C3624a.f19883b.serialize((C3624a) this, false);
    }

    @Override // com.dropbox.core.p006v2.teamlog.FileOrFolderLogInfo
    public String toStringMultiline() {
        return C3624a.f19883b.serialize((C3624a) this, true);
    }

    public FolderLogInfo(PathLogInfo pathLogInfo) {
        this(pathLogInfo, null, null, null, null);
    }
}
