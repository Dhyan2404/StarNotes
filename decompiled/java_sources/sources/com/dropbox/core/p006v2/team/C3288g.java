package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.Feature;
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
import com.onyx.android.sdk.genericshape.GeoConstant;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.dropbox.core.v2.team.g */
/* loaded from: classes4.dex */
public class C3288g {

    /* renamed from: a */
    public final List<Feature> f18608a;

    /* renamed from: com.dropbox.core.v2.team.g$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3288g> {

        /* renamed from: b */
        public static final a f18609b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3288g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if (GeoConstant.KEY_Features.equals(currentName)) {
                    list = (List) StoneSerializers.list(Feature.C3044b.f18166b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"features\" missing.");
            }
            C3288g c3288g = new C3288g(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3288g, c3288g.m12870b());
            return c3288g;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3288g c3288g, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(GeoConstant.KEY_Features);
            StoneSerializers.list(Feature.C3044b.f18166b).serialize((StoneSerializer) c3288g.f18608a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3288g(List<Feature> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'features' is null");
        }
        Iterator<Feature> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'features' is null");
            }
        }
        this.f18608a = list;
    }

    /* renamed from: a */
    public List<Feature> m12869a() {
        return this.f18608a;
    }

    /* renamed from: b */
    public String m12870b() {
        return a.f18609b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<Feature> list = this.f18608a;
        List<Feature> list2 = ((C3288g) obj).f18608a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18608a});
    }

    public String toString() {
        return a.f18609b.serialize((a) this, false);
    }
}
