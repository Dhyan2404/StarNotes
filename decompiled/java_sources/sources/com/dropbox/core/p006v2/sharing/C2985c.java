package com.dropbox.core.p006v2.sharing;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.p006v2.sharing.FileAction;
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

/* renamed from: com.dropbox.core.v2.sharing.c */
/* loaded from: classes4.dex */
public class C2985c {

    /* renamed from: a */
    public final String f18042a;

    /* renamed from: b */
    public final List<FileAction> f18043b;

    /* renamed from: com.dropbox.core.v2.sharing.c$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2985c> {

        /* renamed from: b */
        public static final a f18044b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2985c deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(FileAction.C2817b.f17713b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file\" missing.");
            }
            C2985c c2985c = new C2985c(str2, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2985c, c2985c.m12003c());
            return c2985c;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2985c c2985c, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2985c.f18042a, jsonGenerator);
            if (c2985c.f18043b != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(FileAction.C2817b.f17713b)).serialize((StoneSerializer) c2985c.f18043b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2985c(String str, List<FileAction> list) {
        if (str != null) {
            if (str.length() >= 1) {
                if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                    this.f18042a = str;
                    if (list != null) {
                        Iterator<FileAction> it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (it2.next() == null) {
                                throw new IllegalArgumentException("An item in list 'actions' is null");
                            }
                        }
                    }
                    this.f18043b = list;
                    return;
                }
                throw new IllegalArgumentException("String 'file' does not match pattern");
            }
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'file' is null");
    }

    /* renamed from: a */
    public List<FileAction> m12001a() {
        return this.f18043b;
    }

    /* renamed from: b */
    public String m12002b() {
        return this.f18042a;
    }

    /* renamed from: c */
    public String m12003c() {
        return a.f18044b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2985c c2985c = (C2985c) obj;
        String str = this.f18042a;
        String str2 = c2985c.f18042a;
        if (str == str2 || str.equals(str2)) {
            List<FileAction> list = this.f18043b;
            List<FileAction> list2 = c2985c.f18043b;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18042a, this.f18043b});
    }

    public String toString() {
        return a.f18044b.serialize((a) this, false);
    }

    public C2985c(String str) {
        this(str, null);
    }
}
