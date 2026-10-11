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
public class GroupDeleteDetails {
    protected final Boolean isCompanyManaged;

    /* renamed from: com.dropbox.core.v2.teamlog.GroupDeleteDetails$a */
    /* loaded from: classes4.dex */
    public static class C3654a extends StructSerializer<GroupDeleteDetails> {

        /* renamed from: b */
        public static final C3654a f19922b = new C3654a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupDeleteDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("is_company_managed".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            GroupDeleteDetails groupDeleteDetails = new GroupDeleteDetails(bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupDeleteDetails, groupDeleteDetails.toStringMultiline());
            return groupDeleteDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupDeleteDetails groupDeleteDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (groupDeleteDetails.isCompanyManaged != null) {
                jsonGenerator.writeFieldName("is_company_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) groupDeleteDetails.isCompanyManaged, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupDeleteDetails(Boolean bool) {
        this.isCompanyManaged = bool;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Boolean bool = this.isCompanyManaged;
        Boolean bool2 = ((GroupDeleteDetails) obj).isCompanyManaged;
        if (bool != bool2) {
            return bool != null && bool.equals(bool2);
        }
        return true;
    }

    public Boolean getIsCompanyManaged() {
        return this.isCompanyManaged;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.isCompanyManaged});
    }

    public String toString() {
        return C3654a.f19922b.serialize((C3654a) this, false);
    }

    public String toStringMultiline() {
        return C3654a.f19922b.serialize((C3654a) this, true);
    }

    public GroupDeleteDetails() {
        this(null);
    }
}
