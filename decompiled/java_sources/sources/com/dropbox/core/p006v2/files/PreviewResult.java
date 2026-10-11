package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.MinimalFileLinkMetadata;
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
public class PreviewResult {
    protected final FileMetadata fileMetadata;
    protected final MinimalFileLinkMetadata linkMetadata;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected FileMetadata fileMetadata = null;
        protected MinimalFileLinkMetadata linkMetadata = null;

        public PreviewResult build() {
            return new PreviewResult(this.fileMetadata, this.linkMetadata);
        }

        public Builder withFileMetadata(FileMetadata fileMetadata) {
            this.fileMetadata = fileMetadata;
            return this;
        }

        public Builder withLinkMetadata(MinimalFileLinkMetadata minimalFileLinkMetadata) {
            this.linkMetadata = minimalFileLinkMetadata;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.PreviewResult$a */
    /* loaded from: classes4.dex */
    public static class C2608a extends StructSerializer<PreviewResult> {

        /* renamed from: b */
        public static final C2608a f17294b = new C2608a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PreviewResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileMetadata fileMetadata = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            MinimalFileLinkMetadata minimalFileLinkMetadata = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file_metadata".equals(currentName)) {
                    fileMetadata = (FileMetadata) StoneSerializers.nullableStruct(FileMetadata.C2543a.f17151b).deserialize(jsonParser);
                } else if ("link_metadata".equals(currentName)) {
                    minimalFileLinkMetadata = (MinimalFileLinkMetadata) StoneSerializers.nullableStruct(MinimalFileLinkMetadata.C2599a.f17271b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            PreviewResult previewResult = new PreviewResult(fileMetadata, minimalFileLinkMetadata);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(previewResult, previewResult.toStringMultiline());
            return previewResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PreviewResult previewResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (previewResult.fileMetadata != null) {
                jsonGenerator.writeFieldName("file_metadata");
                StoneSerializers.nullableStruct(FileMetadata.C2543a.f17151b).serialize((StructSerializer) previewResult.fileMetadata, jsonGenerator);
            }
            if (previewResult.linkMetadata != null) {
                jsonGenerator.writeFieldName("link_metadata");
                StoneSerializers.nullableStruct(MinimalFileLinkMetadata.C2599a.f17271b).serialize((StructSerializer) previewResult.linkMetadata, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PreviewResult(FileMetadata fileMetadata, MinimalFileLinkMetadata minimalFileLinkMetadata) {
        this.fileMetadata = fileMetadata;
        this.linkMetadata = minimalFileLinkMetadata;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PreviewResult previewResult = (PreviewResult) obj;
        FileMetadata fileMetadata = this.fileMetadata;
        FileMetadata fileMetadata2 = previewResult.fileMetadata;
        if (fileMetadata == fileMetadata2 || (fileMetadata != null && fileMetadata.equals(fileMetadata2))) {
            MinimalFileLinkMetadata minimalFileLinkMetadata = this.linkMetadata;
            MinimalFileLinkMetadata minimalFileLinkMetadata2 = previewResult.linkMetadata;
            if (minimalFileLinkMetadata == minimalFileLinkMetadata2) {
                return true;
            }
            if (minimalFileLinkMetadata != null && minimalFileLinkMetadata.equals(minimalFileLinkMetadata2)) {
                return true;
            }
        }
        return false;
    }

    public FileMetadata getFileMetadata() {
        return this.fileMetadata;
    }

    public MinimalFileLinkMetadata getLinkMetadata() {
        return this.linkMetadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileMetadata, this.linkMetadata});
    }

    public String toString() {
        return C2608a.f17294b.serialize((C2608a) this, false);
    }

    public String toStringMultiline() {
        return C2608a.f17294b.serialize((C2608a) this, true);
    }

    public PreviewResult() {
        this(null, null);
    }
}
