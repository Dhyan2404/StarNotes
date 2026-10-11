package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FolderMetadata;
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
public class CreateFolderEntryResult {
    protected final FolderMetadata metadata;

    /* renamed from: com.dropbox.core.v2.files.CreateFolderEntryResult$a */
    /* loaded from: classes4.dex */
    public static class C2509a extends StructSerializer<CreateFolderEntryResult> {

        /* renamed from: b */
        public static final C2509a f17080b = new C2509a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFolderEntryResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FolderMetadata folderMetadata = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("metadata".equals(currentName)) {
                    folderMetadata = FolderMetadata.C2548a.f17158b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (folderMetadata == null) {
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            CreateFolderEntryResult createFolderEntryResult = new CreateFolderEntryResult(folderMetadata);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(createFolderEntryResult, createFolderEntryResult.toStringMultiline());
            return createFolderEntryResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFolderEntryResult createFolderEntryResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("metadata");
            FolderMetadata.C2548a.f17158b.serialize((FolderMetadata.C2548a) createFolderEntryResult.metadata, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CreateFolderEntryResult(FolderMetadata folderMetadata) {
        if (folderMetadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = folderMetadata;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FolderMetadata folderMetadata = this.metadata;
        FolderMetadata folderMetadata2 = ((CreateFolderEntryResult) obj).metadata;
        return folderMetadata == folderMetadata2 || folderMetadata.equals(folderMetadata2);
    }

    public FolderMetadata getMetadata() {
        return this.metadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata});
    }

    public String toString() {
        return C2509a.f17080b.serialize((C2509a) this, false);
    }

    public String toStringMultiline() {
        return C2509a.f17080b.serialize((C2509a) this, true);
    }
}
