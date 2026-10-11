package com.dropbox.core.p006v2.clouddocs;

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
public class RenameResult {
    protected final String title;

    /* renamed from: com.dropbox.core.v2.clouddocs.RenameResult$a */
    /* loaded from: classes4.dex */
    public static class C2408a extends StructSerializer<RenameResult> {

        /* renamed from: b */
        public static final C2408a f16867b = new C2408a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RenameResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = "\"\"";
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("title".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            RenameResult renameResult = new RenameResult(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(renameResult, renameResult.toStringMultiline());
            return renameResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RenameResult renameResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("title");
            StoneSerializers.string().serialize((StoneSerializer<String>) renameResult.title, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RenameResult(String str) {
        if (str != null) {
            this.title = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'title' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.title;
        String str2 = ((RenameResult) obj).title;
        return str == str2 || str.equals(str2);
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.title});
    }

    public String toString() {
        return C2408a.f16867b.serialize((C2408a) this, false);
    }

    public String toStringMultiline() {
        return C2408a.f16867b.serialize((C2408a) this, true);
    }

    public RenameResult() {
        this("\"\"");
    }
}
