package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserCustomQuotaArg;
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

/* renamed from: com.dropbox.core.v2.team.l0 */
/* loaded from: classes4.dex */
public class C3299l0 {

    /* renamed from: a */
    public final List<UserCustomQuotaArg> f18635a;

    /* renamed from: com.dropbox.core.v2.team.l0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3299l0> {

        /* renamed from: b */
        public static final a f18636b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3299l0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("users_and_quotas".equals(currentName)) {
                    list = (List) StoneSerializers.list(UserCustomQuotaArg.C3264a.f18561b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"users_and_quotas\" missing.");
            }
            C3299l0 c3299l0 = new C3299l0(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3299l0, c3299l0.m12916b());
            return c3299l0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3299l0 c3299l0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("users_and_quotas");
            StoneSerializers.list(UserCustomQuotaArg.C3264a.f18561b).serialize((StoneSerializer) c3299l0.f18635a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3299l0(List<UserCustomQuotaArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'usersAndQuotas' is null");
        }
        Iterator<UserCustomQuotaArg> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'usersAndQuotas' is null");
            }
        }
        this.f18635a = list;
    }

    /* renamed from: a */
    public List<UserCustomQuotaArg> m12915a() {
        return this.f18635a;
    }

    /* renamed from: b */
    public String m12916b() {
        return a.f18636b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UserCustomQuotaArg> list = this.f18635a;
        List<UserCustomQuotaArg> list2 = ((C3299l0) obj).f18635a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18635a});
    }

    public String toString() {
        return a.f18636b.serialize((a) this, false);
    }
}
