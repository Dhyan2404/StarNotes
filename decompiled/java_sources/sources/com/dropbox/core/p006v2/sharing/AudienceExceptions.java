package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AudienceExceptionContentInfo;
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

/* loaded from: classes4.dex */
public class AudienceExceptions {
    protected final long count;
    protected final List<AudienceExceptionContentInfo> exceptions;

    /* renamed from: com.dropbox.core.v2.sharing.AudienceExceptions$a */
    /* loaded from: classes4.dex */
    public static class C2807a extends StructSerializer<AudienceExceptions> {

        /* renamed from: b */
        public static final C2807a f17691b = new C2807a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AudienceExceptions deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
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
                if ("count".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else if ("exceptions".equals(currentName)) {
                    list = (List) StoneSerializers.list(AudienceExceptionContentInfo.C2806a.f17690b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"count\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"exceptions\" missing.");
            }
            AudienceExceptions audienceExceptions = new AudienceExceptions(l.longValue(), list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(audienceExceptions, audienceExceptions.toStringMultiline());
            return audienceExceptions;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AudienceExceptions audienceExceptions, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("count");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(audienceExceptions.count), jsonGenerator);
            jsonGenerator.writeFieldName("exceptions");
            StoneSerializers.list(AudienceExceptionContentInfo.C2806a.f17690b).serialize((StoneSerializer) audienceExceptions.exceptions, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AudienceExceptions(long j, List<AudienceExceptionContentInfo> list) {
        this.count = j;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'exceptions' is null");
        }
        Iterator<AudienceExceptionContentInfo> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'exceptions' is null");
            }
        }
        this.exceptions = list;
    }

    public boolean equals(Object obj) {
        List<AudienceExceptionContentInfo> list;
        List<AudienceExceptionContentInfo> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AudienceExceptions audienceExceptions = (AudienceExceptions) obj;
        return this.count == audienceExceptions.count && ((list = this.exceptions) == (list2 = audienceExceptions.exceptions) || list.equals(list2));
    }

    public long getCount() {
        return this.count;
    }

    public List<AudienceExceptionContentInfo> getExceptions() {
        return this.exceptions;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.count), this.exceptions});
    }

    public String toString() {
        return C2807a.f17691b.serialize((C2807a) this, false);
    }

    public String toStringMultiline() {
        return C2807a.f17691b.serialize((C2807a) this, true);
    }
}
