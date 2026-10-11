package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Metadata;
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
public class RelocationResult extends FileOpsResult {
    protected final Metadata metadata;

    /* renamed from: com.dropbox.core.v2.files.RelocationResult$a */
    /* loaded from: classes4.dex */
    public static class C2631a extends StructSerializer<RelocationResult> {

        /* renamed from: b */
        public static final C2631a f17350b = new C2631a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Metadata metadata = null;
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
                    metadata = Metadata.C2596a.f17264b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (metadata == null) {
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            RelocationResult relocationResult = new RelocationResult(metadata);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(relocationResult, relocationResult.toStringMultiline());
            return relocationResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationResult relocationResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("metadata");
            Metadata.C2596a.f17264b.serialize((Metadata.C2596a) relocationResult.metadata, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RelocationResult(Metadata metadata) {
        if (metadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = metadata;
    }

    @Override // com.dropbox.core.p006v2.files.FileOpsResult
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Metadata metadata = this.metadata;
        Metadata metadata2 = ((RelocationResult) obj).metadata;
        return metadata == metadata2 || metadata.equals(metadata2);
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    @Override // com.dropbox.core.p006v2.files.FileOpsResult
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.metadata});
    }

    @Override // com.dropbox.core.p006v2.files.FileOpsResult
    public String toString() {
        return C2631a.f17350b.serialize((C2631a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.FileOpsResult
    public String toStringMultiline() {
        return C2631a.f17350b.serialize((C2631a) this, true);
    }
}
