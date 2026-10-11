package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.AccessLevel;
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
public class SharedContentRemoveMemberDetails {
    protected final AccessLevel sharedContentAccessLevel;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentRemoveMemberDetails$a */
    /* loaded from: classes4.dex */
    public static class C4064a extends StructSerializer<SharedContentRemoveMemberDetails> {

        /* renamed from: b */
        public static final C4064a f20340b = new C4064a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentRemoveMemberDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AccessLevel accessLevel = null;
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
                if ("shared_content_access_level".equals(currentName)) {
                    accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedContentRemoveMemberDetails sharedContentRemoveMemberDetails = new SharedContentRemoveMemberDetails(accessLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentRemoveMemberDetails, sharedContentRemoveMemberDetails.toStringMultiline());
            return sharedContentRemoveMemberDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentRemoveMemberDetails sharedContentRemoveMemberDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedContentRemoveMemberDetails.sharedContentAccessLevel != null) {
                jsonGenerator.writeFieldName("shared_content_access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize((StoneSerializer) sharedContentRemoveMemberDetails.sharedContentAccessLevel, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentRemoveMemberDetails(AccessLevel accessLevel) {
        this.sharedContentAccessLevel = accessLevel;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AccessLevel accessLevel = this.sharedContentAccessLevel;
        AccessLevel accessLevel2 = ((SharedContentRemoveMemberDetails) obj).sharedContentAccessLevel;
        if (accessLevel != accessLevel2) {
            return accessLevel != null && accessLevel.equals(accessLevel2);
        }
        return true;
    }

    public AccessLevel getSharedContentAccessLevel() {
        return this.sharedContentAccessLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentAccessLevel});
    }

    public String toString() {
        return C4064a.f20340b.serialize((C4064a) this, false);
    }

    public String toStringMultiline() {
        return C4064a.f20340b.serialize((C4064a) this, true);
    }

    public SharedContentRemoveMemberDetails() {
        this(null);
    }
}
