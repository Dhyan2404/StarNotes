package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.MemberSuggestionsPolicy;
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
public class MemberSuggestionsChangePolicyDetails {
    protected final MemberSuggestionsPolicy newValue;
    protected final MemberSuggestionsPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSuggestionsChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3783a extends StructSerializer<MemberSuggestionsChangePolicyDetails> {

        /* renamed from: b */
        public static final C3783a f20056b = new C3783a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSuggestionsChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MemberSuggestionsPolicy memberSuggestionsPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            MemberSuggestionsPolicy memberSuggestionsPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    memberSuggestionsPolicy = MemberSuggestionsPolicy.C3786b.f20059b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    memberSuggestionsPolicy2 = (MemberSuggestionsPolicy) StoneSerializers.nullable(MemberSuggestionsPolicy.C3786b.f20059b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberSuggestionsPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetails = new MemberSuggestionsChangePolicyDetails(memberSuggestionsPolicy, memberSuggestionsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberSuggestionsChangePolicyDetails, memberSuggestionsChangePolicyDetails.toStringMultiline());
            return memberSuggestionsChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            MemberSuggestionsPolicy.C3786b c3786b = MemberSuggestionsPolicy.C3786b.f20059b;
            c3786b.serialize(memberSuggestionsChangePolicyDetails.newValue, jsonGenerator);
            if (memberSuggestionsChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3786b).serialize((StoneSerializer) memberSuggestionsChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberSuggestionsChangePolicyDetails(MemberSuggestionsPolicy memberSuggestionsPolicy, MemberSuggestionsPolicy memberSuggestionsPolicy2) {
        if (memberSuggestionsPolicy != null) {
            this.newValue = memberSuggestionsPolicy;
            this.previousValue = memberSuggestionsPolicy2;
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
        MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetails = (MemberSuggestionsChangePolicyDetails) obj;
        MemberSuggestionsPolicy memberSuggestionsPolicy = this.newValue;
        MemberSuggestionsPolicy memberSuggestionsPolicy2 = memberSuggestionsChangePolicyDetails.newValue;
        if (memberSuggestionsPolicy == memberSuggestionsPolicy2 || memberSuggestionsPolicy.equals(memberSuggestionsPolicy2)) {
            MemberSuggestionsPolicy memberSuggestionsPolicy3 = this.previousValue;
            MemberSuggestionsPolicy memberSuggestionsPolicy4 = memberSuggestionsChangePolicyDetails.previousValue;
            if (memberSuggestionsPolicy3 == memberSuggestionsPolicy4) {
                return true;
            }
            if (memberSuggestionsPolicy3 != null && memberSuggestionsPolicy3.equals(memberSuggestionsPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public MemberSuggestionsPolicy getNewValue() {
        return this.newValue;
    }

    public MemberSuggestionsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3783a.f20056b.serialize((C3783a) this, false);
    }

    public String toStringMultiline() {
        return C3783a.f20056b.serialize((C3783a) this, true);
    }

    public MemberSuggestionsChangePolicyDetails(MemberSuggestionsPolicy memberSuggestionsPolicy) {
        this(memberSuggestionsPolicy, null);
    }
}
