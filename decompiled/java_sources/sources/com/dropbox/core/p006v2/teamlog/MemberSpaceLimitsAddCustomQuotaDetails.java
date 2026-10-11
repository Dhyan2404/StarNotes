package com.dropbox.core.p006v2.teamlog;

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
public class MemberSpaceLimitsAddCustomQuotaDetails {
    protected final long newValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSpaceLimitsAddCustomQuotaDetails$a */
    /* loaded from: classes4.dex */
    public static class C3763a extends StructSerializer<MemberSpaceLimitsAddCustomQuotaDetails> {

        /* renamed from: b */
        public static final C3763a f20036b = new C3763a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSpaceLimitsAddCustomQuotaDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("new_value".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberSpaceLimitsAddCustomQuotaDetails memberSpaceLimitsAddCustomQuotaDetails = new MemberSpaceLimitsAddCustomQuotaDetails(l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberSpaceLimitsAddCustomQuotaDetails, memberSpaceLimitsAddCustomQuotaDetails.toStringMultiline());
            return memberSpaceLimitsAddCustomQuotaDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSpaceLimitsAddCustomQuotaDetails memberSpaceLimitsAddCustomQuotaDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(memberSpaceLimitsAddCustomQuotaDetails.newValue), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberSpaceLimitsAddCustomQuotaDetails(long j) {
        this.newValue = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.newValue == ((MemberSpaceLimitsAddCustomQuotaDetails) obj).newValue;
    }

    public long getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.newValue)});
    }

    public String toString() {
        return C3763a.f20036b.serialize((C3763a) this, false);
    }

    public String toStringMultiline() {
        return C3763a.f20036b.serialize((C3763a) this, true);
    }
}
