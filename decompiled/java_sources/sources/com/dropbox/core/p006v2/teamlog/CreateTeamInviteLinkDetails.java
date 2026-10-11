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
public class CreateTeamInviteLinkDetails {
    protected final String expiryDate;
    protected final String linkUrl;

    /* renamed from: com.dropbox.core.v2.teamlog.CreateTeamInviteLinkDetails$a */
    /* loaded from: classes4.dex */
    public static class C3406a extends StructSerializer<CreateTeamInviteLinkDetails> {

        /* renamed from: b */
        public static final C3406a f18798b = new C3406a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateTeamInviteLinkDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("link_url".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("expiry_date".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"link_url\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"expiry_date\" missing.");
            }
            CreateTeamInviteLinkDetails createTeamInviteLinkDetails = new CreateTeamInviteLinkDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(createTeamInviteLinkDetails, createTeamInviteLinkDetails.toStringMultiline());
            return createTeamInviteLinkDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateTeamInviteLinkDetails createTeamInviteLinkDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("link_url");
            StoneSerializers.string().serialize((StoneSerializer<String>) createTeamInviteLinkDetails.linkUrl, jsonGenerator);
            jsonGenerator.writeFieldName("expiry_date");
            StoneSerializers.string().serialize((StoneSerializer<String>) createTeamInviteLinkDetails.expiryDate, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CreateTeamInviteLinkDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'linkUrl' is null");
        }
        this.linkUrl = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'expiryDate' is null");
        }
        this.expiryDate = str2;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CreateTeamInviteLinkDetails createTeamInviteLinkDetails = (CreateTeamInviteLinkDetails) obj;
        String str3 = this.linkUrl;
        String str4 = createTeamInviteLinkDetails.linkUrl;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.expiryDate) == (str2 = createTeamInviteLinkDetails.expiryDate) || str.equals(str2));
    }

    public String getExpiryDate() {
        return this.expiryDate;
    }

    public String getLinkUrl() {
        return this.linkUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.linkUrl, this.expiryDate});
    }

    public String toString() {
        return C3406a.f18798b.serialize((C3406a) this, false);
    }

    public String toStringMultiline() {
        return C3406a.f18798b.serialize((C3406a) this, true);
    }
}
