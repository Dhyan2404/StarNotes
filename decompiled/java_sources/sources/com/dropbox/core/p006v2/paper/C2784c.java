package com.dropbox.core.p006v2.paper;

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
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.dropbox.core.v2.paper.c */
/* loaded from: classes4.dex */
public class C2784c extends C2790i {

    /* renamed from: b */
    public final String f17631b;

    /* renamed from: com.dropbox.core.v2.paper.c$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2784c> {

        /* renamed from: b */
        public static final a f17632b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2784c deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            C2784c c2784c = new C2784c(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2784c, c2784c.mo11293b());
            return c2784c;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2784c c2784c, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) c2784c.f17646a, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2784c.f17631b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2784c(String str, String str2) {
        super(str);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.f17631b = str2;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: a */
    public String mo11292a() {
        return this.f17646a;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: b */
    public String mo11293b() {
        return a.f17632b.serialize((a) this, true);
    }

    /* renamed from: c */
    public String m11413c() {
        return this.f17631b;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2784c c2784c = (C2784c) obj;
        String str3 = this.f17646a;
        String str4 = c2784c.f17646a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f17631b) == (str2 = c2784c.f17631b) || str.equals(str2));
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17631b});
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public String toString() {
        return a.f17632b.serialize((a) this, false);
    }
}
