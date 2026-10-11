package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.ThumbnailArg;
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
import java.util.Iterator;
import java.util.List;

/* renamed from: com.dropbox.core.v2.files.h */
/* loaded from: classes4.dex */
public class C2712h {

    /* renamed from: a */
    public final List<ThumbnailArg> f17507a;

    /* renamed from: com.dropbox.core.v2.files.h$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2712h> {

        /* renamed from: b */
        public static final a f17508b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2712h deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
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
                if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(ThumbnailArg.C2665a.f17415b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            C2712h c2712h = new C2712h(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2712h, c2712h.m11230b());
            return c2712h;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2712h c2712h, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(ThumbnailArg.C2665a.f17415b).serialize((StoneSerializer) c2712h.f17507a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2712h(List<ThumbnailArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<ThumbnailArg> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.f17507a = list;
    }

    /* renamed from: a */
    public List<ThumbnailArg> m11229a() {
        return this.f17507a;
    }

    /* renamed from: b */
    public String m11230b() {
        return a.f17508b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<ThumbnailArg> list = this.f17507a;
        List<ThumbnailArg> list2 = ((C2712h) obj).f17507a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17507a});
    }

    public String toString() {
        return a.f17508b.serialize((a) this, false);
    }
}
