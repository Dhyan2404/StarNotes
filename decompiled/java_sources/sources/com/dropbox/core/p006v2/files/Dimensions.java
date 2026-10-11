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
public class Dimensions {
    protected final long height;
    protected final long width;

    /* renamed from: com.dropbox.core.v2.files.Dimensions$a */
    /* loaded from: classes4.dex */
    public static class C2528a extends StructSerializer<Dimensions> {

        /* renamed from: b */
        public static final C2528a f17119b = new C2528a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Dimensions deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("height".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("width".equals(currentName)) {
                    l2 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"height\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"width\" missing.");
            }
            Dimensions dimensions = new Dimensions(l.longValue(), l2.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(dimensions, dimensions.toStringMultiline());
            return dimensions;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Dimensions dimensions, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("height");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(dimensions.height), jsonGenerator);
            jsonGenerator.writeFieldName("width");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(dimensions.width), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public Dimensions(long j, long j2) {
        this.height = j;
        this.width = j2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Dimensions dimensions = (Dimensions) obj;
        return this.height == dimensions.height && this.width == dimensions.width;
    }

    public long getHeight() {
        return this.height;
    }

    public long getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.height), Long.valueOf(this.width)});
    }

    public String toString() {
        return C2528a.f17119b.serialize((C2528a) this, false);
    }

    public String toStringMultiline() {
        return C2528a.f17119b.serialize((C2528a) this, true);
    }
}
