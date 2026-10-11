package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SharingMemberPolicy;
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
public class SharingChangeMemberPolicyDetails {
    protected final SharingMemberPolicy newValue;
    protected final SharingMemberPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharingChangeMemberPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4146a extends StructSerializer<SharingChangeMemberPolicyDetails> {

        /* renamed from: b */
        public static final C4146a f20422b = new C4146a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingChangeMemberPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharingMemberPolicy sharingMemberPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SharingMemberPolicy sharingMemberPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    sharingMemberPolicy = SharingMemberPolicy.C4153b.f20429b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    sharingMemberPolicy2 = (SharingMemberPolicy) StoneSerializers.nullable(SharingMemberPolicy.C4153b.f20429b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (sharingMemberPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetails = new SharingChangeMemberPolicyDetails(sharingMemberPolicy, sharingMemberPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharingChangeMemberPolicyDetails, sharingChangeMemberPolicyDetails.toStringMultiline());
            return sharingChangeMemberPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            SharingMemberPolicy.C4153b c4153b = SharingMemberPolicy.C4153b.f20429b;
            c4153b.serialize(sharingChangeMemberPolicyDetails.newValue, jsonGenerator);
            if (sharingChangeMemberPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c4153b).serialize((StoneSerializer) sharingChangeMemberPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharingChangeMemberPolicyDetails(SharingMemberPolicy sharingMemberPolicy, SharingMemberPolicy sharingMemberPolicy2) {
        if (sharingMemberPolicy != null) {
            this.newValue = sharingMemberPolicy;
            this.previousValue = sharingMemberPolicy2;
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
        SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetails = (SharingChangeMemberPolicyDetails) obj;
        SharingMemberPolicy sharingMemberPolicy = this.newValue;
        SharingMemberPolicy sharingMemberPolicy2 = sharingChangeMemberPolicyDetails.newValue;
        if (sharingMemberPolicy == sharingMemberPolicy2 || sharingMemberPolicy.equals(sharingMemberPolicy2)) {
            SharingMemberPolicy sharingMemberPolicy3 = this.previousValue;
            SharingMemberPolicy sharingMemberPolicy4 = sharingChangeMemberPolicyDetails.previousValue;
            if (sharingMemberPolicy3 == sharingMemberPolicy4) {
                return true;
            }
            if (sharingMemberPolicy3 != null && sharingMemberPolicy3.equals(sharingMemberPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public SharingMemberPolicy getNewValue() {
        return this.newValue;
    }

    public SharingMemberPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4146a.f20422b.serialize((C4146a) this, false);
    }

    public String toStringMultiline() {
        return C4146a.f20422b.serialize((C4146a) this, true);
    }

    public SharingChangeMemberPolicyDetails(SharingMemberPolicy sharingMemberPolicy) {
        this(sharingMemberPolicy, null);
    }
}
