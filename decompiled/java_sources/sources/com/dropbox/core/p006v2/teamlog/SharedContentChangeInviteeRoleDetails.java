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
public class SharedContentChangeInviteeRoleDetails {
    protected final String invitee;
    protected final AccessLevel newAccessLevel;
    protected final AccessLevel previousAccessLevel;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentChangeInviteeRoleDetails$a */
    /* loaded from: classes4.dex */
    public static class C4038a extends StructSerializer<SharedContentChangeInviteeRoleDetails> {

        /* renamed from: b */
        public static final C4038a f20314b = new C4038a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentChangeInviteeRoleDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            AccessLevel accessLevel2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("invitee".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_access_level".equals(currentName)) {
                    accessLevel2 = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_access_level\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"invitee\" missing.");
            }
            SharedContentChangeInviteeRoleDetails sharedContentChangeInviteeRoleDetails = new SharedContentChangeInviteeRoleDetails(accessLevel, str2, accessLevel2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentChangeInviteeRoleDetails, sharedContentChangeInviteeRoleDetails.toStringMultiline());
            return sharedContentChangeInviteeRoleDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentChangeInviteeRoleDetails sharedContentChangeInviteeRoleDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_access_level");
            AccessLevel.Serializer serializer = AccessLevel.Serializer.INSTANCE;
            serializer.serialize(sharedContentChangeInviteeRoleDetails.newAccessLevel, jsonGenerator);
            jsonGenerator.writeFieldName("invitee");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedContentChangeInviteeRoleDetails.invitee, jsonGenerator);
            if (sharedContentChangeInviteeRoleDetails.previousAccessLevel != null) {
                jsonGenerator.writeFieldName("previous_access_level");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) sharedContentChangeInviteeRoleDetails.previousAccessLevel, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentChangeInviteeRoleDetails(AccessLevel accessLevel, String str, AccessLevel accessLevel2) {
        this.previousAccessLevel = accessLevel2;
        if (accessLevel != null) {
            this.newAccessLevel = accessLevel;
            if (str != null) {
                if (str.length() <= 255) {
                    this.invitee = str;
                    return;
                }
                throw new IllegalArgumentException("String 'invitee' is longer than 255");
            }
            throw new IllegalArgumentException("Required value for 'invitee' is null");
        }
        throw new IllegalArgumentException("Required value for 'newAccessLevel' is null");
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
        SharedContentChangeInviteeRoleDetails sharedContentChangeInviteeRoleDetails = (SharedContentChangeInviteeRoleDetails) obj;
        AccessLevel accessLevel = this.newAccessLevel;
        AccessLevel accessLevel2 = sharedContentChangeInviteeRoleDetails.newAccessLevel;
        if ((accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && ((str = this.invitee) == (str2 = sharedContentChangeInviteeRoleDetails.invitee) || str.equals(str2))) {
            AccessLevel accessLevel3 = this.previousAccessLevel;
            AccessLevel accessLevel4 = sharedContentChangeInviteeRoleDetails.previousAccessLevel;
            if (accessLevel3 == accessLevel4) {
                return true;
            }
            if (accessLevel3 != null && accessLevel3.equals(accessLevel4)) {
                return true;
            }
        }
        return false;
    }

    public String getInvitee() {
        return this.invitee;
    }

    public AccessLevel getNewAccessLevel() {
        return this.newAccessLevel;
    }

    public AccessLevel getPreviousAccessLevel() {
        return this.previousAccessLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousAccessLevel, this.newAccessLevel, this.invitee});
    }

    public String toString() {
        return C4038a.f20314b.serialize((C4038a) this, false);
    }

    public String toStringMultiline() {
        return C4038a.f20314b.serialize((C4038a) this, true);
    }

    public SharedContentChangeInviteeRoleDetails(AccessLevel accessLevel, String str) {
        this(accessLevel, str, null);
    }
}
