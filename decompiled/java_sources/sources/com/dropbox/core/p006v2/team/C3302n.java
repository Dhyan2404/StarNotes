package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupSelector;
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

/* renamed from: com.dropbox.core.v2.team.n */
/* loaded from: classes4.dex */
public class C3302n {

    /* renamed from: a */
    public final GroupSelector f18641a;

    /* renamed from: b */
    public final long f18642b;

    /* renamed from: com.dropbox.core.v2.team.n$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3302n> {

        /* renamed from: b */
        public static final a f18643b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3302n deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            GroupSelector groupSelector = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = 1000L;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group".equals(currentName)) {
                    groupSelector = GroupSelector.C3071b.f18212b.deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (groupSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"group\" missing.");
            }
            C3302n c3302n = new C3302n(groupSelector, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3302n, c3302n.m12928c());
            return c3302n;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3302n c3302n, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group");
            GroupSelector.C3071b.f18212b.serialize(c3302n.f18641a, jsonGenerator);
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(c3302n.f18642b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3302n(GroupSelector groupSelector, long j) {
        if (groupSelector != null) {
            this.f18641a = groupSelector;
            if (j < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (j <= 1000) {
                this.f18642b = j;
                return;
            }
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        throw new IllegalArgumentException("Required value for 'group' is null");
    }

    /* renamed from: a */
    public GroupSelector m12926a() {
        return this.f18641a;
    }

    /* renamed from: b */
    public long m12927b() {
        return this.f18642b;
    }

    /* renamed from: c */
    public String m12928c() {
        return a.f18643b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3302n c3302n = (C3302n) obj;
        GroupSelector groupSelector = this.f18641a;
        GroupSelector groupSelector2 = c3302n.f18641a;
        return (groupSelector == groupSelector2 || groupSelector.equals(groupSelector2)) && this.f18642b == c3302n.f18642b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18641a, Long.valueOf(this.f18642b)});
    }

    public String toString() {
        return a.f18643b.serialize((a) this, false);
    }

    public C3302n(GroupSelector groupSelector) {
        this(groupSelector, 1000L);
    }
}
