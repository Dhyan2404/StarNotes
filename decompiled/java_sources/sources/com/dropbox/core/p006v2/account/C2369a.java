package com.dropbox.core.p006v2.account;

import com.dropbox.core.p006v2.account.PhotoSourceArg;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.event.StatisticsStoolbarPageAdd;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.dropbox.core.v2.account.a */
/* loaded from: classes4.dex */
public class C2369a {

    /* renamed from: a */
    public final PhotoSourceArg f16794a;

    /* renamed from: com.dropbox.core.v2.account.a$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2369a> {

        /* renamed from: b */
        public static final a f16795b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2369a deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PhotoSourceArg photoSourceArg = null;
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
                if (StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO.equals(currentName)) {
                    photoSourceArg = PhotoSourceArg.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (photoSourceArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"photo\" missing.");
            }
            C2369a c2369a = new C2369a(photoSourceArg);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2369a, c2369a.m10233b());
            return c2369a;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2369a c2369a, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO);
            PhotoSourceArg.Serializer.INSTANCE.serialize(c2369a.f16794a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2369a(PhotoSourceArg photoSourceArg) {
        if (photoSourceArg == null) {
            throw new IllegalArgumentException("Required value for 'photo' is null");
        }
        this.f16794a = photoSourceArg;
    }

    /* renamed from: a */
    public PhotoSourceArg m10232a() {
        return this.f16794a;
    }

    /* renamed from: b */
    public String m10233b() {
        return a.f16795b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PhotoSourceArg photoSourceArg = this.f16794a;
        PhotoSourceArg photoSourceArg2 = ((C2369a) obj).f16794a;
        return photoSourceArg == photoSourceArg2 || photoSourceArg.equals(photoSourceArg2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16794a});
    }

    public String toString() {
        return a.f16795b.serialize((a) this, false);
    }
}
