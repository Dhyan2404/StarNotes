package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserSelectorArg;
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

/* renamed from: com.dropbox.core.v2.team.f */
/* loaded from: classes4.dex */
public class C3286f {

    /* renamed from: a */
    public final List<UserSelectorArg> f18603a;

    /* renamed from: com.dropbox.core.v2.team.f$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3286f> {

        /* renamed from: b */
        public static final a f18604b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3286f deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("users".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(UserSelectorArg.C3275b.f18582b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            C3286f c3286f = new C3286f(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3286f, c3286f.m12861b());
            return c3286f;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3286f c3286f, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (c3286f.f18603a != null) {
                jsonGenerator.writeFieldName("users");
                StoneSerializers.nullable(StoneSerializers.list(UserSelectorArg.C3275b.f18582b)).serialize((StoneSerializer) c3286f.f18603a, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3286f(List<UserSelectorArg> list) {
        if (list != null) {
            Iterator<UserSelectorArg> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'users' is null");
                }
            }
        }
        this.f18603a = list;
    }

    /* renamed from: a */
    public List<UserSelectorArg> m12860a() {
        return this.f18603a;
    }

    /* renamed from: b */
    public String m12861b() {
        return a.f18604b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UserSelectorArg> list = this.f18603a;
        List<UserSelectorArg> list2 = ((C3286f) obj).f18603a;
        if (list != list2) {
            return list != null && list.equals(list2);
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18603a});
    }

    public String toString() {
        return a.f18604b.serialize((a) this, false);
    }

    public C3286f() {
        this(null);
    }
}
