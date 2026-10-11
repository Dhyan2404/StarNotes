package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileMetadata;
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
public class GetThumbnailBatchResultData {
    protected final FileMetadata metadata;
    protected final String thumbnail;

    /* renamed from: com.dropbox.core.v2.files.GetThumbnailBatchResultData$a */
    /* loaded from: classes4.dex */
    public static class C2563a extends StructSerializer<GetThumbnailBatchResultData> {

        /* renamed from: b */
        public static final C2563a f17189b = new C2563a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetThumbnailBatchResultData deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("metadata".equals(currentName)) {
                    fileMetadata = FileMetadata.C2543a.f17151b.deserialize(jsonParser);
                } else if ("thumbnail".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileMetadata == null) {
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"thumbnail\" missing.");
            }
            GetThumbnailBatchResultData getThumbnailBatchResultData = new GetThumbnailBatchResultData(fileMetadata, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getThumbnailBatchResultData, getThumbnailBatchResultData.toStringMultiline());
            return getThumbnailBatchResultData;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetThumbnailBatchResultData getThumbnailBatchResultData, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("metadata");
            FileMetadata.C2543a.f17151b.serialize((FileMetadata.C2543a) getThumbnailBatchResultData.metadata, jsonGenerator);
            jsonGenerator.writeFieldName("thumbnail");
            StoneSerializers.string().serialize((StoneSerializer<String>) getThumbnailBatchResultData.thumbnail, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetThumbnailBatchResultData(FileMetadata fileMetadata, String str) {
        if (fileMetadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = fileMetadata;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'thumbnail' is null");
        }
        this.thumbnail = str;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetThumbnailBatchResultData getThumbnailBatchResultData = (GetThumbnailBatchResultData) obj;
        FileMetadata fileMetadata = this.metadata;
        FileMetadata fileMetadata2 = getThumbnailBatchResultData.metadata;
        return (fileMetadata == fileMetadata2 || fileMetadata.equals(fileMetadata2)) && ((str = this.thumbnail) == (str2 = getThumbnailBatchResultData.thumbnail) || str.equals(str2));
    }

    public FileMetadata getMetadata() {
        return this.metadata;
    }

    public String getThumbnail() {
        return this.thumbnail;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata, this.thumbnail});
    }

    public String toString() {
        return C2563a.f17189b.serialize((C2563a) this, false);
    }

    public String toStringMultiline() {
        return C2563a.f17189b.serialize((C2563a) this, true);
    }
}
