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

/* renamed from: com.dropbox.core.v2.sharing.d */
/* loaded from: classes4.dex */
public class C2986d {

    /* renamed from: a */
    public final List<String> f18045a;

    /* renamed from: b */
    public final List<FileAction> f18046b;

    /* renamed from: com.dropbox.core.v2.sharing.d$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2986d> {

        /* renamed from: b */
        public static final a f18047b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2986d deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("files".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(FileAction.C2817b.f17713b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"files\" missing.");
            }
            C2986d c2986d = new C2986d(list, list2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2986d, c2986d.m12008c());
            return c2986d;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2986d c2986d, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("files");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) c2986d.f18045a, jsonGenerator);
            if (c2986d.f18046b != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(FileAction.C2817b.f17713b)).serialize((StoneSerializer) c2986d.f18046b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2986d(List<String> list, List<FileAction> list2) {
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
                this.f18045a = list;
                if (list2 != null) {
                    Iterator<FileAction> it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'actions' is null");
                        }
                    }
                }
                this.f18046b = list2;
                return;
            }
            throw new IllegalArgumentException("List 'files' has more than 100 items");
        }
        throw new IllegalArgumentException("Required value for 'files' is null");
    }

    /* renamed from: a */
    public List<FileAction> m12006a() {
        return this.f18046b;
    }

    /* renamed from: b */
    public List<String> m12007b() {
        return this.f18045a;
    }

    /* renamed from: c */
    public String m12008c() {
        return a.f18047b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2986d c2986d = (C2986d) obj;
        List<String> list = this.f18045a;
        List<String> list2 = c2986d.f18045a;
        if (list == list2 || list.equals(list2)) {
            List<FileAction> list3 = this.f18046b;
            List<FileAction> list4 = c2986d.f18046b;
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
        return Arrays.hashCode(new Object[]{this.f18045a, this.f18046b});
    }

    public String toString() {
        return a.f18047b.serialize((a) this, false);
    }

    public C2986d(List<String> list) {
        this(list, null);
    }
}
