package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PaperMemberPolicy;
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
public class PaperChangeMemberPolicyDetails {
    protected final PaperMemberPolicy newValue;
    protected final PaperMemberPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperChangeMemberPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3842a extends StructSerializer<PaperChangeMemberPolicyDetails> {

        /* renamed from: b */
        public static final C3842a f20115b = new C3842a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperChangeMemberPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PaperMemberPolicy paperMemberPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PaperMemberPolicy paperMemberPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    paperMemberPolicy = PaperMemberPolicy.C3937b.f20210b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    paperMemberPolicy2 = (PaperMemberPolicy) StoneSerializers.nullable(PaperMemberPolicy.C3937b.f20210b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (paperMemberPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetails = new PaperChangeMemberPolicyDetails(paperMemberPolicy, paperMemberPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperChangeMemberPolicyDetails, paperChangeMemberPolicyDetails.toStringMultiline());
            return paperChangeMemberPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            PaperMemberPolicy.C3937b c3937b = PaperMemberPolicy.C3937b.f20210b;
            c3937b.serialize(paperChangeMemberPolicyDetails.newValue, jsonGenerator);
            if (paperChangeMemberPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3937b).serialize((StoneSerializer) paperChangeMemberPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperChangeMemberPolicyDetails(PaperMemberPolicy paperMemberPolicy, PaperMemberPolicy paperMemberPolicy2) {
        if (paperMemberPolicy != null) {
            this.newValue = paperMemberPolicy;
            this.previousValue = paperMemberPolicy2;
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
        PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetails = (PaperChangeMemberPolicyDetails) obj;
        PaperMemberPolicy paperMemberPolicy = this.newValue;
        PaperMemberPolicy paperMemberPolicy2 = paperChangeMemberPolicyDetails.newValue;
        if (paperMemberPolicy == paperMemberPolicy2 || paperMemberPolicy.equals(paperMemberPolicy2)) {
            PaperMemberPolicy paperMemberPolicy3 = this.previousValue;
            PaperMemberPolicy paperMemberPolicy4 = paperChangeMemberPolicyDetails.previousValue;
            if (paperMemberPolicy3 == paperMemberPolicy4) {
                return true;
            }
            if (paperMemberPolicy3 != null && paperMemberPolicy3.equals(paperMemberPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public PaperMemberPolicy getNewValue() {
        return this.newValue;
    }

    public PaperMemberPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3842a.f20115b.serialize((C3842a) this, false);
    }

    public String toStringMultiline() {
        return C3842a.f20115b.serialize((C3842a) this, true);
    }

    public PaperChangeMemberPolicyDetails(PaperMemberPolicy paperMemberPolicy) {
        this(paperMemberPolicy, null);
    }
}
