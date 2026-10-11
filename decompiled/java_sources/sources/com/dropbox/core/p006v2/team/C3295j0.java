package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.RevokeDeviceSessionArg;
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

/* renamed from: com.dropbox.core.v2.team.j0 */
/* loaded from: classes4.dex */
public class C3295j0 {

    /* renamed from: a */
    public final List<RevokeDeviceSessionArg> f18626a;

    /* renamed from: com.dropbox.core.v2.team.j0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3295j0> {

        /* renamed from: b */
        public static final a f18627b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3295j0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("revoke_devices".equals(currentName)) {
                    list = (List) StoneSerializers.list(RevokeDeviceSessionArg.C3196b.f18448b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"revoke_devices\" missing.");
            }
            C3295j0 c3295j0 = new C3295j0(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3295j0, c3295j0.m12900b());
            return c3295j0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3295j0 c3295j0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("revoke_devices");
            StoneSerializers.list(RevokeDeviceSessionArg.C3196b.f18448b).serialize((StoneSerializer) c3295j0.f18626a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3295j0(List<RevokeDeviceSessionArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'revokeDevices' is null");
        }
        Iterator<RevokeDeviceSessionArg> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'revokeDevices' is null");
            }
        }
        this.f18626a = list;
    }

    /* renamed from: a */
    public List<RevokeDeviceSessionArg> m12899a() {
        return this.f18626a;
    }

    /* renamed from: b */
    public String m12900b() {
        return a.f18627b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<RevokeDeviceSessionArg> list = this.f18626a;
        List<RevokeDeviceSessionArg> list2 = ((C3295j0) obj).f18626a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18626a});
    }

    public String toString() {
        return a.f18627b.serialize((a) this, false);
    }
}
