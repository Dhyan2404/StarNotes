package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamcommon.GroupManagementType;
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
public class GroupChangeManagementTypeDetails {
    protected final GroupManagementType newValue;
    protected final GroupManagementType previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.GroupChangeManagementTypeDetails$a */
    /* loaded from: classes4.dex */
    public static class C3648a extends StructSerializer<GroupChangeManagementTypeDetails> {

        /* renamed from: b */
        public static final C3648a f19916b = new C3648a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupChangeManagementTypeDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            GroupManagementType groupManagementType = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            GroupManagementType groupManagementType2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    groupManagementType = GroupManagementType.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    groupManagementType2 = (GroupManagementType) StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (groupManagementType == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            GroupChangeManagementTypeDetails groupChangeManagementTypeDetails = new GroupChangeManagementTypeDetails(groupManagementType, groupManagementType2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupChangeManagementTypeDetails, groupChangeManagementTypeDetails.toStringMultiline());
            return groupChangeManagementTypeDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupChangeManagementTypeDetails groupChangeManagementTypeDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            GroupManagementType.Serializer serializer = GroupManagementType.Serializer.INSTANCE;
            serializer.serialize(groupChangeManagementTypeDetails.newValue, jsonGenerator);
            if (groupChangeManagementTypeDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) groupChangeManagementTypeDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupChangeManagementTypeDetails(GroupManagementType groupManagementType, GroupManagementType groupManagementType2) {
        if (groupManagementType != null) {
            this.newValue = groupManagementType;
            this.previousValue = groupManagementType2;
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
        GroupChangeManagementTypeDetails groupChangeManagementTypeDetails = (GroupChangeManagementTypeDetails) obj;
        GroupManagementType groupManagementType = this.newValue;
        GroupManagementType groupManagementType2 = groupChangeManagementTypeDetails.newValue;
        if (groupManagementType == groupManagementType2 || groupManagementType.equals(groupManagementType2)) {
            GroupManagementType groupManagementType3 = this.previousValue;
            GroupManagementType groupManagementType4 = groupChangeManagementTypeDetails.previousValue;
            if (groupManagementType3 == groupManagementType4) {
                return true;
            }
            if (groupManagementType3 != null && groupManagementType3.equals(groupManagementType4)) {
                return true;
            }
        }
        return false;
    }

    public GroupManagementType getNewValue() {
        return this.newValue;
    }

    public GroupManagementType getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3648a.f19916b.serialize((C3648a) this, false);
    }

    public String toStringMultiline() {
        return C3648a.f19916b.serialize((C3648a) this, true);
    }

    public GroupChangeManagementTypeDetails(GroupManagementType groupManagementType) {
        this(groupManagementType, null);
    }
}
