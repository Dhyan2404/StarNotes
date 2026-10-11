package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.SharedLinkPolicy;
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
public class SharedFolderChangeLinkPolicyDetails {
    protected final SharedLinkPolicy newValue;
    protected final SharedLinkPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderChangeLinkPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4076a extends StructSerializer<SharedFolderChangeLinkPolicyDetails> {

        /* renamed from: b */
        public static final C4076a f20352b = new C4076a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderChangeLinkPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharedLinkPolicy sharedLinkPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SharedLinkPolicy sharedLinkPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    sharedLinkPolicy = SharedLinkPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    sharedLinkPolicy2 = (SharedLinkPolicy) StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (sharedLinkPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetails = new SharedFolderChangeLinkPolicyDetails(sharedLinkPolicy, sharedLinkPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderChangeLinkPolicyDetails, sharedFolderChangeLinkPolicyDetails.toStringMultiline());
            return sharedFolderChangeLinkPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            SharedLinkPolicy.Serializer serializer = SharedLinkPolicy.Serializer.INSTANCE;
            serializer.serialize(sharedFolderChangeLinkPolicyDetails.newValue, jsonGenerator);
            if (sharedFolderChangeLinkPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) sharedFolderChangeLinkPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderChangeLinkPolicyDetails(SharedLinkPolicy sharedLinkPolicy, SharedLinkPolicy sharedLinkPolicy2) {
        if (sharedLinkPolicy != null) {
            this.newValue = sharedLinkPolicy;
            this.previousValue = sharedLinkPolicy2;
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
        SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetails = (SharedFolderChangeLinkPolicyDetails) obj;
        SharedLinkPolicy sharedLinkPolicy = this.newValue;
        SharedLinkPolicy sharedLinkPolicy2 = sharedFolderChangeLinkPolicyDetails.newValue;
        if (sharedLinkPolicy == sharedLinkPolicy2 || sharedLinkPolicy.equals(sharedLinkPolicy2)) {
            SharedLinkPolicy sharedLinkPolicy3 = this.previousValue;
            SharedLinkPolicy sharedLinkPolicy4 = sharedFolderChangeLinkPolicyDetails.previousValue;
            if (sharedLinkPolicy3 == sharedLinkPolicy4) {
                return true;
            }
            if (sharedLinkPolicy3 != null && sharedLinkPolicy3.equals(sharedLinkPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public SharedLinkPolicy getNewValue() {
        return this.newValue;
    }

    public SharedLinkPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4076a.f20352b.serialize((C4076a) this, false);
    }

    public String toStringMultiline() {
        return C4076a.f20352b.serialize((C4076a) this, true);
    }

    public SharedFolderChangeLinkPolicyDetails(SharedLinkPolicy sharedLinkPolicy) {
        this(sharedLinkPolicy, null);
    }
}
