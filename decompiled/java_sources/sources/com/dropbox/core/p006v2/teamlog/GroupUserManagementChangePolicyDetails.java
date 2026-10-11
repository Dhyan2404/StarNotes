package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.GroupCreation;
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
public class GroupUserManagementChangePolicyDetails {
    protected final GroupCreation newValue;
    protected final GroupCreation previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.GroupUserManagementChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3671a extends StructSerializer<GroupUserManagementChangePolicyDetails> {

        /* renamed from: b */
        public static final C3671a f19939b = new C3671a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupUserManagementChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            GroupCreation groupCreation = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            GroupCreation groupCreation2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    groupCreation = GroupCreation.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    groupCreation2 = (GroupCreation) StoneSerializers.nullable(GroupCreation.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (groupCreation == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetails = new GroupUserManagementChangePolicyDetails(groupCreation, groupCreation2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupUserManagementChangePolicyDetails, groupUserManagementChangePolicyDetails.toStringMultiline());
            return groupUserManagementChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            GroupCreation.Serializer serializer = GroupCreation.Serializer.INSTANCE;
            serializer.serialize(groupUserManagementChangePolicyDetails.newValue, jsonGenerator);
            if (groupUserManagementChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) groupUserManagementChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupUserManagementChangePolicyDetails(GroupCreation groupCreation, GroupCreation groupCreation2) {
        if (groupCreation != null) {
            this.newValue = groupCreation;
            this.previousValue = groupCreation2;
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
        GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetails = (GroupUserManagementChangePolicyDetails) obj;
        GroupCreation groupCreation = this.newValue;
        GroupCreation groupCreation2 = groupUserManagementChangePolicyDetails.newValue;
        if (groupCreation == groupCreation2 || groupCreation.equals(groupCreation2)) {
            GroupCreation groupCreation3 = this.previousValue;
            GroupCreation groupCreation4 = groupUserManagementChangePolicyDetails.previousValue;
            if (groupCreation3 == groupCreation4) {
                return true;
            }
            if (groupCreation3 != null && groupCreation3.equals(groupCreation4)) {
                return true;
            }
        }
        return false;
    }

    public GroupCreation getNewValue() {
        return this.newValue;
    }

    public GroupCreation getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3671a.f19939b.serialize((C3671a) this, false);
    }

    public String toStringMultiline() {
        return C3671a.f19939b.serialize((C3671a) this, true);
    }

    public GroupUserManagementChangePolicyDetails(GroupCreation groupCreation) {
        this(groupCreation, null);
    }
}
