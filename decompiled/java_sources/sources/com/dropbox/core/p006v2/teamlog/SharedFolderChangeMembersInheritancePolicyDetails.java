package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SharedFolderMembersInheritancePolicy;
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
public class SharedFolderChangeMembersInheritancePolicyDetails {
    protected final SharedFolderMembersInheritancePolicy newValue;
    protected final SharedFolderMembersInheritancePolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderChangeMembersInheritancePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4078a extends StructSerializer<SharedFolderChangeMembersInheritancePolicyDetails> {

        /* renamed from: b */
        public static final C4078a f20354b = new C4078a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderChangeMembersInheritancePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    sharedFolderMembersInheritancePolicy = SharedFolderMembersInheritancePolicy.C4089b.f20365b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    sharedFolderMembersInheritancePolicy2 = (SharedFolderMembersInheritancePolicy) StoneSerializers.nullable(SharedFolderMembersInheritancePolicy.C4089b.f20365b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (sharedFolderMembersInheritancePolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedFolderChangeMembersInheritancePolicyDetails sharedFolderChangeMembersInheritancePolicyDetails = new SharedFolderChangeMembersInheritancePolicyDetails(sharedFolderMembersInheritancePolicy, sharedFolderMembersInheritancePolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderChangeMembersInheritancePolicyDetails, sharedFolderChangeMembersInheritancePolicyDetails.toStringMultiline());
            return sharedFolderChangeMembersInheritancePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderChangeMembersInheritancePolicyDetails sharedFolderChangeMembersInheritancePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            SharedFolderMembersInheritancePolicy.C4089b c4089b = SharedFolderMembersInheritancePolicy.C4089b.f20365b;
            c4089b.serialize(sharedFolderChangeMembersInheritancePolicyDetails.newValue, jsonGenerator);
            if (sharedFolderChangeMembersInheritancePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c4089b).serialize((StoneSerializer) sharedFolderChangeMembersInheritancePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderChangeMembersInheritancePolicyDetails(SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy, SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy2) {
        if (sharedFolderMembersInheritancePolicy != null) {
            this.newValue = sharedFolderMembersInheritancePolicy;
            this.previousValue = sharedFolderMembersInheritancePolicy2;
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
        SharedFolderChangeMembersInheritancePolicyDetails sharedFolderChangeMembersInheritancePolicyDetails = (SharedFolderChangeMembersInheritancePolicyDetails) obj;
        SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy = this.newValue;
        SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy2 = sharedFolderChangeMembersInheritancePolicyDetails.newValue;
        if (sharedFolderMembersInheritancePolicy == sharedFolderMembersInheritancePolicy2 || sharedFolderMembersInheritancePolicy.equals(sharedFolderMembersInheritancePolicy2)) {
            SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy3 = this.previousValue;
            SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy4 = sharedFolderChangeMembersInheritancePolicyDetails.previousValue;
            if (sharedFolderMembersInheritancePolicy3 == sharedFolderMembersInheritancePolicy4) {
                return true;
            }
            if (sharedFolderMembersInheritancePolicy3 != null && sharedFolderMembersInheritancePolicy3.equals(sharedFolderMembersInheritancePolicy4)) {
                return true;
            }
        }
        return false;
    }

    public SharedFolderMembersInheritancePolicy getNewValue() {
        return this.newValue;
    }

    public SharedFolderMembersInheritancePolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4078a.f20354b.serialize((C4078a) this, false);
    }

    public String toStringMultiline() {
        return C4078a.f20354b.serialize((C4078a) this, true);
    }

    public SharedFolderChangeMembersInheritancePolicyDetails(SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy) {
        this(sharedFolderMembersInheritancePolicy, null);
    }
}
