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
public class DeleteArg {
    protected final String parentRev;
    protected final String path;

    /* renamed from: com.dropbox.core.v2.files.DeleteArg$a */
    /* loaded from: classes4.dex */
    public static class C2513a extends StructSerializer<DeleteArg> {

        /* renamed from: b */
        public static final C2513a f17092b = new C2513a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("parent_rev".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            DeleteArg deleteArg = new DeleteArg(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deleteArg, deleteArg.toStringMultiline());
            return deleteArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteArg deleteArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) deleteArg.path, jsonGenerator);
            if (deleteArg.parentRev != null) {
                jsonGenerator.writeFieldName("parent_rev");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deleteArg.parentRev, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeleteArg(String str, String str2) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                this.path = str;
                if (str2 != null) {
                    if (str2.length() >= 9) {
                        if (!Pattern.matches("[0-9a-f]+", str2)) {
                            throw new IllegalArgumentException("String 'parentRev' does not match pattern");
                        }
                    } else {
                        throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
                    }
                }
                this.parentRev = str2;
                return;
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DeleteArg deleteArg = (DeleteArg) obj;
        String str = this.path;
        String str2 = deleteArg.path;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.parentRev;
            String str4 = deleteArg.parentRev;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getParentRev() {
        return this.parentRev;
    }

    public String getPath() {
        return this.path;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.parentRev});
    }

    public String toString() {
        return C2513a.f17092b.serialize((C2513a) this, false);
    }

    public String toStringMultiline() {
        return C2513a.f17092b.serialize((C2513a) this, true);
    }

    public DeleteArg(String str) {
        this(str, null);
    }
}
