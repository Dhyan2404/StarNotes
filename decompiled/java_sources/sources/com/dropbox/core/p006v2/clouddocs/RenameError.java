package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.RenameErrorTagUnion;
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
public class RenameError {
    protected final RenameErrorTagUnion renameErrorTag;

    /* renamed from: com.dropbox.core.v2.clouddocs.RenameError$a */
    /* loaded from: classes4.dex */
    public static class C2403a extends StructSerializer<RenameError> {

        /* renamed from: b */
        public static final C2403a f16858b = new C2403a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RenameError deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            RenameErrorTagUnion renameErrorTagUnion = null;
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
                if ("rename_error_tag".equals(currentName)) {
                    renameErrorTagUnion = (RenameErrorTagUnion) StoneSerializers.nullable(RenameErrorTagUnion.C2407b.f16866b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            RenameError renameError = new RenameError(renameErrorTagUnion);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(renameError, renameError.toStringMultiline());
            return renameError;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RenameError renameError, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (renameError.renameErrorTag != null) {
                jsonGenerator.writeFieldName("rename_error_tag");
                StoneSerializers.nullable(RenameErrorTagUnion.C2407b.f16866b).serialize((StoneSerializer) renameError.renameErrorTag, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RenameError(RenameErrorTagUnion renameErrorTagUnion) {
        this.renameErrorTag = renameErrorTagUnion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RenameErrorTagUnion renameErrorTagUnion = this.renameErrorTag;
        RenameErrorTagUnion renameErrorTagUnion2 = ((RenameError) obj).renameErrorTag;
        if (renameErrorTagUnion != renameErrorTagUnion2) {
            return renameErrorTagUnion != null && renameErrorTagUnion.equals(renameErrorTagUnion2);
        }
        return true;
    }

    public RenameErrorTagUnion getRenameErrorTag() {
        return this.renameErrorTag;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.renameErrorTag});
    }

    public String toString() {
        return C2403a.f16858b.serialize((C2403a) this, false);
    }

    public String toStringMultiline() {
        return C2403a.f16858b.serialize((C2403a) this, true);
    }

    public RenameError() {
        this(null);
    }
}
