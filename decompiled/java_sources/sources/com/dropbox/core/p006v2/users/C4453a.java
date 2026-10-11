package com.dropbox.core.p006v2.users;

import com.dropbox.core.p006v2.users.UserFeature;
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

/* renamed from: com.dropbox.core.v2.users.a */
/* loaded from: classes4.dex */
public class C4453a {

    /* renamed from: a */
    public final List<UserFeature> f20762a;

    /* renamed from: com.dropbox.core.v2.users.a$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C4453a> {

        /* renamed from: b */
        public static final a f20763b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C4453a deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    list = (List) StoneSerializers.list(UserFeature.C4447b.f20753b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"features\" missing.");
            }
            C4453a c4453a = new C4453a(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c4453a, c4453a.m16899b());
            return c4453a;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C4453a c4453a, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(GeoConstant.KEY_Features);
            StoneSerializers.list(UserFeature.C4447b.f20753b).serialize((StoneSerializer) c4453a.f20762a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C4453a(List<UserFeature> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'features' is null");
        }
        Iterator<UserFeature> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'features' is null");
            }
        }
        this.f20762a = list;
    }

    /* renamed from: a */
    public List<UserFeature> m16898a() {
        return this.f20762a;
    }

    /* renamed from: b */
    public String m16899b() {
        return a.f20763b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UserFeature> list = this.f20762a;
        List<UserFeature> list2 = ((C4453a) obj).f20762a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20762a});
    }

    public String toString() {
        return a.f20763b.serialize((a) this, false);
    }
}
