package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AdminRole;
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
public class MemberChangeAdminRoleDetails {
    protected final AdminRole newValue;
    protected final AdminRole previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected AdminRole newValue = null;
        protected AdminRole previousValue = null;

        public MemberChangeAdminRoleDetails build() {
            return new MemberChangeAdminRoleDetails(this.newValue, this.previousValue);
        }

        public Builder withNewValue(AdminRole adminRole) {
            this.newValue = adminRole;
            return this;
        }

        public Builder withPreviousValue(AdminRole adminRole) {
            this.previousValue = adminRole;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MemberChangeAdminRoleDetails$a */
    /* loaded from: classes4.dex */
    public static class C3731a extends StructSerializer<MemberChangeAdminRoleDetails> {

        /* renamed from: b */
        public static final C3731a f20004b = new C3731a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberChangeAdminRoleDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AdminRole adminRole = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            AdminRole adminRole2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    adminRole = (AdminRole) StoneSerializers.nullable(AdminRole.C3353b.f18734b).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    adminRole2 = (AdminRole) StoneSerializers.nullable(AdminRole.C3353b.f18734b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            MemberChangeAdminRoleDetails memberChangeAdminRoleDetails = new MemberChangeAdminRoleDetails(adminRole, adminRole2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberChangeAdminRoleDetails, memberChangeAdminRoleDetails.toStringMultiline());
            return memberChangeAdminRoleDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberChangeAdminRoleDetails memberChangeAdminRoleDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (memberChangeAdminRoleDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(AdminRole.C3353b.f18734b).serialize((StoneSerializer) memberChangeAdminRoleDetails.newValue, jsonGenerator);
            }
            if (memberChangeAdminRoleDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(AdminRole.C3353b.f18734b).serialize((StoneSerializer) memberChangeAdminRoleDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberChangeAdminRoleDetails(AdminRole adminRole, AdminRole adminRole2) {
        this.newValue = adminRole;
        this.previousValue = adminRole2;
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
        MemberChangeAdminRoleDetails memberChangeAdminRoleDetails = (MemberChangeAdminRoleDetails) obj;
        AdminRole adminRole = this.newValue;
        AdminRole adminRole2 = memberChangeAdminRoleDetails.newValue;
        if (adminRole == adminRole2 || (adminRole != null && adminRole.equals(adminRole2))) {
            AdminRole adminRole3 = this.previousValue;
            AdminRole adminRole4 = memberChangeAdminRoleDetails.previousValue;
            if (adminRole3 == adminRole4) {
                return true;
            }
            if (adminRole3 != null && adminRole3.equals(adminRole4)) {
                return true;
            }
        }
        return false;
    }

    public AdminRole getNewValue() {
        return this.newValue;
    }

    public AdminRole getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3731a.f20004b.serialize((C3731a) this, false);
    }

    public String toStringMultiline() {
        return C3731a.f20004b.serialize((C3731a) this, true);
    }

    public MemberChangeAdminRoleDetails() {
        this(null, null);
    }
}
