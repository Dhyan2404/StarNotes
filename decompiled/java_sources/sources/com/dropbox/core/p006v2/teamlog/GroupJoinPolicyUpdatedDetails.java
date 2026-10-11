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
public class GroupJoinPolicyUpdatedDetails {
    protected final Boolean isCompanyManaged;
    protected final GroupJoinPolicy joinPolicy;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Boolean isCompanyManaged = null;
        protected GroupJoinPolicy joinPolicy = null;

        public GroupJoinPolicyUpdatedDetails build() {
            return new GroupJoinPolicyUpdatedDetails(this.isCompanyManaged, this.joinPolicy);
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

    /* renamed from: com.dropbox.core.v2.teamlog.GroupJoinPolicyUpdatedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3660a extends StructSerializer<GroupJoinPolicyUpdatedDetails> {

        /* renamed from: b */
        public static final C3660a f19928b = new C3660a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupJoinPolicyUpdatedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GroupJoinPolicyUpdatedDetails groupJoinPolicyUpdatedDetails = new GroupJoinPolicyUpdatedDetails(bool, groupJoinPolicy);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupJoinPolicyUpdatedDetails, groupJoinPolicyUpdatedDetails.toStringMultiline());
            return groupJoinPolicyUpdatedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupJoinPolicyUpdatedDetails groupJoinPolicyUpdatedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (groupJoinPolicyUpdatedDetails.isCompanyManaged != null) {
                jsonGenerator.writeFieldName("is_company_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) groupJoinPolicyUpdatedDetails.isCompanyManaged, jsonGenerator);
            }
            if (groupJoinPolicyUpdatedDetails.joinPolicy != null) {
                jsonGenerator.writeFieldName("join_policy");
                StoneSerializers.nullable(GroupJoinPolicy.C3659b.f19927b).serialize((StoneSerializer) groupJoinPolicyUpdatedDetails.joinPolicy, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupJoinPolicyUpdatedDetails(Boolean bool, GroupJoinPolicy groupJoinPolicy) {
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
        GroupJoinPolicyUpdatedDetails groupJoinPolicyUpdatedDetails = (GroupJoinPolicyUpdatedDetails) obj;
        Boolean bool = this.isCompanyManaged;
        Boolean bool2 = groupJoinPolicyUpdatedDetails.isCompanyManaged;
        if (bool == bool2 || (bool != null && bool.equals(bool2))) {
            GroupJoinPolicy groupJoinPolicy = this.joinPolicy;
            GroupJoinPolicy groupJoinPolicy2 = groupJoinPolicyUpdatedDetails.joinPolicy;
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
        return C3660a.f19928b.serialize((C3660a) this, false);
    }

    public String toStringMultiline() {
        return C3660a.f19928b.serialize((C3660a) this, true);
    }

    public GroupJoinPolicyUpdatedDetails() {
        this(null, null);
    }
}
