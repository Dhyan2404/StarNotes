package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.teamlog.UserLogInfo;
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
public class SharedContentViewDetails {
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;
    protected final UserLogInfo sharedContentOwner;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentViewDetails$a */
    /* loaded from: classes4.dex */
    public static class C4074a extends StructSerializer<SharedContentViewDetails> {

        /* renamed from: b */
        public static final C4074a f20350b = new C4074a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentViewDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            AccessLevel accessLevel = null;
            UserLogInfo userLogInfo = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_content_link".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("shared_content_access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("shared_content_owner".equals(currentName)) {
                    userLogInfo = (UserLogInfo) StoneSerializers.nullableStruct(UserLogInfo.C4392a.f20680b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_content_link\" missing.");
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_content_access_level\" missing.");
            }
            SharedContentViewDetails sharedContentViewDetails = new SharedContentViewDetails(str2, accessLevel, userLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentViewDetails, sharedContentViewDetails.toStringMultiline());
            return sharedContentViewDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentViewDetails sharedContentViewDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_link");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedContentViewDetails.sharedContentLink, jsonGenerator);
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedContentViewDetails.sharedContentAccessLevel, jsonGenerator);
            if (sharedContentViewDetails.sharedContentOwner != null) {
                jsonGenerator.writeFieldName("shared_content_owner");
                StoneSerializers.nullableStruct(UserLogInfo.C4392a.f20680b).serialize((StructSerializer) sharedContentViewDetails.sharedContentOwner, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentViewDetails(String str, AccessLevel accessLevel, UserLogInfo userLogInfo) {
        if (str != null) {
            this.sharedContentLink = str;
            this.sharedContentOwner = userLogInfo;
            if (accessLevel != null) {
                this.sharedContentAccessLevel = accessLevel;
                return;
            }
            throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
        }
        throw new IllegalArgumentException("Required value for 'sharedContentLink' is null");
    }

    public boolean equals(Object obj) {
        AccessLevel accessLevel;
        AccessLevel accessLevel2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedContentViewDetails sharedContentViewDetails = (SharedContentViewDetails) obj;
        String str = this.sharedContentLink;
        String str2 = sharedContentViewDetails.sharedContentLink;
        if ((str == str2 || str.equals(str2)) && ((accessLevel = this.sharedContentAccessLevel) == (accessLevel2 = sharedContentViewDetails.sharedContentAccessLevel) || accessLevel.equals(accessLevel2))) {
            UserLogInfo userLogInfo = this.sharedContentOwner;
            UserLogInfo userLogInfo2 = sharedContentViewDetails.sharedContentOwner;
            if (userLogInfo == userLogInfo2) {
                return true;
            }
            if (userLogInfo != null && userLogInfo.equals(userLogInfo2)) {
                return true;
            }
        }
        return false;
    }

    public AccessLevel getSharedContentAccessLevel() {
        return this.sharedContentAccessLevel;
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public UserLogInfo getSharedContentOwner() {
        return this.sharedContentOwner;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentLink, this.sharedContentOwner, this.sharedContentAccessLevel});
    }

    public String toString() {
        return C4074a.f20350b.serialize((C4074a) this, false);
    }

    public String toStringMultiline() {
        return C4074a.f20350b.serialize((C4074a) this, true);
    }

    public SharedContentViewDetails(String str, AccessLevel accessLevel) {
        this(str, accessLevel, null);
    }
}
