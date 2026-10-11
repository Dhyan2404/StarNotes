package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.UploadSessionCursor;
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

/* renamed from: com.dropbox.core.v2.files.s */
/* loaded from: classes4.dex */
public class C2723s {

    /* renamed from: a */
    public final UploadSessionCursor f17535a;

    /* renamed from: b */
    public final boolean f17536b;

    /* renamed from: com.dropbox.core.v2.files.s$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2723s> {

        /* renamed from: b */
        public static final a f17537b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2723s deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            UploadSessionCursor uploadSessionCursor = null;
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
                if ("cursor".equals(currentName)) {
                    uploadSessionCursor = UploadSessionCursor.C2682a.f17448b.deserialize(jsonParser);
                } else if ("close".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (uploadSessionCursor == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            C2723s c2723s = new C2723s(uploadSessionCursor, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2723s, c2723s.m11278c());
            return c2723s;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2723s c2723s, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("cursor");
            UploadSessionCursor.C2682a.f17448b.serialize((UploadSessionCursor.C2682a) c2723s.f17535a, jsonGenerator);
            jsonGenerator.writeFieldName("close");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c2723s.f17536b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2723s(UploadSessionCursor uploadSessionCursor, boolean z) {
        if (uploadSessionCursor != null) {
            this.f17535a = uploadSessionCursor;
            this.f17536b = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'cursor' is null");
    }

    /* renamed from: a */
    public boolean m11276a() {
        return this.f17536b;
    }

    /* renamed from: b */
    public UploadSessionCursor m11277b() {
        return this.f17535a;
    }

    /* renamed from: c */
    public String m11278c() {
        return a.f17537b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2723s c2723s = (C2723s) obj;
        UploadSessionCursor uploadSessionCursor = this.f17535a;
        UploadSessionCursor uploadSessionCursor2 = c2723s.f17535a;
        return (uploadSessionCursor == uploadSessionCursor2 || uploadSessionCursor.equals(uploadSessionCursor2)) && this.f17536b == c2723s.f17536b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17535a, Boolean.valueOf(this.f17536b)});
    }

    public String toString() {
        return a.f17537b.serialize((a) this, false);
    }

    public C2723s(UploadSessionCursor uploadSessionCursor) {
        this(uploadSessionCursor, false);
    }
}
