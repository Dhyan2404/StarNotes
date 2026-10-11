package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.Content;
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
import java.util.regex.Pattern;

/* renamed from: com.dropbox.core.v2.clouddocs.e */
/* loaded from: classes4.dex */
public class C2419e {

    /* renamed from: a */
    public final String f16884a;

    /* renamed from: b */
    public final List<String> f16885b;

    /* renamed from: c */
    public final List<Content> f16886c;

    /* renamed from: com.dropbox.core.v2.clouddocs.e$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2419e> {

        /* renamed from: b */
        public static final a f16887b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2419e deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            List list = null;
            List list2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("actor_tokens".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("additional_contents".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(Content.C2387a.f16830b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file_id\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"actor_tokens\" missing.");
            }
            C2419e c2419e = new C2419e(str2, list, list2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2419e, c2419e.m10354d());
            return c2419e;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2419e c2419e, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2419e.f16884a, jsonGenerator);
            jsonGenerator.writeFieldName("actor_tokens");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) c2419e.f16885b, jsonGenerator);
            if (c2419e.f16886c != null) {
                jsonGenerator.writeFieldName("additional_contents");
                StoneSerializers.nullable(StoneSerializers.list(Content.C2387a.f16830b)).serialize((StoneSerializer) c2419e.f16886c, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2419e(String str, List<String> list, List<Content> list2) {
        if (str != null) {
            if (str.length() >= 4) {
                if (Pattern.matches("id:.+", str)) {
                    this.f16884a = str;
                    if (list != null) {
                        Iterator<String> it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (it2.next() == null) {
                                throw new IllegalArgumentException("An item in list 'actorTokens' is null");
                            }
                        }
                        this.f16885b = list;
                        if (list2 != null) {
                            Iterator<Content> it3 = list2.iterator();
                            while (it3.hasNext()) {
                                if (it3.next() == null) {
                                    throw new IllegalArgumentException("An item in list 'additionalContents' is null");
                                }
                            }
                        }
                        this.f16886c = list2;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'actorTokens' is null");
                }
                throw new IllegalArgumentException("String 'fileId' does not match pattern");
            }
            throw new IllegalArgumentException("String 'fileId' is shorter than 4");
        }
        throw new IllegalArgumentException("Required value for 'fileId' is null");
    }

    /* renamed from: a */
    public List<String> m10351a() {
        return this.f16885b;
    }

    /* renamed from: b */
    public List<Content> m10352b() {
        return this.f16886c;
    }

    /* renamed from: c */
    public String m10353c() {
        return this.f16884a;
    }

    /* renamed from: d */
    public String m10354d() {
        return a.f16887b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        List<String> list;
        List<String> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2419e c2419e = (C2419e) obj;
        String str = this.f16884a;
        String str2 = c2419e.f16884a;
        if ((str == str2 || str.equals(str2)) && ((list = this.f16885b) == (list2 = c2419e.f16885b) || list.equals(list2))) {
            List<Content> list3 = this.f16886c;
            List<Content> list4 = c2419e.f16886c;
            if (list3 == list4) {
                return true;
            }
            if (list3 != null && list3.equals(list4)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16884a, this.f16885b, this.f16886c});
    }

    public String toString() {
        return a.f16887b.serialize((a) this, false);
    }

    public C2419e(String str, List<String> list) {
        this(str, list, null);
    }
}
