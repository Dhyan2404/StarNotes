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

/* renamed from: com.dropbox.core.v2.sharing.t */
/* loaded from: classes4.dex */
public class C3002t {

    /* renamed from: a */
    public final String f18087a;

    /* renamed from: b */
    public final String f18088b;

    /* renamed from: com.dropbox.core.v2.sharing.t$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3002t> {

        /* renamed from: b */
        public static final a f18089b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3002t deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("to_dropbox_id".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"to_dropbox_id\" missing.");
            }
            C3002t c3002t = new C3002t(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3002t, c3002t.m12082c());
            return c3002t;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3002t c3002t, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3002t.f18087a, jsonGenerator);
            jsonGenerator.writeFieldName("to_dropbox_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3002t.f18088b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3002t(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.f18087a = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'toDropboxId' is null");
        }
        if (str2.length() < 1) {
            throw new IllegalArgumentException("String 'toDropboxId' is shorter than 1");
        }
        this.f18088b = str2;
    }

    /* renamed from: a */
    public String m12080a() {
        return this.f18087a;
    }

    /* renamed from: b */
    public String m12081b() {
        return this.f18088b;
    }

    /* renamed from: c */
    public String m12082c() {
        return a.f18089b.serialize((a) this, true);
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
        C3002t c3002t = (C3002t) obj;
        String str3 = this.f18087a;
        String str4 = c3002t.f18087a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f18088b) == (str2 = c3002t.f18088b) || str.equals(str2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18087a, this.f18088b});
    }

    public String toString() {
        return a.f18089b.serialize((a) this, false);
    }
}
