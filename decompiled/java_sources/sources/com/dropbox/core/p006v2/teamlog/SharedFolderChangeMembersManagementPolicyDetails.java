package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.AclUpdatePolicy;
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
public class SharedFolderChangeMembersManagementPolicyDetails {
    protected final AclUpdatePolicy newValue;
    protected final AclUpdatePolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderChangeMembersManagementPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4080a extends StructSerializer<SharedFolderChangeMembersManagementPolicyDetails> {

        /* renamed from: b */
        public static final C4080a f20356b = new C4080a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderChangeMembersManagementPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AclUpdatePolicy aclUpdatePolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            AclUpdatePolicy aclUpdatePolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    aclUpdatePolicy = AclUpdatePolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    aclUpdatePolicy2 = (AclUpdatePolicy) StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (aclUpdatePolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedFolderChangeMembersManagementPolicyDetails sharedFolderChangeMembersManagementPolicyDetails = new SharedFolderChangeMembersManagementPolicyDetails(aclUpdatePolicy, aclUpdatePolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderChangeMembersManagementPolicyDetails, sharedFolderChangeMembersManagementPolicyDetails.toStringMultiline());
            return sharedFolderChangeMembersManagementPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderChangeMembersManagementPolicyDetails sharedFolderChangeMembersManagementPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            AclUpdatePolicy.Serializer serializer = AclUpdatePolicy.Serializer.INSTANCE;
            serializer.serialize(sharedFolderChangeMembersManagementPolicyDetails.newValue, jsonGenerator);
            if (sharedFolderChangeMembersManagementPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) sharedFolderChangeMembersManagementPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderChangeMembersManagementPolicyDetails(AclUpdatePolicy aclUpdatePolicy, AclUpdatePolicy aclUpdatePolicy2) {
        if (aclUpdatePolicy != null) {
            this.newValue = aclUpdatePolicy;
            this.previousValue = aclUpdatePolicy2;
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
        SharedFolderChangeMembersManagementPolicyDetails sharedFolderChangeMembersManagementPolicyDetails = (SharedFolderChangeMembersManagementPolicyDetails) obj;
        AclUpdatePolicy aclUpdatePolicy = this.newValue;
        AclUpdatePolicy aclUpdatePolicy2 = sharedFolderChangeMembersManagementPolicyDetails.newValue;
        if (aclUpdatePolicy == aclUpdatePolicy2 || aclUpdatePolicy.equals(aclUpdatePolicy2)) {
            AclUpdatePolicy aclUpdatePolicy3 = this.previousValue;
            AclUpdatePolicy aclUpdatePolicy4 = sharedFolderChangeMembersManagementPolicyDetails.previousValue;
            if (aclUpdatePolicy3 == aclUpdatePolicy4) {
                return true;
            }
            if (aclUpdatePolicy3 != null && aclUpdatePolicy3.equals(aclUpdatePolicy4)) {
                return true;
            }
        }
        return false;
    }

    public AclUpdatePolicy getNewValue() {
        return this.newValue;
    }

    public AclUpdatePolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4080a.f20356b.serialize((C4080a) this, false);
    }

    public String toStringMultiline() {
        return C4080a.f20356b.serialize((C4080a) this, true);
    }

    public SharedFolderChangeMembersManagementPolicyDetails(AclUpdatePolicy aclUpdatePolicy) {
        this(aclUpdatePolicy, null);
    }
}
