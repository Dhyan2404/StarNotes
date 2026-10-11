package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ActionDetails;
import com.dropbox.core.p006v2.teamlog.MemberStatus;
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
public class MemberChangeStatusDetails {
    protected final ActionDetails action;
    protected final String newTeam;
    protected final MemberStatus newValue;
    protected final String previousTeam;
    protected final MemberStatus previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected ActionDetails action;
        protected String newTeam;
        protected final MemberStatus newValue;
        protected String previousTeam;
        protected MemberStatus previousValue;

        public Builder(MemberStatus memberStatus) {
            if (memberStatus == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = memberStatus;
            this.previousValue = null;
            this.action = null;
            this.newTeam = null;
            this.previousTeam = null;
        }

        public MemberChangeStatusDetails build() {
            return new MemberChangeStatusDetails(this.newValue, this.previousValue, this.action, this.newTeam, this.previousTeam);
        }

        public Builder withAction(ActionDetails actionDetails) {
            this.action = actionDetails;
            return this;
        }

        public Builder withNewTeam(String str) {
            this.newTeam = str;
            return this;
        }

        public Builder withPreviousTeam(String str) {
            this.previousTeam = str;
            return this;
        }

        public Builder withPreviousValue(MemberStatus memberStatus) {
            this.previousValue = memberStatus;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MemberChangeStatusDetails$a */
    /* loaded from: classes4.dex */
    public static class C3741a extends StructSerializer<MemberChangeStatusDetails> {

        /* renamed from: b */
        public static final C3741a f20014b = new C3741a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberChangeStatusDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            MemberStatus memberStatus = null;
            MemberStatus memberStatus2 = null;
            ActionDetails actionDetails = null;
            String str2 = null;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    memberStatus = MemberStatus.C3780b.f20053b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    memberStatus2 = (MemberStatus) StoneSerializers.nullable(MemberStatus.C3780b.f20053b).deserialize(jsonParser);
                } else if ("action".equals(currentName)) {
                    actionDetails = (ActionDetails) StoneSerializers.nullable(ActionDetails.C3349b.f18725b).deserialize(jsonParser);
                } else if ("new_team".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("previous_team".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberChangeStatusDetails memberChangeStatusDetails = new MemberChangeStatusDetails(memberStatus, memberStatus2, actionDetails, str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberChangeStatusDetails, memberChangeStatusDetails.toStringMultiline());
            return memberChangeStatusDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberChangeStatusDetails memberChangeStatusDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            MemberStatus.C3780b c3780b = MemberStatus.C3780b.f20053b;
            c3780b.serialize(memberChangeStatusDetails.newValue, jsonGenerator);
            if (memberChangeStatusDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3780b).serialize((StoneSerializer) memberChangeStatusDetails.previousValue, jsonGenerator);
            }
            if (memberChangeStatusDetails.action != null) {
                jsonGenerator.writeFieldName("action");
                StoneSerializers.nullable(ActionDetails.C3349b.f18725b).serialize((StoneSerializer) memberChangeStatusDetails.action, jsonGenerator);
            }
            if (memberChangeStatusDetails.newTeam != null) {
                jsonGenerator.writeFieldName("new_team");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberChangeStatusDetails.newTeam, jsonGenerator);
            }
            if (memberChangeStatusDetails.previousTeam != null) {
                jsonGenerator.writeFieldName("previous_team");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberChangeStatusDetails.previousTeam, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberChangeStatusDetails(MemberStatus memberStatus, MemberStatus memberStatus2, ActionDetails actionDetails, String str, String str2) {
        this.previousValue = memberStatus2;
        if (memberStatus != null) {
            this.newValue = memberStatus;
            this.action = actionDetails;
            this.newTeam = str;
            this.previousTeam = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public static Builder newBuilder(MemberStatus memberStatus) {
        return new Builder(memberStatus);
    }

    public boolean equals(Object obj) {
        MemberStatus memberStatus;
        MemberStatus memberStatus2;
        ActionDetails actionDetails;
        ActionDetails actionDetails2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberChangeStatusDetails memberChangeStatusDetails = (MemberChangeStatusDetails) obj;
        MemberStatus memberStatus3 = this.newValue;
        MemberStatus memberStatus4 = memberChangeStatusDetails.newValue;
        if ((memberStatus3 == memberStatus4 || memberStatus3.equals(memberStatus4)) && (((memberStatus = this.previousValue) == (memberStatus2 = memberChangeStatusDetails.previousValue) || (memberStatus != null && memberStatus.equals(memberStatus2))) && (((actionDetails = this.action) == (actionDetails2 = memberChangeStatusDetails.action) || (actionDetails != null && actionDetails.equals(actionDetails2))) && ((str = this.newTeam) == (str2 = memberChangeStatusDetails.newTeam) || (str != null && str.equals(str2)))))) {
            String str3 = this.previousTeam;
            String str4 = memberChangeStatusDetails.previousTeam;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public ActionDetails getAction() {
        return this.action;
    }

    public String getNewTeam() {
        return this.newTeam;
    }

    public MemberStatus getNewValue() {
        return this.newValue;
    }

    public String getPreviousTeam() {
        return this.previousTeam;
    }

    public MemberStatus getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue, this.action, this.newTeam, this.previousTeam});
    }

    public String toString() {
        return C3741a.f20014b.serialize((C3741a) this, false);
    }

    public String toStringMultiline() {
        return C3741a.f20014b.serialize((C3741a) this, true);
    }

    public MemberChangeStatusDetails(MemberStatus memberStatus) {
        this(memberStatus, null, null, null, null);
    }
}
