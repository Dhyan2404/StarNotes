package com.dropbox.core.p006v2.teamlog;

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
public class GroupChangeMemberRoleDetails {
    protected final boolean isGroupOwner;

    /* renamed from: com.dropbox.core.v2.teamlog.GroupChangeMemberRoleDetails$a */
    /* loaded from: classes4.dex */
    public static class C3650a extends StructSerializer<GroupChangeMemberRoleDetails> {

        /* renamed from: b */
        public static final C3650a f19918b = new C3650a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupChangeMemberRoleDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("is_group_owner".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_group_owner\" missing.");
            }
            GroupChangeMemberRoleDetails groupChangeMemberRoleDetails = new GroupChangeMemberRoleDetails(bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupChangeMemberRoleDetails, groupChangeMemberRoleDetails.toStringMultiline());
            return groupChangeMemberRoleDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupChangeMemberRoleDetails groupChangeMemberRoleDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("is_group_owner");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupChangeMemberRoleDetails.isGroupOwner), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupChangeMemberRoleDetails(boolean z) {
        this.isGroupOwner = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.isGroupOwner == ((GroupChangeMemberRoleDetails) obj).isGroupOwner;
    }

    public boolean getIsGroupOwner() {
        return this.isGroupOwner;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isGroupOwner)});
    }

    public String toString() {
        return C3650a.f19918b.serialize((C3650a) this, false);
    }

    public String toStringMultiline() {
        return C3650a.f19918b.serialize((C3650a) this, true);
    }
}
