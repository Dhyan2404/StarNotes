package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.GetMetadataErrorTagUnion;
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
public class GetMetadataError {
    protected final GetMetadataErrorTagUnion getMetadataErrorTag;

    /* renamed from: com.dropbox.core.v2.clouddocs.GetMetadataError$a */
    /* loaded from: classes4.dex */
    public static class C2392a extends StructSerializer<GetMetadataError> {

        /* renamed from: b */
        public static final C2392a f16838b = new C2392a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetMetadataError deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            GetMetadataErrorTagUnion getMetadataErrorTagUnion = null;
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
                if ("get_metadata_error_tag".equals(currentName)) {
                    getMetadataErrorTagUnion = (GetMetadataErrorTagUnion) StoneSerializers.nullable(GetMetadataErrorTagUnion.C2394b.f16842b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            GetMetadataError getMetadataError = new GetMetadataError(getMetadataErrorTagUnion);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getMetadataError, getMetadataError.toStringMultiline());
            return getMetadataError;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetMetadataError getMetadataError, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (getMetadataError.getMetadataErrorTag != null) {
                jsonGenerator.writeFieldName("get_metadata_error_tag");
                StoneSerializers.nullable(GetMetadataErrorTagUnion.C2394b.f16842b).serialize((StoneSerializer) getMetadataError.getMetadataErrorTag, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetMetadataError(GetMetadataErrorTagUnion getMetadataErrorTagUnion) {
        this.getMetadataErrorTag = getMetadataErrorTagUnion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetMetadataErrorTagUnion getMetadataErrorTagUnion = this.getMetadataErrorTag;
        GetMetadataErrorTagUnion getMetadataErrorTagUnion2 = ((GetMetadataError) obj).getMetadataErrorTag;
        if (getMetadataErrorTagUnion != getMetadataErrorTagUnion2) {
            return getMetadataErrorTagUnion != null && getMetadataErrorTagUnion.equals(getMetadataErrorTagUnion2);
        }
        return true;
    }

    public GetMetadataErrorTagUnion getGetMetadataErrorTag() {
        return this.getMetadataErrorTag;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.getMetadataErrorTag});
    }

    public String toString() {
        return C2392a.f16838b.serialize((C2392a) this, false);
    }

    public String toStringMultiline() {
        return C2392a.f16838b.serialize((C2392a) this, true);
    }

    public GetMetadataError() {
        this(null);
    }
}
