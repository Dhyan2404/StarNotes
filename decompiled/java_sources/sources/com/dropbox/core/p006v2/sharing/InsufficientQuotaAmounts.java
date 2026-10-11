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

/* loaded from: classes4.dex */
public class InsufficientQuotaAmounts {
    protected final long spaceLeft;
    protected final long spaceNeeded;
    protected final long spaceShortage;

    /* renamed from: com.dropbox.core.v2.sharing.InsufficientQuotaAmounts$a */
    /* loaded from: classes4.dex */
    public static class C2846a extends StructSerializer<InsufficientQuotaAmounts> {

        /* renamed from: b */
        public static final C2846a f17766b = new C2846a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public InsufficientQuotaAmounts deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l2 = null;
            Long l3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("space_needed".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("space_shortage".equals(currentName)) {
                    l2 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("space_left".equals(currentName)) {
                    l3 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"space_needed\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"space_shortage\" missing.");
            }
            if (l3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"space_left\" missing.");
            }
            InsufficientQuotaAmounts insufficientQuotaAmounts = new InsufficientQuotaAmounts(l.longValue(), l2.longValue(), l3.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(insufficientQuotaAmounts, insufficientQuotaAmounts.toStringMultiline());
            return insufficientQuotaAmounts;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(InsufficientQuotaAmounts insufficientQuotaAmounts, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("space_needed");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(insufficientQuotaAmounts.spaceNeeded), jsonGenerator);
            jsonGenerator.writeFieldName("space_shortage");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(insufficientQuotaAmounts.spaceShortage), jsonGenerator);
            jsonGenerator.writeFieldName("space_left");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(insufficientQuotaAmounts.spaceLeft), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public InsufficientQuotaAmounts(long j, long j2, long j3) {
        this.spaceNeeded = j;
        this.spaceShortage = j2;
        this.spaceLeft = j3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        InsufficientQuotaAmounts insufficientQuotaAmounts = (InsufficientQuotaAmounts) obj;
        return this.spaceNeeded == insufficientQuotaAmounts.spaceNeeded && this.spaceShortage == insufficientQuotaAmounts.spaceShortage && this.spaceLeft == insufficientQuotaAmounts.spaceLeft;
    }

    public long getSpaceLeft() {
        return this.spaceLeft;
    }

    public long getSpaceNeeded() {
        return this.spaceNeeded;
    }

    public long getSpaceShortage() {
        return this.spaceShortage;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.spaceNeeded), Long.valueOf(this.spaceShortage), Long.valueOf(this.spaceLeft)});
    }

    public String toString() {
        return C2846a.f17766b.serialize((C2846a) this, false);
    }

    public String toStringMultiline() {
        return C2846a.f17766b.serialize((C2846a) this, true);
    }
}
