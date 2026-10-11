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
public class MemberSpaceLimitsChangeCustomQuotaDetails {
    protected final long newValue;
    protected final long previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSpaceLimitsChangeCustomQuotaDetails$a */
    /* loaded from: classes4.dex */
    public static class C3769a extends StructSerializer<MemberSpaceLimitsChangeCustomQuotaDetails> {

        /* renamed from: b */
        public static final C3769a f20042b = new C3769a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSpaceLimitsChangeCustomQuotaDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    l2 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberSpaceLimitsChangeCustomQuotaDetails memberSpaceLimitsChangeCustomQuotaDetails = new MemberSpaceLimitsChangeCustomQuotaDetails(l.longValue(), l2.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberSpaceLimitsChangeCustomQuotaDetails, memberSpaceLimitsChangeCustomQuotaDetails.toStringMultiline());
            return memberSpaceLimitsChangeCustomQuotaDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSpaceLimitsChangeCustomQuotaDetails memberSpaceLimitsChangeCustomQuotaDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(memberSpaceLimitsChangeCustomQuotaDetails.previousValue), jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(memberSpaceLimitsChangeCustomQuotaDetails.newValue), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberSpaceLimitsChangeCustomQuotaDetails(long j, long j2) {
        this.previousValue = j;
        this.newValue = j2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberSpaceLimitsChangeCustomQuotaDetails memberSpaceLimitsChangeCustomQuotaDetails = (MemberSpaceLimitsChangeCustomQuotaDetails) obj;
        return this.previousValue == memberSpaceLimitsChangeCustomQuotaDetails.previousValue && this.newValue == memberSpaceLimitsChangeCustomQuotaDetails.newValue;
    }

    public long getNewValue() {
        return this.newValue;
    }

    public long getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.previousValue), Long.valueOf(this.newValue)});
    }

    public String toString() {
        return C3769a.f20042b.serialize((C3769a) this, false);
    }

    public String toStringMultiline() {
        return C3769a.f20042b.serialize((C3769a) this, true);
    }
}
