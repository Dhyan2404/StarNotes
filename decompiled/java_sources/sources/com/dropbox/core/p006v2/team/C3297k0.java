package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.RevokeLinkedApiAppArg;
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

/* renamed from: com.dropbox.core.v2.team.k0 */
/* loaded from: classes4.dex */
public class C3297k0 {

    /* renamed from: a */
    public final List<RevokeLinkedApiAppArg> f18631a;

    /* renamed from: com.dropbox.core.v2.team.k0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3297k0> {

        /* renamed from: b */
        public static final a f18632b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3297k0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("revoke_linked_app".equals(currentName)) {
                    list = (List) StoneSerializers.list(RevokeLinkedApiAppArg.C3203a.f18455b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"revoke_linked_app\" missing.");
            }
            C3297k0 c3297k0 = new C3297k0(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3297k0, c3297k0.m12908b());
            return c3297k0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3297k0 c3297k0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("revoke_linked_app");
            StoneSerializers.list(RevokeLinkedApiAppArg.C3203a.f18455b).serialize((StoneSerializer) c3297k0.f18631a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3297k0(List<RevokeLinkedApiAppArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'revokeLinkedApp' is null");
        }
        Iterator<RevokeLinkedApiAppArg> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'revokeLinkedApp' is null");
            }
        }
        this.f18631a = list;
    }

    /* renamed from: a */
    public List<RevokeLinkedApiAppArg> m12907a() {
        return this.f18631a;
    }

    /* renamed from: b */
    public String m12908b() {
        return a.f18632b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<RevokeLinkedApiAppArg> list = this.f18631a;
        List<RevokeLinkedApiAppArg> list2 = ((C3297k0) obj).f18631a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18631a});
    }

    public String toString() {
        return a.f18632b.serialize((a) this, false);
    }
}
