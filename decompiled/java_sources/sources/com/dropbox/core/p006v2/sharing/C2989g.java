package com.dropbox.core.p006v2.sharing;

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
import java.util.List;
import java.util.regex.Pattern;

/* renamed from: com.dropbox.core.v2.sharing.g */
/* loaded from: classes4.dex */
public class C2989g {

    /* renamed from: a */
    public final List<String> f18053a;

    /* renamed from: b */
    public final long f18054b;

    /* renamed from: com.dropbox.core.v2.sharing.g$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2989g> {

        /* renamed from: b */
        public static final a f18055b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2989g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = 10L;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("files".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"files\" missing.");
            }
            C2989g c2989g = new C2989g(list, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2989g, c2989g.m12022c());
            return c2989g;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2989g c2989g, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("files");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) c2989g.f18053a, jsonGenerator);
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(c2989g.f18054b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2989g(List<String> list, long j) {
        if (list != null) {
            if (list.size() <= 100) {
                for (String str : list) {
                    if (str != null) {
                        if (str.length() >= 1) {
                            if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                                throw new IllegalArgumentException("Stringan item in list 'files' does not match pattern");
                            }
                        } else {
                            throw new IllegalArgumentException("Stringan item in list 'files' is shorter than 1");
                        }
                    } else {
                        throw new IllegalArgumentException("An item in list 'files' is null");
                    }
                }
                this.f18053a = list;
                if (j <= 20) {
                    this.f18054b = j;
                    return;
                }
                throw new IllegalArgumentException("Number 'limit' is larger than 20L");
            }
            throw new IllegalArgumentException("List 'files' has more than 100 items");
        }
        throw new IllegalArgumentException("Required value for 'files' is null");
    }

    /* renamed from: a */
    public List<String> m12020a() {
        return this.f18053a;
    }

    /* renamed from: b */
    public long m12021b() {
        return this.f18054b;
    }

    /* renamed from: c */
    public String m12022c() {
        return a.f18055b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2989g c2989g = (C2989g) obj;
        List<String> list = this.f18053a;
        List<String> list2 = c2989g.f18053a;
        return (list == list2 || list.equals(list2)) && this.f18054b == c2989g.f18054b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18053a, Long.valueOf(this.f18054b)});
    }

    public String toString() {
        return a.f18055b.serialize((a) this, false);
    }

    public C2989g(List<String> list) {
        this(list, 10L);
    }
}
