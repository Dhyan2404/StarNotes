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
public class SharedContentChangeMemberRoleDetails {
    protected final AccessLevel newAccessLevel;
    protected final AccessLevel previousAccessLevel;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentChangeMemberRoleDetails$a */
    /* loaded from: classes4.dex */
    public static class C4046a extends StructSerializer<SharedContentChangeMemberRoleDetails> {

        /* renamed from: b */
        public static final C4046a f20322b = new C4046a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentChangeMemberRoleDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            AccessLevel accessLevel2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_access_level".equals(currentName)) {
                    accessLevel2 = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_access_level\" missing.");
            }
            SharedContentChangeMemberRoleDetails sharedContentChangeMemberRoleDetails = new SharedContentChangeMemberRoleDetails(accessLevel, accessLevel2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentChangeMemberRoleDetails, sharedContentChangeMemberRoleDetails.toStringMultiline());
            return sharedContentChangeMemberRoleDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentChangeMemberRoleDetails sharedContentChangeMemberRoleDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_access_level");
            AccessLevel.Serializer serializer = AccessLevel.Serializer.INSTANCE;
            serializer.serialize(sharedContentChangeMemberRoleDetails.newAccessLevel, jsonGenerator);
            if (sharedContentChangeMemberRoleDetails.previousAccessLevel != null) {
                jsonGenerator.writeFieldName("previous_access_level");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) sharedContentChangeMemberRoleDetails.previousAccessLevel, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentChangeMemberRoleDetails(AccessLevel accessLevel, AccessLevel accessLevel2) {
        this.previousAccessLevel = accessLevel2;
        if (accessLevel != null) {
            this.newAccessLevel = accessLevel;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newAccessLevel' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedContentChangeMemberRoleDetails sharedContentChangeMemberRoleDetails = (SharedContentChangeMemberRoleDetails) obj;
        AccessLevel accessLevel = this.newAccessLevel;
        AccessLevel accessLevel2 = sharedContentChangeMemberRoleDetails.newAccessLevel;
        if (accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) {
            AccessLevel accessLevel3 = this.previousAccessLevel;
            AccessLevel accessLevel4 = sharedContentChangeMemberRoleDetails.previousAccessLevel;
            if (accessLevel3 == accessLevel4) {
                return true;
            }
            if (accessLevel3 != null && accessLevel3.equals(accessLevel4)) {
                return true;
            }
        }
        return false;
    }

    public AccessLevel getNewAccessLevel() {
        return this.newAccessLevel;
    }

    public AccessLevel getPreviousAccessLevel() {
        return this.previousAccessLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousAccessLevel, this.newAccessLevel});
    }

    public String toString() {
        return C4046a.f20322b.serialize((C4046a) this, false);
    }

    public String toStringMultiline() {
        return C4046a.f20322b.serialize((C4046a) this, true);
    }

    public SharedContentChangeMemberRoleDetails(AccessLevel accessLevel) {
        this(accessLevel, null);
    }
}
