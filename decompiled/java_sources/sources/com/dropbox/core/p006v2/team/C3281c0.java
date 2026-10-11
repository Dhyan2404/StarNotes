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

/* renamed from: com.dropbox.core.v2.team.c0 */
/* loaded from: classes4.dex */
public class C3281c0 {

    /* renamed from: a */
    public final List<UserSelectorArg> f18593a;

    /* renamed from: com.dropbox.core.v2.team.c0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3281c0> {

        /* renamed from: b */
        public static final a f18594b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3281c0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("members".equals(currentName)) {
                    list = (List) StoneSerializers.list(UserSelectorArg.C3275b.f18582b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"members\" missing.");
            }
            C3281c0 c3281c0 = new C3281c0(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3281c0, c3281c0.m12841b());
            return c3281c0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3281c0 c3281c0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("members");
            StoneSerializers.list(UserSelectorArg.C3275b.f18582b).serialize((StoneSerializer) c3281c0.f18593a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3281c0(List<UserSelectorArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        Iterator<UserSelectorArg> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
            }
        }
        this.f18593a = list;
    }

    /* renamed from: a */
    public List<UserSelectorArg> m12840a() {
        return this.f18593a;
    }

    /* renamed from: b */
    public String m12841b() {
        return a.f18594b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UserSelectorArg> list = this.f18593a;
        List<UserSelectorArg> list2 = ((C3281c0) obj).f18593a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18593a});
    }

    public String toString() {
        return a.f18594b.serialize((a) this, false);
    }
}
