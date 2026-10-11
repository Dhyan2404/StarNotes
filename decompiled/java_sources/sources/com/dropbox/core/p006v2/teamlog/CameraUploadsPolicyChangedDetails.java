package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.CameraUploadsPolicy;
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
public class CameraUploadsPolicyChangedDetails {
    protected final CameraUploadsPolicy newValue;
    protected final CameraUploadsPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.CameraUploadsPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3388a extends StructSerializer<CameraUploadsPolicyChangedDetails> {

        /* renamed from: b */
        public static final C3388a f18775b = new C3388a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CameraUploadsPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            CameraUploadsPolicy cameraUploadsPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            CameraUploadsPolicy cameraUploadsPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    cameraUploadsPolicy = CameraUploadsPolicy.C3387b.f18774b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    cameraUploadsPolicy2 = CameraUploadsPolicy.C3387b.f18774b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (cameraUploadsPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (cameraUploadsPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            CameraUploadsPolicyChangedDetails cameraUploadsPolicyChangedDetails = new CameraUploadsPolicyChangedDetails(cameraUploadsPolicy, cameraUploadsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(cameraUploadsPolicyChangedDetails, cameraUploadsPolicyChangedDetails.toStringMultiline());
            return cameraUploadsPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CameraUploadsPolicyChangedDetails cameraUploadsPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            CameraUploadsPolicy.C3387b c3387b = CameraUploadsPolicy.C3387b.f18774b;
            c3387b.serialize(cameraUploadsPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3387b.serialize(cameraUploadsPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CameraUploadsPolicyChangedDetails(CameraUploadsPolicy cameraUploadsPolicy, CameraUploadsPolicy cameraUploadsPolicy2) {
        if (cameraUploadsPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = cameraUploadsPolicy;
        if (cameraUploadsPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = cameraUploadsPolicy2;
    }

    public boolean equals(Object obj) {
        CameraUploadsPolicy cameraUploadsPolicy;
        CameraUploadsPolicy cameraUploadsPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CameraUploadsPolicyChangedDetails cameraUploadsPolicyChangedDetails = (CameraUploadsPolicyChangedDetails) obj;
        CameraUploadsPolicy cameraUploadsPolicy3 = this.newValue;
        CameraUploadsPolicy cameraUploadsPolicy4 = cameraUploadsPolicyChangedDetails.newValue;
        return (cameraUploadsPolicy3 == cameraUploadsPolicy4 || cameraUploadsPolicy3.equals(cameraUploadsPolicy4)) && ((cameraUploadsPolicy = this.previousValue) == (cameraUploadsPolicy2 = cameraUploadsPolicyChangedDetails.previousValue) || cameraUploadsPolicy.equals(cameraUploadsPolicy2));
    }

    public CameraUploadsPolicy getNewValue() {
        return this.newValue;
    }

    public CameraUploadsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3388a.f18775b.serialize((C3388a) this, false);
    }

    public String toStringMultiline() {
        return C3388a.f18775b.serialize((C3388a) this, true);
    }
}
