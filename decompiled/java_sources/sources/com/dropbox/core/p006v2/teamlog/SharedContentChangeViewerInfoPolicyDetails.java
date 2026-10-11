package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.ViewerInfoPolicy;
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
public class SharedContentChangeViewerInfoPolicyDetails {
    protected final ViewerInfoPolicy newValue;
    protected final ViewerInfoPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentChangeViewerInfoPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4048a extends StructSerializer<SharedContentChangeViewerInfoPolicyDetails> {

        /* renamed from: b */
        public static final C4048a f20324b = new C4048a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentChangeViewerInfoPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ViewerInfoPolicy viewerInfoPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ViewerInfoPolicy viewerInfoPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    viewerInfoPolicy = ViewerInfoPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    viewerInfoPolicy2 = (ViewerInfoPolicy) StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (viewerInfoPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetails = new SharedContentChangeViewerInfoPolicyDetails(viewerInfoPolicy, viewerInfoPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentChangeViewerInfoPolicyDetails, sharedContentChangeViewerInfoPolicyDetails.toStringMultiline());
            return sharedContentChangeViewerInfoPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            ViewerInfoPolicy.Serializer serializer = ViewerInfoPolicy.Serializer.INSTANCE;
            serializer.serialize(sharedContentChangeViewerInfoPolicyDetails.newValue, jsonGenerator);
            if (sharedContentChangeViewerInfoPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) sharedContentChangeViewerInfoPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentChangeViewerInfoPolicyDetails(ViewerInfoPolicy viewerInfoPolicy, ViewerInfoPolicy viewerInfoPolicy2) {
        if (viewerInfoPolicy != null) {
            this.newValue = viewerInfoPolicy;
            this.previousValue = viewerInfoPolicy2;
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
        SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetails = (SharedContentChangeViewerInfoPolicyDetails) obj;
        ViewerInfoPolicy viewerInfoPolicy = this.newValue;
        ViewerInfoPolicy viewerInfoPolicy2 = sharedContentChangeViewerInfoPolicyDetails.newValue;
        if (viewerInfoPolicy == viewerInfoPolicy2 || viewerInfoPolicy.equals(viewerInfoPolicy2)) {
            ViewerInfoPolicy viewerInfoPolicy3 = this.previousValue;
            ViewerInfoPolicy viewerInfoPolicy4 = sharedContentChangeViewerInfoPolicyDetails.previousValue;
            if (viewerInfoPolicy3 == viewerInfoPolicy4) {
                return true;
            }
            if (viewerInfoPolicy3 != null && viewerInfoPolicy3.equals(viewerInfoPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public ViewerInfoPolicy getNewValue() {
        return this.newValue;
    }

    public ViewerInfoPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4048a.f20324b.serialize((C4048a) this, false);
    }

    public String toStringMultiline() {
        return C4048a.f20324b.serialize((C4048a) this, true);
    }

    public SharedContentChangeViewerInfoPolicyDetails(ViewerInfoPolicy viewerInfoPolicy) {
        this(viewerInfoPolicy, null);
    }
}
