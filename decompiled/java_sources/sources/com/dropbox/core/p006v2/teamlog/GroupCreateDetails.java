package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.GroupJoinPolicy;
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
public class GroupCreateDetails {
    protected final Boolean isCompanyManaged;
    protected final GroupJoinPolicy joinPolicy;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Boolean isCompanyManaged = null;
        protected GroupJoinPolicy joinPolicy = null;

        public GroupCreateDetails build() {
            return new GroupCreateDetails(this.isCompanyManaged, this.joinPolicy);
        }

        public Builder withIsCompanyManaged(Boolean bool) {
            this.isCompanyManaged = bool;
            return this;
        }

        public Builder withJoinPolicy(GroupJoinPolicy groupJoinPolicy) {
            this.joinPolicy = groupJoinPolicy;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GroupCreateDetails$a */
    /* loaded from: classes4.dex */
    public static class C3652a extends StructSerializer<GroupCreateDetails> {

        /* renamed from: b */
        public static final C3652a f19920b = new C3652a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupCreateDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GroupJoinPolicy groupJoinPolicy = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("is_company_managed".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("join_policy".equals(currentName)) {
                    groupJoinPolicy = (GroupJoinPolicy) StoneSerializers.nullable(GroupJoinPolicy.C3659b.f19927b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            GroupCreateDetails groupCreateDetails = new GroupCreateDetails(bool, groupJoinPolicy);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupCreateDetails, groupCreateDetails.toStringMultiline());
            return groupCreateDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupCreateDetails groupCreateDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (groupCreateDetails.isCompanyManaged != null) {
                jsonGenerator.writeFieldName("is_company_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) groupCreateDetails.isCompanyManaged, jsonGenerator);
            }
            if (groupCreateDetails.joinPolicy != null) {
                jsonGenerator.writeFieldName("join_policy");
                StoneSerializers.nullable(GroupJoinPolicy.C3659b.f19927b).serialize((StoneSerializer) groupCreateDetails.joinPolicy, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupCreateDetails(Boolean bool, GroupJoinPolicy groupJoinPolicy) {
        this.isCompanyManaged = bool;
        this.joinPolicy = groupJoinPolicy;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupCreateDetails groupCreateDetails = (GroupCreateDetails) obj;
        Boolean bool = this.isCompanyManaged;
        Boolean bool2 = groupCreateDetails.isCompanyManaged;
        if (bool == bool2 || (bool != null && bool.equals(bool2))) {
            GroupJoinPolicy groupJoinPolicy = this.joinPolicy;
            GroupJoinPolicy groupJoinPolicy2 = groupCreateDetails.joinPolicy;
            if (groupJoinPolicy == groupJoinPolicy2) {
                return true;
            }
            if (groupJoinPolicy != null && groupJoinPolicy.equals(groupJoinPolicy2)) {
                return true;
            }
        }
        return false;
    }

    public Boolean getIsCompanyManaged() {
        return this.isCompanyManaged;
    }

    public GroupJoinPolicy getJoinPolicy() {
        return this.joinPolicy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.isCompanyManaged, this.joinPolicy});
    }

    public String toString() {
        return C3652a.f19920b.serialize((C3652a) this, false);
    }

    public String toStringMultiline() {
        return C3652a.f19920b.serialize((C3652a) this, true);
    }

    public GroupCreateDetails() {
        this(null, null);
    }
}
