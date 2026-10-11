package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SharingLinkPolicy;
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
public class SharingChangeLinkPolicyDetails {
    protected final SharingLinkPolicy newValue;
    protected final SharingLinkPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharingChangeLinkPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4144a extends StructSerializer<SharingChangeLinkPolicyDetails> {

        /* renamed from: b */
        public static final C4144a f20420b = new C4144a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingChangeLinkPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharingLinkPolicy sharingLinkPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SharingLinkPolicy sharingLinkPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    sharingLinkPolicy = SharingLinkPolicy.C4151b.f20427b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    sharingLinkPolicy2 = (SharingLinkPolicy) StoneSerializers.nullable(SharingLinkPolicy.C4151b.f20427b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (sharingLinkPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetails = new SharingChangeLinkPolicyDetails(sharingLinkPolicy, sharingLinkPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharingChangeLinkPolicyDetails, sharingChangeLinkPolicyDetails.toStringMultiline());
            return sharingChangeLinkPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            SharingLinkPolicy.C4151b c4151b = SharingLinkPolicy.C4151b.f20427b;
            c4151b.serialize(sharingChangeLinkPolicyDetails.newValue, jsonGenerator);
            if (sharingChangeLinkPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c4151b).serialize((StoneSerializer) sharingChangeLinkPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharingChangeLinkPolicyDetails(SharingLinkPolicy sharingLinkPolicy, SharingLinkPolicy sharingLinkPolicy2) {
        if (sharingLinkPolicy != null) {
            this.newValue = sharingLinkPolicy;
            this.previousValue = sharingLinkPolicy2;
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
        SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetails = (SharingChangeLinkPolicyDetails) obj;
        SharingLinkPolicy sharingLinkPolicy = this.newValue;
        SharingLinkPolicy sharingLinkPolicy2 = sharingChangeLinkPolicyDetails.newValue;
        if (sharingLinkPolicy == sharingLinkPolicy2 || sharingLinkPolicy.equals(sharingLinkPolicy2)) {
            SharingLinkPolicy sharingLinkPolicy3 = this.previousValue;
            SharingLinkPolicy sharingLinkPolicy4 = sharingChangeLinkPolicyDetails.previousValue;
            if (sharingLinkPolicy3 == sharingLinkPolicy4) {
                return true;
            }
            if (sharingLinkPolicy3 != null && sharingLinkPolicy3.equals(sharingLinkPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public SharingLinkPolicy getNewValue() {
        return this.newValue;
    }

    public SharingLinkPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4144a.f20420b.serialize((C4144a) this, false);
    }

    public String toStringMultiline() {
        return C4144a.f20420b.serialize((C4144a) this, true);
    }

    public SharingChangeLinkPolicyDetails(SharingLinkPolicy sharingLinkPolicy) {
        this(sharingLinkPolicy, null);
    }
}
