package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PaperMemberPolicy;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class PaperChangeMemberLinkPolicyDetails {
    protected final PaperMemberPolicy newValue;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperChangeMemberLinkPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3840a extends StructSerializer<PaperChangeMemberLinkPolicyDetails> {

        /* renamed from: b */
        public static final C3840a f20113b = new C3840a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperChangeMemberLinkPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    paperMemberPolicy = PaperMemberPolicy.C3937b.f20210b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (paperMemberPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            PaperChangeMemberLinkPolicyDetails paperChangeMemberLinkPolicyDetails = new PaperChangeMemberLinkPolicyDetails(paperMemberPolicy);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperChangeMemberLinkPolicyDetails, paperChangeMemberLinkPolicyDetails.toStringMultiline());
            return paperChangeMemberLinkPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperChangeMemberLinkPolicyDetails paperChangeMemberLinkPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            PaperMemberPolicy.C3937b.f20210b.serialize(paperChangeMemberLinkPolicyDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperChangeMemberLinkPolicyDetails(PaperMemberPolicy paperMemberPolicy) {
        if (paperMemberPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = paperMemberPolicy;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperMemberPolicy paperMemberPolicy = this.newValue;
        PaperMemberPolicy paperMemberPolicy2 = ((PaperChangeMemberLinkPolicyDetails) obj).newValue;
        return paperMemberPolicy == paperMemberPolicy2 || paperMemberPolicy.equals(paperMemberPolicy2);
    }

    public PaperMemberPolicy getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue});
    }

    public String toString() {
        return C3840a.f20113b.serialize((C3840a) this, false);
    }

    public String toStringMultiline() {
        return C3840a.f20113b.serialize((C3840a) this, true);
    }
}
