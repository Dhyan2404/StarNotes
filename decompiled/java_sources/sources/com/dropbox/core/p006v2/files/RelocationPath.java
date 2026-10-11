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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class RelocationPath {
    protected final String fromPath;
    protected final String toPath;

    /* renamed from: com.dropbox.core.v2.files.RelocationPath$a */
    /* loaded from: classes4.dex */
    public static class C2630a extends StructSerializer<RelocationPath> {

        /* renamed from: b */
        public static final C2630a f17349b = new C2630a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationPath deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("from_path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("to_path".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"from_path\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"to_path\" missing.");
            }
            RelocationPath relocationPath = new RelocationPath(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(relocationPath, relocationPath.toStringMultiline());
            return relocationPath;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationPath relocationPath, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("from_path");
            StoneSerializers.string().serialize((StoneSerializer<String>) relocationPath.fromPath, jsonGenerator);
            jsonGenerator.writeFieldName("to_path");
            StoneSerializers.string().serialize((StoneSerializer<String>) relocationPath.toPath, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RelocationPath(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'fromPath' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
            throw new IllegalArgumentException("String 'fromPath' does not match pattern");
        }
        this.fromPath = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'toPath' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str2)) {
            throw new IllegalArgumentException("String 'toPath' does not match pattern");
        }
        this.toPath = str2;
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
        RelocationPath relocationPath = (RelocationPath) obj;
        String str3 = this.fromPath;
        String str4 = relocationPath.fromPath;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.toPath) == (str2 = relocationPath.toPath) || str.equals(str2));
    }

    public String getFromPath() {
        return this.fromPath;
    }

    public String getToPath() {
        return this.toPath;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fromPath, this.toPath});
    }

    public String toString() {
        return C2630a.f17349b.serialize((C2630a) this, false);
    }

    public String toStringMultiline() {
        return C2630a.f17349b.serialize((C2630a) this, true);
    }
}
