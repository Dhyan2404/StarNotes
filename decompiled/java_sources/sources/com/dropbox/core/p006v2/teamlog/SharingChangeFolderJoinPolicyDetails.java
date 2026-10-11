package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SharingFolderJoinPolicy;
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
public class SharingChangeFolderJoinPolicyDetails {
    protected final SharingFolderJoinPolicy newValue;
    protected final SharingFolderJoinPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharingChangeFolderJoinPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4142a extends StructSerializer<SharingChangeFolderJoinPolicyDetails> {

        /* renamed from: b */
        public static final C4142a f20418b = new C4142a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingChangeFolderJoinPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharingFolderJoinPolicy sharingFolderJoinPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SharingFolderJoinPolicy sharingFolderJoinPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    sharingFolderJoinPolicy = SharingFolderJoinPolicy.C4149b.f20425b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    sharingFolderJoinPolicy2 = (SharingFolderJoinPolicy) StoneSerializers.nullable(SharingFolderJoinPolicy.C4149b.f20425b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (sharingFolderJoinPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetails = new SharingChangeFolderJoinPolicyDetails(sharingFolderJoinPolicy, sharingFolderJoinPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharingChangeFolderJoinPolicyDetails, sharingChangeFolderJoinPolicyDetails.toStringMultiline());
            return sharingChangeFolderJoinPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            SharingFolderJoinPolicy.C4149b c4149b = SharingFolderJoinPolicy.C4149b.f20425b;
            c4149b.serialize(sharingChangeFolderJoinPolicyDetails.newValue, jsonGenerator);
            if (sharingChangeFolderJoinPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c4149b).serialize((StoneSerializer) sharingChangeFolderJoinPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharingChangeFolderJoinPolicyDetails(SharingFolderJoinPolicy sharingFolderJoinPolicy, SharingFolderJoinPolicy sharingFolderJoinPolicy2) {
        if (sharingFolderJoinPolicy != null) {
            this.newValue = sharingFolderJoinPolicy;
            this.previousValue = sharingFolderJoinPolicy2;
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
        SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetails = (SharingChangeFolderJoinPolicyDetails) obj;
        SharingFolderJoinPolicy sharingFolderJoinPolicy = this.newValue;
        SharingFolderJoinPolicy sharingFolderJoinPolicy2 = sharingChangeFolderJoinPolicyDetails.newValue;
        if (sharingFolderJoinPolicy == sharingFolderJoinPolicy2 || sharingFolderJoinPolicy.equals(sharingFolderJoinPolicy2)) {
            SharingFolderJoinPolicy sharingFolderJoinPolicy3 = this.previousValue;
            SharingFolderJoinPolicy sharingFolderJoinPolicy4 = sharingChangeFolderJoinPolicyDetails.previousValue;
            if (sharingFolderJoinPolicy3 == sharingFolderJoinPolicy4) {
                return true;
            }
            if (sharingFolderJoinPolicy3 != null && sharingFolderJoinPolicy3.equals(sharingFolderJoinPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public SharingFolderJoinPolicy getNewValue() {
        return this.newValue;
    }

    public SharingFolderJoinPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4142a.f20418b.serialize((C4142a) this, false);
    }

    public String toStringMultiline() {
        return C4142a.f20418b.serialize((C4142a) this, true);
    }

    public SharingChangeFolderJoinPolicyDetails(SharingFolderJoinPolicy sharingFolderJoinPolicy) {
        this(sharingFolderJoinPolicy, null);
    }
}
