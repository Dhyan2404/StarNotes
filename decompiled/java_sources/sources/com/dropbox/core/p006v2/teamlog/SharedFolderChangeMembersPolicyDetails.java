package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.MemberPolicy;
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
public class SharedFolderChangeMembersPolicyDetails {
    protected final MemberPolicy newValue;
    protected final MemberPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderChangeMembersPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4082a extends StructSerializer<SharedFolderChangeMembersPolicyDetails> {

        /* renamed from: b */
        public static final C4082a f20358b = new C4082a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderChangeMembersPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MemberPolicy memberPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            MemberPolicy memberPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    memberPolicy = MemberPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    memberPolicy2 = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedFolderChangeMembersPolicyDetails sharedFolderChangeMembersPolicyDetails = new SharedFolderChangeMembersPolicyDetails(memberPolicy, memberPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderChangeMembersPolicyDetails, sharedFolderChangeMembersPolicyDetails.toStringMultiline());
            return sharedFolderChangeMembersPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderChangeMembersPolicyDetails sharedFolderChangeMembersPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            MemberPolicy.Serializer serializer = MemberPolicy.Serializer.INSTANCE;
            serializer.serialize(sharedFolderChangeMembersPolicyDetails.newValue, jsonGenerator);
            if (sharedFolderChangeMembersPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) sharedFolderChangeMembersPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderChangeMembersPolicyDetails(MemberPolicy memberPolicy, MemberPolicy memberPolicy2) {
        if (memberPolicy != null) {
            this.newValue = memberPolicy;
            this.previousValue = memberPolicy2;
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
        SharedFolderChangeMembersPolicyDetails sharedFolderChangeMembersPolicyDetails = (SharedFolderChangeMembersPolicyDetails) obj;
        MemberPolicy memberPolicy = this.newValue;
        MemberPolicy memberPolicy2 = sharedFolderChangeMembersPolicyDetails.newValue;
        if (memberPolicy == memberPolicy2 || memberPolicy.equals(memberPolicy2)) {
            MemberPolicy memberPolicy3 = this.previousValue;
            MemberPolicy memberPolicy4 = sharedFolderChangeMembersPolicyDetails.previousValue;
            if (memberPolicy3 == memberPolicy4) {
                return true;
            }
            if (memberPolicy3 != null && memberPolicy3.equals(memberPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public MemberPolicy getNewValue() {
        return this.newValue;
    }

    public MemberPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4082a.f20358b.serialize((C4082a) this, false);
    }

    public String toStringMultiline() {
        return C4082a.f20358b.serialize((C4082a) this, true);
    }

    public SharedFolderChangeMembersPolicyDetails(MemberPolicy memberPolicy) {
        this(memberPolicy, null);
    }
}
