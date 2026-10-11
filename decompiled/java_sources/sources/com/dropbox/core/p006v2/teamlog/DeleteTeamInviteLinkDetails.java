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
public class DeleteTeamInviteLinkDetails {
    protected final String linkUrl;

    /* renamed from: com.dropbox.core.v2.teamlog.DeleteTeamInviteLinkDetails$a */
    /* loaded from: classes4.dex */
    public static class C3412a extends StructSerializer<DeleteTeamInviteLinkDetails> {

        /* renamed from: b */
        public static final C3412a f18805b = new C3412a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteTeamInviteLinkDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("link_url".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"link_url\" missing.");
            }
            DeleteTeamInviteLinkDetails deleteTeamInviteLinkDetails = new DeleteTeamInviteLinkDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deleteTeamInviteLinkDetails, deleteTeamInviteLinkDetails.toStringMultiline());
            return deleteTeamInviteLinkDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteTeamInviteLinkDetails deleteTeamInviteLinkDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("link_url");
            StoneSerializers.string().serialize((StoneSerializer<String>) deleteTeamInviteLinkDetails.linkUrl, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeleteTeamInviteLinkDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'linkUrl' is null");
        }
        this.linkUrl = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.linkUrl;
        String str2 = ((DeleteTeamInviteLinkDetails) obj).linkUrl;
        return str == str2 || str.equals(str2);
    }

    public String getLinkUrl() {
        return this.linkUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.linkUrl});
    }

    public String toString() {
        return C3412a.f18805b.serialize((C3412a) this, false);
    }

    public String toStringMultiline() {
        return C3412a.f18805b.serialize((C3412a) this, true);
    }
}
