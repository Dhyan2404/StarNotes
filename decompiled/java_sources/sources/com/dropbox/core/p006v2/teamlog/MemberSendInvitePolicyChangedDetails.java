package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.MemberSendInvitePolicy;
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
public class MemberSendInvitePolicyChangedDetails {
    protected final MemberSendInvitePolicy newValue;
    protected final MemberSendInvitePolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSendInvitePolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3759a extends StructSerializer<MemberSendInvitePolicyChangedDetails> {

        /* renamed from: b */
        public static final C3759a f20032b = new C3759a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSendInvitePolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MemberSendInvitePolicy memberSendInvitePolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            MemberSendInvitePolicy memberSendInvitePolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    memberSendInvitePolicy = MemberSendInvitePolicy.C3758b.f20031b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    memberSendInvitePolicy2 = MemberSendInvitePolicy.C3758b.f20031b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberSendInvitePolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (memberSendInvitePolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            MemberSendInvitePolicyChangedDetails memberSendInvitePolicyChangedDetails = new MemberSendInvitePolicyChangedDetails(memberSendInvitePolicy, memberSendInvitePolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberSendInvitePolicyChangedDetails, memberSendInvitePolicyChangedDetails.toStringMultiline());
            return memberSendInvitePolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSendInvitePolicyChangedDetails memberSendInvitePolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            MemberSendInvitePolicy.C3758b c3758b = MemberSendInvitePolicy.C3758b.f20031b;
            c3758b.serialize(memberSendInvitePolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3758b.serialize(memberSendInvitePolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberSendInvitePolicyChangedDetails(MemberSendInvitePolicy memberSendInvitePolicy, MemberSendInvitePolicy memberSendInvitePolicy2) {
        if (memberSendInvitePolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = memberSendInvitePolicy;
        if (memberSendInvitePolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = memberSendInvitePolicy2;
    }

    public boolean equals(Object obj) {
        MemberSendInvitePolicy memberSendInvitePolicy;
        MemberSendInvitePolicy memberSendInvitePolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberSendInvitePolicyChangedDetails memberSendInvitePolicyChangedDetails = (MemberSendInvitePolicyChangedDetails) obj;
        MemberSendInvitePolicy memberSendInvitePolicy3 = this.newValue;
        MemberSendInvitePolicy memberSendInvitePolicy4 = memberSendInvitePolicyChangedDetails.newValue;
        return (memberSendInvitePolicy3 == memberSendInvitePolicy4 || memberSendInvitePolicy3.equals(memberSendInvitePolicy4)) && ((memberSendInvitePolicy = this.previousValue) == (memberSendInvitePolicy2 = memberSendInvitePolicyChangedDetails.previousValue) || memberSendInvitePolicy.equals(memberSendInvitePolicy2));
    }

    public MemberSendInvitePolicy getNewValue() {
        return this.newValue;
    }

    public MemberSendInvitePolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3759a.f20032b.serialize((C3759a) this, false);
    }

    public String toStringMultiline() {
        return C3759a.f20032b.serialize((C3759a) this, true);
    }
}
