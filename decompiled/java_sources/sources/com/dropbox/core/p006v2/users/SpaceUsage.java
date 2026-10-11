package com.dropbox.core.p006v2.users;

import com.dropbox.core.p006v2.users.SpaceAllocation;
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
public class SpaceUsage {
    protected final SpaceAllocation allocation;
    protected final long used;

    /* renamed from: com.dropbox.core.v2.users.SpaceUsage$a */
    /* loaded from: classes4.dex */
    public static class C4444a extends StructSerializer<SpaceUsage> {

        /* renamed from: b */
        public static final C4444a f20749b = new C4444a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpaceUsage deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SpaceAllocation spaceAllocation = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("used".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("allocation".equals(currentName)) {
                    spaceAllocation = SpaceAllocation.C4443b.f20748b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"used\" missing.");
            }
            if (spaceAllocation == null) {
                throw new JsonParseException(jsonParser, "Required field \"allocation\" missing.");
            }
            SpaceUsage spaceUsage = new SpaceUsage(l.longValue(), spaceAllocation);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(spaceUsage, spaceUsage.toStringMultiline());
            return spaceUsage;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SpaceUsage spaceUsage, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("used");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(spaceUsage.used), jsonGenerator);
            jsonGenerator.writeFieldName("allocation");
            SpaceAllocation.C4443b.f20748b.serialize(spaceUsage.allocation, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SpaceUsage(long j, SpaceAllocation spaceAllocation) {
        this.used = j;
        if (spaceAllocation == null) {
            throw new IllegalArgumentException("Required value for 'allocation' is null");
        }
        this.allocation = spaceAllocation;
    }

    public boolean equals(Object obj) {
        SpaceAllocation spaceAllocation;
        SpaceAllocation spaceAllocation2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SpaceUsage spaceUsage = (SpaceUsage) obj;
        return this.used == spaceUsage.used && ((spaceAllocation = this.allocation) == (spaceAllocation2 = spaceUsage.allocation) || spaceAllocation.equals(spaceAllocation2));
    }

    public SpaceAllocation getAllocation() {
        return this.allocation;
    }

    public long getUsed() {
        return this.used;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.used), this.allocation});
    }

    public String toString() {
        return C4444a.f20749b.serialize((C4444a) this, false);
    }

    public String toStringMultiline() {
        return C4444a.f20749b.serialize((C4444a) this, true);
    }
}
