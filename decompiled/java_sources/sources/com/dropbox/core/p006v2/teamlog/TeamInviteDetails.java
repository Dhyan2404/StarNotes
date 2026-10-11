package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.InviteMethod;
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
public class TeamInviteDetails {
    protected final InviteMethod inviteMethod;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamInviteDetails$a */
    /* loaded from: classes4.dex */
    public static class C4283a extends StructSerializer<TeamInviteDetails> {

        /* renamed from: b */
        public static final C4283a f20559b = new C4283a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamInviteDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            InviteMethod inviteMethod = null;
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
                if ("invite_method".equals(currentName)) {
                    inviteMethod = InviteMethod.C3690b.f19958b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (inviteMethod == null) {
                throw new JsonParseException(jsonParser, "Required field \"invite_method\" missing.");
            }
            TeamInviteDetails teamInviteDetails = new TeamInviteDetails(inviteMethod);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamInviteDetails, teamInviteDetails.toStringMultiline());
            return teamInviteDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamInviteDetails teamInviteDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("invite_method");
            InviteMethod.C3690b.f19958b.serialize(teamInviteDetails.inviteMethod, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamInviteDetails(InviteMethod inviteMethod) {
        if (inviteMethod == null) {
            throw new IllegalArgumentException("Required value for 'inviteMethod' is null");
        }
        this.inviteMethod = inviteMethod;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        InviteMethod inviteMethod = this.inviteMethod;
        InviteMethod inviteMethod2 = ((TeamInviteDetails) obj).inviteMethod;
        return inviteMethod == inviteMethod2 || inviteMethod.equals(inviteMethod2);
    }

    public InviteMethod getInviteMethod() {
        return this.inviteMethod;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.inviteMethod});
    }

    public String toString() {
        return C4283a.f20559b.serialize((C4283a) this, false);
    }

    public String toStringMultiline() {
        return C4283a.f20559b.serialize((C4283a) this, true);
    }
}
