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
public class GroupAddMemberDetails {
    protected final boolean isGroupOwner;

    /* renamed from: com.dropbox.core.v2.teamlog.GroupAddMemberDetails$a */
    /* loaded from: classes4.dex */
    public static class C3644a extends StructSerializer<GroupAddMemberDetails> {

        /* renamed from: b */
        public static final C3644a f19912b = new C3644a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupAddMemberDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GroupAddMemberDetails groupAddMemberDetails = new GroupAddMemberDetails(bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupAddMemberDetails, groupAddMemberDetails.toStringMultiline());
            return groupAddMemberDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupAddMemberDetails groupAddMemberDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("is_group_owner");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupAddMemberDetails.isGroupOwner), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupAddMemberDetails(boolean z) {
        this.isGroupOwner = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.isGroupOwner == ((GroupAddMemberDetails) obj).isGroupOwner;
    }

    public boolean getIsGroupOwner() {
        return this.isGroupOwner;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isGroupOwner)});
    }

    public String toString() {
        return C3644a.f19912b.serialize((C3644a) this, false);
    }

    public String toStringMultiline() {
        return C3644a.f19912b.serialize((C3644a) this, true);
    }
}
