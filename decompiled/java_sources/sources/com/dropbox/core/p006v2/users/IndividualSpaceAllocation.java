package com.dropbox.core.p006v2.users;

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

/* loaded from: classes4.dex */
public class IndividualSpaceAllocation {
    protected final long allocated;

    /* renamed from: com.dropbox.core.v2.users.IndividualSpaceAllocation$a */
    /* loaded from: classes4.dex */
    public static class C4439a extends StructSerializer<IndividualSpaceAllocation> {

        /* renamed from: b */
        public static final C4439a f20739b = new C4439a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IndividualSpaceAllocation deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("allocated".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"allocated\" missing.");
            }
            IndividualSpaceAllocation individualSpaceAllocation = new IndividualSpaceAllocation(l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(individualSpaceAllocation, individualSpaceAllocation.toStringMultiline());
            return individualSpaceAllocation;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(IndividualSpaceAllocation individualSpaceAllocation, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("allocated");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(individualSpaceAllocation.allocated), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public IndividualSpaceAllocation(long j) {
        this.allocated = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.allocated == ((IndividualSpaceAllocation) obj).allocated;
    }

    public long getAllocated() {
        return this.allocated;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.allocated)});
    }

    public String toString() {
        return C4439a.f20739b.serialize((C4439a) this, false);
    }

    public String toStringMultiline() {
        return C4439a.f20739b.serialize((C4439a) this, true);
    }
}
