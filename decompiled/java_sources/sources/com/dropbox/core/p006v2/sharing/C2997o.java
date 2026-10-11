package com.dropbox.core.p006v2.sharing;

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

/* renamed from: com.dropbox.core.v2.sharing.o */
/* loaded from: classes4.dex */
public class C2997o {

    /* renamed from: a */
    public final String f18072a;

    /* renamed from: b */
    public final boolean f18073b;

    /* renamed from: com.dropbox.core.v2.sharing.o$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2997o> {

        /* renamed from: b */
        public static final a f18074b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2997o deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("leave_a_copy".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            C2997o c2997o = new C2997o(str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2997o, c2997o.m12057c());
            return c2997o;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2997o c2997o, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2997o.f18072a, jsonGenerator);
            jsonGenerator.writeFieldName("leave_a_copy");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c2997o.f18073b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2997o(String str, boolean z) {
        if (str != null) {
            if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                this.f18072a = str;
                this.f18073b = z;
                return;
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }

    /* renamed from: a */
    public boolean m12055a() {
        return this.f18073b;
    }

    /* renamed from: b */
    public String m12056b() {
        return this.f18072a;
    }

    /* renamed from: c */
    public String m12057c() {
        return a.f18074b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2997o c2997o = (C2997o) obj;
        String str = this.f18072a;
        String str2 = c2997o.f18072a;
        return (str == str2 || str.equals(str2)) && this.f18073b == c2997o.f18073b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18072a, Boolean.valueOf(this.f18073b)});
    }

    public String toString() {
        return a.f18074b.serialize((a) this, false);
    }

    public C2997o(String str) {
        this(str, false);
    }
}
