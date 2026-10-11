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
public class MemberSpaceLimitsChangePolicyDetails {
    protected final Long newValue;
    protected final Long previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Long previousValue = null;
        protected Long newValue = null;

        public MemberSpaceLimitsChangePolicyDetails build() {
            return new MemberSpaceLimitsChangePolicyDetails(this.previousValue, this.newValue);
        }

        public Builder withNewValue(Long l) {
            this.newValue = l;
            return this;
        }

        public Builder withPreviousValue(Long l) {
            this.previousValue = l;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSpaceLimitsChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3771a extends StructSerializer<MemberSpaceLimitsChangePolicyDetails> {

        /* renamed from: b */
        public static final C3771a f20044b = new C3771a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSpaceLimitsChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    l = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    l2 = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetails = new MemberSpaceLimitsChangePolicyDetails(l, l2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberSpaceLimitsChangePolicyDetails, memberSpaceLimitsChangePolicyDetails.toStringMultiline());
            return memberSpaceLimitsChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (memberSpaceLimitsChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) memberSpaceLimitsChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (memberSpaceLimitsChangePolicyDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) memberSpaceLimitsChangePolicyDetails.newValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberSpaceLimitsChangePolicyDetails(Long l, Long l2) {
        this.previousValue = l;
        this.newValue = l2;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetails = (MemberSpaceLimitsChangePolicyDetails) obj;
        Long l = this.previousValue;
        Long l2 = memberSpaceLimitsChangePolicyDetails.previousValue;
        if (l == l2 || (l != null && l.equals(l2))) {
            Long l3 = this.newValue;
            Long l4 = memberSpaceLimitsChangePolicyDetails.newValue;
            if (l3 == l4) {
                return true;
            }
            if (l3 != null && l3.equals(l4)) {
                return true;
            }
        }
        return false;
    }

    public Long getNewValue() {
        return this.newValue;
    }

    public Long getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C3771a.f20044b.serialize((C3771a) this, false);
    }

    public String toStringMultiline() {
        return C3771a.f20044b.serialize((C3771a) this, true);
    }

    public MemberSpaceLimitsChangePolicyDetails() {
        this(null, null);
    }
}
