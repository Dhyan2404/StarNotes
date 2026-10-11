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
import java.util.List;

/* loaded from: classes4.dex */
public class SharedContentRemoveInviteesDetails {
    protected final List<String> invitees;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentRemoveInviteesDetails$a */
    /* loaded from: classes4.dex */
    public static class C4058a extends StructSerializer<SharedContentRemoveInviteesDetails> {

        /* renamed from: b */
        public static final C4058a f20334b = new C4058a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentRemoveInviteesDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
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
                if ("invitees".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"invitees\" missing.");
            }
            SharedContentRemoveInviteesDetails sharedContentRemoveInviteesDetails = new SharedContentRemoveInviteesDetails(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentRemoveInviteesDetails, sharedContentRemoveInviteesDetails.toStringMultiline());
            return sharedContentRemoveInviteesDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentRemoveInviteesDetails sharedContentRemoveInviteesDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("invitees");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) sharedContentRemoveInviteesDetails.invitees, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentRemoveInviteesDetails(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'invitees' is null");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'invitees' is null");
            }
            if (str.length() > 255) {
                throw new IllegalArgumentException("Stringan item in list 'invitees' is longer than 255");
            }
        }
        this.invitees = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<String> list = this.invitees;
        List<String> list2 = ((SharedContentRemoveInviteesDetails) obj).invitees;
        return list == list2 || list.equals(list2);
    }

    public List<String> getInvitees() {
        return this.invitees;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.invitees});
    }

    public String toString() {
        return C4058a.f20334b.serialize((C4058a) this, false);
    }

    public String toStringMultiline() {
        return C4058a.f20334b.serialize((C4058a) this, true);
    }
}
