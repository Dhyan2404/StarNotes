package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TrustedTeamsRequestAction;
import com.dropbox.core.p006v2.teamlog.TrustedTeamsRequestState;
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
public class GuestAdminChangeStatusDetails {
    protected final TrustedTeamsRequestAction actionDetails;
    protected final String guestTeamName;
    protected final String hostTeamName;
    protected final boolean isGuest;
    protected final TrustedTeamsRequestState newValue;
    protected final TrustedTeamsRequestState previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final TrustedTeamsRequestAction actionDetails;
        protected String guestTeamName;
        protected String hostTeamName;
        protected final boolean isGuest;
        protected final TrustedTeamsRequestState newValue;
        protected final TrustedTeamsRequestState previousValue;

        public Builder(boolean z, TrustedTeamsRequestState trustedTeamsRequestState, TrustedTeamsRequestState trustedTeamsRequestState2, TrustedTeamsRequestAction trustedTeamsRequestAction) {
            this.isGuest = z;
            if (trustedTeamsRequestState == null) {
                throw new IllegalArgumentException("Required value for 'previousValue' is null");
            }
            this.previousValue = trustedTeamsRequestState;
            if (trustedTeamsRequestState2 == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = trustedTeamsRequestState2;
            if (trustedTeamsRequestAction == null) {
                throw new IllegalArgumentException("Required value for 'actionDetails' is null");
            }
            this.actionDetails = trustedTeamsRequestAction;
            this.guestTeamName = null;
            this.hostTeamName = null;
        }

        public GuestAdminChangeStatusDetails build() {
            return new GuestAdminChangeStatusDetails(this.isGuest, this.previousValue, this.newValue, this.actionDetails, this.guestTeamName, this.hostTeamName);
        }

        public Builder withGuestTeamName(String str) {
            this.guestTeamName = str;
            return this;
        }

        public Builder withHostTeamName(String str) {
            this.hostTeamName = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GuestAdminChangeStatusDetails$a */
    /* loaded from: classes4.dex */
    public static class C3673a extends StructSerializer<GuestAdminChangeStatusDetails> {

        /* renamed from: b */
        public static final C3673a f19941b = new C3673a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GuestAdminChangeStatusDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            TrustedTeamsRequestState trustedTeamsRequestState = null;
            TrustedTeamsRequestState trustedTeamsRequestState2 = null;
            TrustedTeamsRequestAction trustedTeamsRequestAction = null;
            String str2 = null;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("is_guest".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    trustedTeamsRequestState = TrustedTeamsRequestState.C4386b.f20674b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    trustedTeamsRequestState2 = TrustedTeamsRequestState.C4386b.f20674b.deserialize(jsonParser);
                } else if ("action_details".equals(currentName)) {
                    trustedTeamsRequestAction = TrustedTeamsRequestAction.C4384b.f20672b.deserialize(jsonParser);
                } else if ("guest_team_name".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("host_team_name".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_guest\" missing.");
            }
            if (trustedTeamsRequestState == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (trustedTeamsRequestState2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (trustedTeamsRequestAction == null) {
                throw new JsonParseException(jsonParser, "Required field \"action_details\" missing.");
            }
            GuestAdminChangeStatusDetails guestAdminChangeStatusDetails = new GuestAdminChangeStatusDetails(bool.booleanValue(), trustedTeamsRequestState, trustedTeamsRequestState2, trustedTeamsRequestAction, str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(guestAdminChangeStatusDetails, guestAdminChangeStatusDetails.toStringMultiline());
            return guestAdminChangeStatusDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GuestAdminChangeStatusDetails guestAdminChangeStatusDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("is_guest");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(guestAdminChangeStatusDetails.isGuest), jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            TrustedTeamsRequestState.C4386b c4386b = TrustedTeamsRequestState.C4386b.f20674b;
            c4386b.serialize(guestAdminChangeStatusDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c4386b.serialize(guestAdminChangeStatusDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("action_details");
            TrustedTeamsRequestAction.C4384b.f20672b.serialize(guestAdminChangeStatusDetails.actionDetails, jsonGenerator);
            if (guestAdminChangeStatusDetails.guestTeamName != null) {
                jsonGenerator.writeFieldName("guest_team_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) guestAdminChangeStatusDetails.guestTeamName, jsonGenerator);
            }
            if (guestAdminChangeStatusDetails.hostTeamName != null) {
                jsonGenerator.writeFieldName("host_team_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) guestAdminChangeStatusDetails.hostTeamName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GuestAdminChangeStatusDetails(boolean z, TrustedTeamsRequestState trustedTeamsRequestState, TrustedTeamsRequestState trustedTeamsRequestState2, TrustedTeamsRequestAction trustedTeamsRequestAction, String str, String str2) {
        this.isGuest = z;
        this.guestTeamName = str;
        this.hostTeamName = str2;
        if (trustedTeamsRequestState != null) {
            this.previousValue = trustedTeamsRequestState;
            if (trustedTeamsRequestState2 != null) {
                this.newValue = trustedTeamsRequestState2;
                if (trustedTeamsRequestAction != null) {
                    this.actionDetails = trustedTeamsRequestAction;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'actionDetails' is null");
            }
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        throw new IllegalArgumentException("Required value for 'previousValue' is null");
    }

    public static Builder newBuilder(boolean z, TrustedTeamsRequestState trustedTeamsRequestState, TrustedTeamsRequestState trustedTeamsRequestState2, TrustedTeamsRequestAction trustedTeamsRequestAction) {
        return new Builder(z, trustedTeamsRequestState, trustedTeamsRequestState2, trustedTeamsRequestAction);
    }

    public boolean equals(Object obj) {
        TrustedTeamsRequestState trustedTeamsRequestState;
        TrustedTeamsRequestState trustedTeamsRequestState2;
        TrustedTeamsRequestState trustedTeamsRequestState3;
        TrustedTeamsRequestState trustedTeamsRequestState4;
        TrustedTeamsRequestAction trustedTeamsRequestAction;
        TrustedTeamsRequestAction trustedTeamsRequestAction2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GuestAdminChangeStatusDetails guestAdminChangeStatusDetails = (GuestAdminChangeStatusDetails) obj;
        if (this.isGuest == guestAdminChangeStatusDetails.isGuest && (((trustedTeamsRequestState = this.previousValue) == (trustedTeamsRequestState2 = guestAdminChangeStatusDetails.previousValue) || trustedTeamsRequestState.equals(trustedTeamsRequestState2)) && (((trustedTeamsRequestState3 = this.newValue) == (trustedTeamsRequestState4 = guestAdminChangeStatusDetails.newValue) || trustedTeamsRequestState3.equals(trustedTeamsRequestState4)) && (((trustedTeamsRequestAction = this.actionDetails) == (trustedTeamsRequestAction2 = guestAdminChangeStatusDetails.actionDetails) || trustedTeamsRequestAction.equals(trustedTeamsRequestAction2)) && ((str = this.guestTeamName) == (str2 = guestAdminChangeStatusDetails.guestTeamName) || (str != null && str.equals(str2))))))) {
            String str3 = this.hostTeamName;
            String str4 = guestAdminChangeStatusDetails.hostTeamName;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public TrustedTeamsRequestAction getActionDetails() {
        return this.actionDetails;
    }

    public String getGuestTeamName() {
        return this.guestTeamName;
    }

    public String getHostTeamName() {
        return this.hostTeamName;
    }

    public boolean getIsGuest() {
        return this.isGuest;
    }

    public TrustedTeamsRequestState getNewValue() {
        return this.newValue;
    }

    public TrustedTeamsRequestState getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isGuest), this.guestTeamName, this.hostTeamName, this.previousValue, this.newValue, this.actionDetails});
    }

    public String toString() {
        return C3673a.f19941b.serialize((C3673a) this, false);
    }

    public String toStringMultiline() {
        return C3673a.f19941b.serialize((C3673a) this, true);
    }

    public GuestAdminChangeStatusDetails(boolean z, TrustedTeamsRequestState trustedTeamsRequestState, TrustedTeamsRequestState trustedTeamsRequestState2, TrustedTeamsRequestAction trustedTeamsRequestAction) {
        this(z, trustedTeamsRequestState, trustedTeamsRequestState2, trustedTeamsRequestAction, null, null);
    }
}
