package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.UploadSessionFinishArg;
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

/* renamed from: com.dropbox.core.v2.files.t */
/* loaded from: classes4.dex */
public class C2724t {

    /* renamed from: a */
    public final List<UploadSessionFinishArg> f17538a;

    /* renamed from: com.dropbox.core.v2.files.t$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2724t> {

        /* renamed from: b */
        public static final a f17539b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2724t deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    list = (List) StoneSerializers.list(UploadSessionFinishArg.C2683a.f17449b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            C2724t c2724t = new C2724t(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2724t, c2724t.m11282b());
            return c2724t;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2724t c2724t, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(UploadSessionFinishArg.C2683a.f17449b).serialize((StoneSerializer) c2724t.f17538a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2724t(List<UploadSessionFinishArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        if (list.size() > 1000) {
            throw new IllegalArgumentException("List 'entries' has more than 1000 items");
        }
        Iterator<UploadSessionFinishArg> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.f17538a = list;
    }

    /* renamed from: a */
    public List<UploadSessionFinishArg> m11281a() {
        return this.f17538a;
    }

    /* renamed from: b */
    public String m11282b() {
        return a.f17539b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UploadSessionFinishArg> list = this.f17538a;
        List<UploadSessionFinishArg> list2 = ((C2724t) obj).f17538a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17538a});
    }

    public String toString() {
        return a.f17539b.serialize((a) this, false);
    }
}
