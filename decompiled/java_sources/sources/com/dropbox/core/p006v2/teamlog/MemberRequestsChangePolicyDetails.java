package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.MemberRequestsPolicy;
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
public class MemberRequestsChangePolicyDetails {
    protected final MemberRequestsPolicy newValue;
    protected final MemberRequestsPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberRequestsChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3753a extends StructSerializer<MemberRequestsChangePolicyDetails> {

        /* renamed from: b */
        public static final C3753a f20026b = new C3753a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberRequestsChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MemberRequestsPolicy memberRequestsPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            MemberRequestsPolicy memberRequestsPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    memberRequestsPolicy = MemberRequestsPolicy.C3756b.f20029b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    memberRequestsPolicy2 = (MemberRequestsPolicy) StoneSerializers.nullable(MemberRequestsPolicy.C3756b.f20029b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberRequestsPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetails = new MemberRequestsChangePolicyDetails(memberRequestsPolicy, memberRequestsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberRequestsChangePolicyDetails, memberRequestsChangePolicyDetails.toStringMultiline());
            return memberRequestsChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            MemberRequestsPolicy.C3756b c3756b = MemberRequestsPolicy.C3756b.f20029b;
            c3756b.serialize(memberRequestsChangePolicyDetails.newValue, jsonGenerator);
            if (memberRequestsChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3756b).serialize((StoneSerializer) memberRequestsChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberRequestsChangePolicyDetails(MemberRequestsPolicy memberRequestsPolicy, MemberRequestsPolicy memberRequestsPolicy2) {
        if (memberRequestsPolicy != null) {
            this.newValue = memberRequestsPolicy;
            this.previousValue = memberRequestsPolicy2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetails = (MemberRequestsChangePolicyDetails) obj;
        MemberRequestsPolicy memberRequestsPolicy = this.newValue;
        MemberRequestsPolicy memberRequestsPolicy2 = memberRequestsChangePolicyDetails.newValue;
        if (memberRequestsPolicy == memberRequestsPolicy2 || memberRequestsPolicy.equals(memberRequestsPolicy2)) {
            MemberRequestsPolicy memberRequestsPolicy3 = this.previousValue;
            MemberRequestsPolicy memberRequestsPolicy4 = memberRequestsChangePolicyDetails.previousValue;
            if (memberRequestsPolicy3 == memberRequestsPolicy4) {
                return true;
            }
            if (memberRequestsPolicy3 != null && memberRequestsPolicy3.equals(memberRequestsPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public MemberRequestsPolicy getNewValue() {
        return this.newValue;
    }

    public MemberRequestsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3753a.f20026b.serialize((C3753a) this, false);
    }

    public String toStringMultiline() {
        return C3753a.f20026b.serialize((C3753a) this, true);
    }

    public MemberRequestsChangePolicyDetails(MemberRequestsPolicy memberRequestsPolicy) {
        this(memberRequestsPolicy, null);
    }
}
