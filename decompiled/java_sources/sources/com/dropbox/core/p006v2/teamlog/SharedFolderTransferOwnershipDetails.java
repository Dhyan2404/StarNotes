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
public class SharedFolderTransferOwnershipDetails {
    protected final String newOwnerEmail;
    protected final String previousOwnerEmail;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderTransferOwnershipDetails$a */
    /* loaded from: classes4.dex */
    public static class C4094a extends StructSerializer<SharedFolderTransferOwnershipDetails> {

        /* renamed from: b */
        public static final C4094a f20370b = new C4094a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderTransferOwnershipDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("new_owner_email".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_owner_email".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_owner_email\" missing.");
            }
            SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetails = new SharedFolderTransferOwnershipDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderTransferOwnershipDetails, sharedFolderTransferOwnershipDetails.toStringMultiline());
            return sharedFolderTransferOwnershipDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_owner_email");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedFolderTransferOwnershipDetails.newOwnerEmail, jsonGenerator);
            if (sharedFolderTransferOwnershipDetails.previousOwnerEmail != null) {
                jsonGenerator.writeFieldName("previous_owner_email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderTransferOwnershipDetails.previousOwnerEmail, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderTransferOwnershipDetails(String str, String str2) {
        if (str2 != null && str2.length() > 255) {
            throw new IllegalArgumentException("String 'previousOwnerEmail' is longer than 255");
        }
        this.previousOwnerEmail = str2;
        if (str != null) {
            if (str.length() <= 255) {
                this.newOwnerEmail = str;
                return;
            }
            throw new IllegalArgumentException("String 'newOwnerEmail' is longer than 255");
        }
        throw new IllegalArgumentException("Required value for 'newOwnerEmail' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetails = (SharedFolderTransferOwnershipDetails) obj;
        String str = this.newOwnerEmail;
        String str2 = sharedFolderTransferOwnershipDetails.newOwnerEmail;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.previousOwnerEmail;
            String str4 = sharedFolderTransferOwnershipDetails.previousOwnerEmail;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getNewOwnerEmail() {
        return this.newOwnerEmail;
    }

    public String getPreviousOwnerEmail() {
        return this.previousOwnerEmail;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousOwnerEmail, this.newOwnerEmail});
    }

    public String toString() {
        return C4094a.f20370b.serialize((C4094a) this, false);
    }

    public String toStringMultiline() {
        return C4094a.f20370b.serialize((C4094a) this, true);
    }

    public SharedFolderTransferOwnershipDetails(String str) {
        this(str, null);
    }
}
