package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FedHandshakeAction;
import com.dropbox.core.p006v2.teamlog.FederationStatusChangeAdditionalInfo;
import com.dropbox.core.p006v2.teamlog.TrustedTeamsRequestState;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class ChangedEnterpriseConnectedTeamStatusDetails {
    protected final FedHandshakeAction action;
    protected final FederationStatusChangeAdditionalInfo additionalInfo;
    protected final TrustedTeamsRequestState newValue;
    protected final TrustedTeamsRequestState previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.ChangedEnterpriseConnectedTeamStatusDetails$a */
    /* loaded from: classes4.dex */
    public static class C3393a extends StructSerializer<ChangedEnterpriseConnectedTeamStatusDetails> {

        /* renamed from: b */
        public static final C3393a f18780b = new C3393a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ChangedEnterpriseConnectedTeamStatusDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FedHandshakeAction fedHandshakeAction = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo = null;
            TrustedTeamsRequestState trustedTeamsRequestState = null;
            TrustedTeamsRequestState trustedTeamsRequestState2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("action".equals(currentName)) {
                    fedHandshakeAction = FedHandshakeAction.C3531b.f19786b.deserialize(jsonParser);
                } else if ("additional_info".equals(currentName)) {
                    federationStatusChangeAdditionalInfo = FederationStatusChangeAdditionalInfo.C3533b.f19792b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    trustedTeamsRequestState = TrustedTeamsRequestState.C4386b.f20674b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    trustedTeamsRequestState2 = TrustedTeamsRequestState.C4386b.f20674b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fedHandshakeAction == null) {
                throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
            }
            if (federationStatusChangeAdditionalInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"additional_info\" missing.");
            }
            if (trustedTeamsRequestState == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (trustedTeamsRequestState2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            ChangedEnterpriseConnectedTeamStatusDetails changedEnterpriseConnectedTeamStatusDetails = new ChangedEnterpriseConnectedTeamStatusDetails(fedHandshakeAction, federationStatusChangeAdditionalInfo, trustedTeamsRequestState, trustedTeamsRequestState2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(changedEnterpriseConnectedTeamStatusDetails, changedEnterpriseConnectedTeamStatusDetails.toStringMultiline());
            return changedEnterpriseConnectedTeamStatusDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ChangedEnterpriseConnectedTeamStatusDetails changedEnterpriseConnectedTeamStatusDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            FedHandshakeAction.C3531b.f19786b.serialize(changedEnterpriseConnectedTeamStatusDetails.action, jsonGenerator);
            jsonGenerator.writeFieldName("additional_info");
            FederationStatusChangeAdditionalInfo.C3533b.f19792b.serialize(changedEnterpriseConnectedTeamStatusDetails.additionalInfo, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            TrustedTeamsRequestState.C4386b c4386b = TrustedTeamsRequestState.C4386b.f20674b;
            c4386b.serialize(changedEnterpriseConnectedTeamStatusDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c4386b.serialize(changedEnterpriseConnectedTeamStatusDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ChangedEnterpriseConnectedTeamStatusDetails(FedHandshakeAction fedHandshakeAction, FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo, TrustedTeamsRequestState trustedTeamsRequestState, TrustedTeamsRequestState trustedTeamsRequestState2) {
        if (fedHandshakeAction == null) {
            throw new IllegalArgumentException("Required value for 'action' is null");
        }
        this.action = fedHandshakeAction;
        if (federationStatusChangeAdditionalInfo == null) {
            throw new IllegalArgumentException("Required value for 'additionalInfo' is null");
        }
        this.additionalInfo = federationStatusChangeAdditionalInfo;
        if (trustedTeamsRequestState == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = trustedTeamsRequestState;
        if (trustedTeamsRequestState2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = trustedTeamsRequestState2;
    }

    public boolean equals(Object obj) {
        FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo;
        FederationStatusChangeAdditionalInfo federationStatusChangeAdditionalInfo2;
        TrustedTeamsRequestState trustedTeamsRequestState;
        TrustedTeamsRequestState trustedTeamsRequestState2;
        TrustedTeamsRequestState trustedTeamsRequestState3;
        TrustedTeamsRequestState trustedTeamsRequestState4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ChangedEnterpriseConnectedTeamStatusDetails changedEnterpriseConnectedTeamStatusDetails = (ChangedEnterpriseConnectedTeamStatusDetails) obj;
        FedHandshakeAction fedHandshakeAction = this.action;
        FedHandshakeAction fedHandshakeAction2 = changedEnterpriseConnectedTeamStatusDetails.action;
        return (fedHandshakeAction == fedHandshakeAction2 || fedHandshakeAction.equals(fedHandshakeAction2)) && ((federationStatusChangeAdditionalInfo = this.additionalInfo) == (federationStatusChangeAdditionalInfo2 = changedEnterpriseConnectedTeamStatusDetails.additionalInfo) || federationStatusChangeAdditionalInfo.equals(federationStatusChangeAdditionalInfo2)) && (((trustedTeamsRequestState = this.previousValue) == (trustedTeamsRequestState2 = changedEnterpriseConnectedTeamStatusDetails.previousValue) || trustedTeamsRequestState.equals(trustedTeamsRequestState2)) && ((trustedTeamsRequestState3 = this.newValue) == (trustedTeamsRequestState4 = changedEnterpriseConnectedTeamStatusDetails.newValue) || trustedTeamsRequestState3.equals(trustedTeamsRequestState4)));
    }

    public FedHandshakeAction getAction() {
        return this.action;
    }

    public FederationStatusChangeAdditionalInfo getAdditionalInfo() {
        return this.additionalInfo;
    }

    public TrustedTeamsRequestState getNewValue() {
        return this.newValue;
    }

    public TrustedTeamsRequestState getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.action, this.additionalInfo, this.previousValue, this.newValue});
    }

    public String toString() {
        return C3393a.f18780b.serialize((C3393a) this, false);
    }

    public String toStringMultiline() {
        return C3393a.f18780b.serialize((C3393a) this, true);
    }
}
