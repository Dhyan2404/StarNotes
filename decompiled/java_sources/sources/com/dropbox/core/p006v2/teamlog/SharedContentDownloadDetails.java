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
public class SharedContentDownloadDetails {
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;
    protected final UserLogInfo sharedContentOwner;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentDownloadDetails$a */
    /* loaded from: classes4.dex */
    public static class C4054a extends StructSerializer<SharedContentDownloadDetails> {

        /* renamed from: b */
        public static final C4054a f20330b = new C4054a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentDownloadDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SharedContentDownloadDetails sharedContentDownloadDetails = new SharedContentDownloadDetails(str2, accessLevel, userLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentDownloadDetails, sharedContentDownloadDetails.toStringMultiline());
            return sharedContentDownloadDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentDownloadDetails sharedContentDownloadDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_link");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedContentDownloadDetails.sharedContentLink, jsonGenerator);
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedContentDownloadDetails.sharedContentAccessLevel, jsonGenerator);
            if (sharedContentDownloadDetails.sharedContentOwner != null) {
                jsonGenerator.writeFieldName("shared_content_owner");
                StoneSerializers.nullableStruct(UserLogInfo.C4392a.f20680b).serialize((StructSerializer) sharedContentDownloadDetails.sharedContentOwner, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentDownloadDetails(String str, AccessLevel accessLevel, UserLogInfo userLogInfo) {
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
        SharedContentDownloadDetails sharedContentDownloadDetails = (SharedContentDownloadDetails) obj;
        String str = this.sharedContentLink;
        String str2 = sharedContentDownloadDetails.sharedContentLink;
        if ((str == str2 || str.equals(str2)) && ((accessLevel = this.sharedContentAccessLevel) == (accessLevel2 = sharedContentDownloadDetails.sharedContentAccessLevel) || accessLevel.equals(accessLevel2))) {
            UserLogInfo userLogInfo = this.sharedContentOwner;
            UserLogInfo userLogInfo2 = sharedContentDownloadDetails.sharedContentOwner;
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
        return C4054a.f20330b.serialize((C4054a) this, false);
    }

    public String toStringMultiline() {
        return C4054a.f20330b.serialize((C4054a) this, true);
    }

    public SharedContentDownloadDetails(String str, AccessLevel accessLevel) {
        this(str, accessLevel, null);
    }
}
