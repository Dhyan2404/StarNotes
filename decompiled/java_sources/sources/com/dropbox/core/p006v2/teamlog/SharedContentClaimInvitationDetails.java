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
public class SharedContentClaimInvitationDetails {
    protected final String sharedContentLink;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentClaimInvitationDetails$a */
    /* loaded from: classes4.dex */
    public static class C4050a extends StructSerializer<SharedContentClaimInvitationDetails> {

        /* renamed from: b */
        public static final C4050a f20326b = new C4050a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentClaimInvitationDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("shared_content_link".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedContentClaimInvitationDetails sharedContentClaimInvitationDetails = new SharedContentClaimInvitationDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentClaimInvitationDetails, sharedContentClaimInvitationDetails.toStringMultiline());
            return sharedContentClaimInvitationDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentClaimInvitationDetails sharedContentClaimInvitationDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedContentClaimInvitationDetails.sharedContentLink != null) {
                jsonGenerator.writeFieldName("shared_content_link");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedContentClaimInvitationDetails.sharedContentLink, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentClaimInvitationDetails(String str) {
        this.sharedContentLink = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.sharedContentLink;
        String str2 = ((SharedContentClaimInvitationDetails) obj).sharedContentLink;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentLink});
    }

    public String toString() {
        return C4050a.f20326b.serialize((C4050a) this, false);
    }

    public String toStringMultiline() {
        return C4050a.f20326b.serialize((C4050a) this, true);
    }

    public SharedContentClaimInvitationDetails() {
        this(null);
    }
}
