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

/* renamed from: com.dropbox.core.v2.team.i0 */
/* loaded from: classes4.dex */
public class C3293i0 {

    /* renamed from: a */
    public final List<UserSecondaryEmailsArg> f18621a;

    /* renamed from: com.dropbox.core.v2.team.i0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3293i0> {

        /* renamed from: b */
        public static final a f18622b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3293i0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("emails_to_resend".equals(currentName)) {
                    list = (List) StoneSerializers.list(UserSecondaryEmailsArg.C3272a.f18575b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"emails_to_resend\" missing.");
            }
            C3293i0 c3293i0 = new C3293i0(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3293i0, c3293i0.m12892b());
            return c3293i0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3293i0 c3293i0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("emails_to_resend");
            StoneSerializers.list(UserSecondaryEmailsArg.C3272a.f18575b).serialize((StoneSerializer) c3293i0.f18621a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3293i0(List<UserSecondaryEmailsArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'emailsToResend' is null");
        }
        Iterator<UserSecondaryEmailsArg> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'emailsToResend' is null");
            }
        }
        this.f18621a = list;
    }

    /* renamed from: a */
    public List<UserSecondaryEmailsArg> m12891a() {
        return this.f18621a;
    }

    /* renamed from: b */
    public String m12892b() {
        return a.f18622b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UserSecondaryEmailsArg> list = this.f18621a;
        List<UserSecondaryEmailsArg> list2 = ((C3293i0) obj).f18621a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18621a});
    }

    public String toString() {
        return a.f18622b.serialize((a) this, false);
    }
}
