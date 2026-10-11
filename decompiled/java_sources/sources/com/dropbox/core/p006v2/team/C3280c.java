package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserSecondaryEmailsArg;
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

/* renamed from: com.dropbox.core.v2.team.c */
/* loaded from: classes4.dex */
public class C3280c {

    /* renamed from: a */
    public final List<UserSecondaryEmailsArg> f18591a;

    /* renamed from: com.dropbox.core.v2.team.c$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3280c> {

        /* renamed from: b */
        public static final a f18592b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3280c deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("emails_to_delete".equals(currentName)) {
                    list = (List) StoneSerializers.list(UserSecondaryEmailsArg.C3272a.f18575b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"emails_to_delete\" missing.");
            }
            C3280c c3280c = new C3280c(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3280c, c3280c.m12837b());
            return c3280c;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3280c c3280c, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("emails_to_delete");
            StoneSerializers.list(UserSecondaryEmailsArg.C3272a.f18575b).serialize((StoneSerializer) c3280c.f18591a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3280c(List<UserSecondaryEmailsArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'emailsToDelete' is null");
        }
        Iterator<UserSecondaryEmailsArg> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'emailsToDelete' is null");
            }
        }
        this.f18591a = list;
    }

    /* renamed from: a */
    public List<UserSecondaryEmailsArg> m12836a() {
        return this.f18591a;
    }

    /* renamed from: b */
    public String m12837b() {
        return a.f18592b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UserSecondaryEmailsArg> list = this.f18591a;
        List<UserSecondaryEmailsArg> list2 = ((C3280c) obj).f18591a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18591a});
    }

    public String toString() {
        return a.f18592b.serialize((a) this, false);
    }
}
