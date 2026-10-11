package com.dropbox.core.p006v2.files;

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
public class HighlightSpan {
    protected final String highlightStr;
    protected final boolean isHighlighted;

    /* renamed from: com.dropbox.core.v2.files.HighlightSpan$a */
    /* loaded from: classes4.dex */
    public static class C2567a extends StructSerializer<HighlightSpan> {

        /* renamed from: b */
        public static final C2567a f17198b = new C2567a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HighlightSpan deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("highlight_str".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("is_highlighted".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"highlight_str\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_highlighted\" missing.");
            }
            HighlightSpan highlightSpan = new HighlightSpan(str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(highlightSpan, highlightSpan.toStringMultiline());
            return highlightSpan;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(HighlightSpan highlightSpan, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("highlight_str");
            StoneSerializers.string().serialize((StoneSerializer<String>) highlightSpan.highlightStr, jsonGenerator);
            jsonGenerator.writeFieldName("is_highlighted");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(highlightSpan.isHighlighted), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public HighlightSpan(String str, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'highlightStr' is null");
        }
        this.highlightStr = str;
        this.isHighlighted = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        HighlightSpan highlightSpan = (HighlightSpan) obj;
        String str = this.highlightStr;
        String str2 = highlightSpan.highlightStr;
        return (str == str2 || str.equals(str2)) && this.isHighlighted == highlightSpan.isHighlighted;
    }

    public String getHighlightStr() {
        return this.highlightStr;
    }

    public boolean getIsHighlighted() {
        return this.isHighlighted;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.highlightStr, Boolean.valueOf(this.isHighlighted)});
    }

    public String toString() {
        return C2567a.f17198b.serialize((C2567a) this, false);
    }

    public String toStringMultiline() {
        return C2567a.f17198b.serialize((C2567a) this, true);
    }
}
