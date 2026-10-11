package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.MemberAddArg;
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

/* renamed from: com.dropbox.core.v2.team.x */
/* loaded from: classes4.dex */
public class C3320x {

    /* renamed from: a */
    public final List<MemberAddArg> f18680a;

    /* renamed from: b */
    public final boolean f18681b;

    /* renamed from: com.dropbox.core.v2.team.x$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3320x> {

        /* renamed from: b */
        public static final a f18682b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3320x deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("new_members".equals(currentName)) {
                    list = (List) StoneSerializers.list(MemberAddArg.C3139a.f18328b).deserialize(jsonParser);
                } else if ("force_async".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_members\" missing.");
            }
            C3320x c3320x = new C3320x(list, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3320x, c3320x.m13000c());
            return c3320x;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3320x c3320x, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_members");
            StoneSerializers.list(MemberAddArg.C3139a.f18328b).serialize((StoneSerializer) c3320x.f18680a, jsonGenerator);
            jsonGenerator.writeFieldName("force_async");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c3320x.f18681b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3320x(List<MemberAddArg> list, boolean z) {
        if (list != null) {
            Iterator<MemberAddArg> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'newMembers' is null");
                }
            }
            this.f18680a = list;
            this.f18681b = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newMembers' is null");
    }

    /* renamed from: a */
    public boolean m12998a() {
        return this.f18681b;
    }

    /* renamed from: b */
    public List<MemberAddArg> m12999b() {
        return this.f18680a;
    }

    /* renamed from: c */
    public String m13000c() {
        return a.f18682b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3320x c3320x = (C3320x) obj;
        List<MemberAddArg> list = this.f18680a;
        List<MemberAddArg> list2 = c3320x.f18680a;
        return (list == list2 || list.equals(list2)) && this.f18681b == c3320x.f18681b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18680a, Boolean.valueOf(this.f18681b)});
    }

    public String toString() {
        return a.f18682b.serialize((a) this, false);
    }

    public C3320x(List<MemberAddArg> list) {
        this(list, false);
    }
}
