package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FedAdminRole;
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
public class ChangedEnterpriseAdminRoleDetails {
    protected final FedAdminRole newValue;
    protected final FedAdminRole previousValue;
    protected final String teamName;

    /* renamed from: com.dropbox.core.v2.teamlog.ChangedEnterpriseAdminRoleDetails$a */
    /* loaded from: classes4.dex */
    public static class C3391a extends StructSerializer<ChangedEnterpriseAdminRoleDetails> {

        /* renamed from: b */
        public static final C3391a f18778b = new C3391a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ChangedEnterpriseAdminRoleDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FedAdminRole fedAdminRole = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FedAdminRole fedAdminRole2 = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    fedAdminRole = FedAdminRole.C3527b.f19779b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    fedAdminRole2 = FedAdminRole.C3527b.f19779b.deserialize(jsonParser);
                } else if ("team_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fedAdminRole == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (fedAdminRole2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_name\" missing.");
            }
            ChangedEnterpriseAdminRoleDetails changedEnterpriseAdminRoleDetails = new ChangedEnterpriseAdminRoleDetails(fedAdminRole, fedAdminRole2, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(changedEnterpriseAdminRoleDetails, changedEnterpriseAdminRoleDetails.toStringMultiline());
            return changedEnterpriseAdminRoleDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ChangedEnterpriseAdminRoleDetails changedEnterpriseAdminRoleDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            FedAdminRole.C3527b c3527b = FedAdminRole.C3527b.f19779b;
            c3527b.serialize(changedEnterpriseAdminRoleDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c3527b.serialize(changedEnterpriseAdminRoleDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("team_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) changedEnterpriseAdminRoleDetails.teamName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ChangedEnterpriseAdminRoleDetails(FedAdminRole fedAdminRole, FedAdminRole fedAdminRole2, String str) {
        if (fedAdminRole == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = fedAdminRole;
        if (fedAdminRole2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = fedAdminRole2;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamName' is null");
        }
        this.teamName = str;
    }

    public boolean equals(Object obj) {
        FedAdminRole fedAdminRole;
        FedAdminRole fedAdminRole2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ChangedEnterpriseAdminRoleDetails changedEnterpriseAdminRoleDetails = (ChangedEnterpriseAdminRoleDetails) obj;
        FedAdminRole fedAdminRole3 = this.previousValue;
        FedAdminRole fedAdminRole4 = changedEnterpriseAdminRoleDetails.previousValue;
        return (fedAdminRole3 == fedAdminRole4 || fedAdminRole3.equals(fedAdminRole4)) && ((fedAdminRole = this.newValue) == (fedAdminRole2 = changedEnterpriseAdminRoleDetails.newValue) || fedAdminRole.equals(fedAdminRole2)) && ((str = this.teamName) == (str2 = changedEnterpriseAdminRoleDetails.teamName) || str.equals(str2));
    }

    public FedAdminRole getNewValue() {
        return this.newValue;
    }

    public FedAdminRole getPreviousValue() {
        return this.previousValue;
    }

    public String getTeamName() {
        return this.teamName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue, this.teamName});
    }

    public String toString() {
        return C3391a.f18778b.serialize((C3391a) this, false);
    }

    public String toStringMultiline() {
        return C3391a.f18778b.serialize((C3391a) this, true);
    }
}
