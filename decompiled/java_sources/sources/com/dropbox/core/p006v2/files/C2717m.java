package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.RelocationPath;
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

/* renamed from: com.dropbox.core.v2.files.m */
/* loaded from: classes4.dex */
public class C2717m {

    /* renamed from: a */
    public final List<RelocationPath> f17519a;

    /* renamed from: b */
    public final boolean f17520b;

    /* renamed from: com.dropbox.core.v2.files.m$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2717m> {

        /* renamed from: b */
        public static final a f17521b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2717m deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(RelocationPath.C2630a.f17349b).deserialize(jsonParser);
                } else if ("autorename".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            C2717m c2717m = new C2717m(list, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2717m, c2717m.mo10904c());
            return c2717m;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2717m c2717m, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(RelocationPath.C2630a.f17349b).serialize((StoneSerializer) c2717m.f17519a, jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c2717m.f17520b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2717m(List<RelocationPath> list, boolean z) {
        if (list != null) {
            if (list.size() >= 1) {
                Iterator<RelocationPath> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'entries' is null");
                    }
                }
                this.f17519a = list;
                this.f17520b = z;
                return;
            }
            throw new IllegalArgumentException("List 'entries' has fewer than 1 items");
        }
        throw new IllegalArgumentException("Required value for 'entries' is null");
    }

    /* renamed from: a */
    public boolean mo10902a() {
        return this.f17520b;
    }

    /* renamed from: b */
    public List<RelocationPath> mo10903b() {
        return this.f17519a;
    }

    /* renamed from: c */
    public String mo10904c() {
        return a.f17521b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2717m c2717m = (C2717m) obj;
        List<RelocationPath> list = this.f17519a;
        List<RelocationPath> list2 = c2717m.f17519a;
        return (list == list2 || list.equals(list2)) && this.f17520b == c2717m.f17520b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17519a, Boolean.valueOf(this.f17520b)});
    }

    public String toString() {
        return a.f17521b.serialize((a) this, false);
    }

    public C2717m(List<RelocationPath> list) {
        this(list, false);
    }
}
