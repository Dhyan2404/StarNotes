package com.dropbox.core.p006v2.teamlog;

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
public class FileOrFolderLogInfo {
    protected final String displayName;
    protected final String fileId;
    protected final Long fileSize;
    protected final PathLogInfo path;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String displayName;
        protected String fileId;
        protected Long fileSize;
        protected final PathLogInfo path;

        public Builder(PathLogInfo pathLogInfo) {
            if (pathLogInfo == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            this.path = pathLogInfo;
            this.displayName = null;
            this.fileId = null;
            this.fileSize = null;
        }

        public FileOrFolderLogInfo build() {
            return new FileOrFolderLogInfo(this.path, this.displayName, this.fileId, this.fileSize);
        }

        public Builder withDisplayName(String str) {
            this.displayName = str;
            return this;
        }

        public Builder withFileId(String str) {
            this.fileId = str;
            return this;
        }

        public Builder withFileSize(Long l) {
            this.fileSize = l;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FileOrFolderLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3569a extends StructSerializer<FileOrFolderLogInfo> {

        /* renamed from: b */
        public static final C3569a f19828b = new C3569a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileOrFolderLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            FileOrFolderLogInfo fileOrFolderLogInfo = new FileOrFolderLogInfo(pathLogInfo, str2, str3, l);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileOrFolderLogInfo, fileOrFolderLogInfo.toStringMultiline());
            return fileOrFolderLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileOrFolderLogInfo fileOrFolderLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            PathLogInfo.C3958a.f20234b.serialize((PathLogInfo.C3958a) fileOrFolderLogInfo.path, jsonGenerator);
            if (fileOrFolderLogInfo.displayName != null) {
                jsonGenerator.writeFieldName("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileOrFolderLogInfo.displayName, jsonGenerator);
            }
            if (fileOrFolderLogInfo.fileId != null) {
                jsonGenerator.writeFieldName("file_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileOrFolderLogInfo.fileId, jsonGenerator);
            }
            if (fileOrFolderLogInfo.fileSize != null) {
                jsonGenerator.writeFieldName("file_size");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) fileOrFolderLogInfo.fileSize, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileOrFolderLogInfo(PathLogInfo pathLogInfo, String str, String str2, Long l) {
        if (pathLogInfo != null) {
            this.path = pathLogInfo;
            this.displayName = str;
            this.fileId = str2;
            this.fileSize = l;
            return;
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    public static Builder newBuilder(PathLogInfo pathLogInfo) {
        return new Builder(pathLogInfo);
    }

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
        FileOrFolderLogInfo fileOrFolderLogInfo = (FileOrFolderLogInfo) obj;
        PathLogInfo pathLogInfo = this.path;
        PathLogInfo pathLogInfo2 = fileOrFolderLogInfo.path;
        if ((pathLogInfo == pathLogInfo2 || pathLogInfo.equals(pathLogInfo2)) && (((str = this.displayName) == (str2 = fileOrFolderLogInfo.displayName) || (str != null && str.equals(str2))) && ((str3 = this.fileId) == (str4 = fileOrFolderLogInfo.fileId) || (str3 != null && str3.equals(str4))))) {
            Long l = this.fileSize;
            Long l2 = fileOrFolderLogInfo.fileSize;
            if (l == l2) {
                return true;
            }
            if (l != null && l.equals(l2)) {
                return true;
            }
        }
        return false;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getFileId() {
        return this.fileId;
    }

    public Long getFileSize() {
        return this.fileSize;
    }

    public PathLogInfo getPath() {
        return this.path;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.displayName, this.fileId, this.fileSize});
    }

    public String toString() {
        return C3569a.f19828b.serialize((C3569a) this, false);
    }

    public String toStringMultiline() {
        return C3569a.f19828b.serialize((C3569a) this, true);
    }

    public FileOrFolderLogInfo(PathLogInfo pathLogInfo) {
        this(pathLogInfo, null, null, null);
    }
}
