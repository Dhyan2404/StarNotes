package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.ExportMetadata;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class ExportResult {
    protected final ExportMetadata exportMetadata;
    protected final FileMetadata fileMetadata;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<ExportResult> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ExportResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ExportMetadata exportMetadata = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                FileMetadata fileMetadata = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("export_metadata".equals(currentName)) {
                        exportMetadata = ExportMetadata.C2536a.f17140b.deserialize(jsonParser);
                    } else if ("file_metadata".equals(currentName)) {
                        fileMetadata = FileMetadata.C2543a.f17151b.deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (exportMetadata == null) {
                    throw new JsonParseException(jsonParser, "Required field \"export_metadata\" missing.");
                }
                if (fileMetadata != null) {
                    ExportResult exportResult = new ExportResult(exportMetadata, fileMetadata);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(exportResult, exportResult.toStringMultiline());
                    return exportResult;
                }
                throw new JsonParseException(jsonParser, "Required field \"file_metadata\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ExportResult exportResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("export_metadata");
            ExportMetadata.C2536a.f17140b.serialize((ExportMetadata.C2536a) exportResult.exportMetadata, jsonGenerator);
            jsonGenerator.writeFieldName("file_metadata");
            FileMetadata.C2543a.f17151b.serialize((FileMetadata.C2543a) exportResult.fileMetadata, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ExportResult(ExportMetadata exportMetadata, FileMetadata fileMetadata) {
        if (exportMetadata == null) {
            throw new IllegalArgumentException("Required value for 'exportMetadata' is null");
        }
        this.exportMetadata = exportMetadata;
        if (fileMetadata == null) {
            throw new IllegalArgumentException("Required value for 'fileMetadata' is null");
        }
        this.fileMetadata = fileMetadata;
    }

    public boolean equals(Object obj) {
        FileMetadata fileMetadata;
        FileMetadata fileMetadata2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ExportResult exportResult = (ExportResult) obj;
        ExportMetadata exportMetadata = this.exportMetadata;
        ExportMetadata exportMetadata2 = exportResult.exportMetadata;
        return (exportMetadata == exportMetadata2 || exportMetadata.equals(exportMetadata2)) && ((fileMetadata = this.fileMetadata) == (fileMetadata2 = exportResult.fileMetadata) || fileMetadata.equals(fileMetadata2));
    }

    public ExportMetadata getExportMetadata() {
        return this.exportMetadata;
    }

    public FileMetadata getFileMetadata() {
        return this.fileMetadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.exportMetadata, this.fileMetadata});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
