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
public class SharedContentCopyDetails {
    protected final String destinationPath;
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;
    protected final UserLogInfo sharedContentOwner;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentCopyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4052a extends StructSerializer<SharedContentCopyDetails> {

        /* renamed from: b */
        public static final C4052a f20328b = new C4052a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentCopyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str3 = null;
            UserLogInfo userLogInfo = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_content_link".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("shared_content_access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("destination_path".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
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
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"destination_path\" missing.");
            }
            SharedContentCopyDetails sharedContentCopyDetails = new SharedContentCopyDetails(str2, accessLevel, str3, userLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentCopyDetails, sharedContentCopyDetails.toStringMultiline());
            return sharedContentCopyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentCopyDetails sharedContentCopyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_link");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedContentCopyDetails.sharedContentLink, jsonGenerator);
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedContentCopyDetails.sharedContentAccessLevel, jsonGenerator);
            jsonGenerator.writeFieldName("destination_path");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedContentCopyDetails.destinationPath, jsonGenerator);
            if (sharedContentCopyDetails.sharedContentOwner != null) {
                jsonGenerator.writeFieldName("shared_content_owner");
                StoneSerializers.nullableStruct(UserLogInfo.C4392a.f20680b).serialize((StructSerializer) sharedContentCopyDetails.sharedContentOwner, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentCopyDetails(String str, AccessLevel accessLevel, String str2, UserLogInfo userLogInfo) {
        if (str != null) {
            this.sharedContentLink = str;
            this.sharedContentOwner = userLogInfo;
            if (accessLevel != null) {
                this.sharedContentAccessLevel = accessLevel;
                if (str2 != null) {
                    this.destinationPath = str2;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'destinationPath' is null");
            }
            throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
        }
        throw new IllegalArgumentException("Required value for 'sharedContentLink' is null");
    }

    public boolean equals(Object obj) {
        AccessLevel accessLevel;
        AccessLevel accessLevel2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedContentCopyDetails sharedContentCopyDetails = (SharedContentCopyDetails) obj;
        String str3 = this.sharedContentLink;
        String str4 = sharedContentCopyDetails.sharedContentLink;
        if ((str3 == str4 || str3.equals(str4)) && (((accessLevel = this.sharedContentAccessLevel) == (accessLevel2 = sharedContentCopyDetails.sharedContentAccessLevel) || accessLevel.equals(accessLevel2)) && ((str = this.destinationPath) == (str2 = sharedContentCopyDetails.destinationPath) || str.equals(str2)))) {
            UserLogInfo userLogInfo = this.sharedContentOwner;
            UserLogInfo userLogInfo2 = sharedContentCopyDetails.sharedContentOwner;
            if (userLogInfo == userLogInfo2) {
                return true;
            }
            if (userLogInfo != null && userLogInfo.equals(userLogInfo2)) {
                return true;
            }
        }
        return false;
    }

    public String getDestinationPath() {
        return this.destinationPath;
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
        return Arrays.hashCode(new Object[]{this.sharedContentLink, this.sharedContentOwner, this.sharedContentAccessLevel, this.destinationPath});
    }

    public String toString() {
        return C4052a.f20328b.serialize((C4052a) this, false);
    }

    public String toStringMultiline() {
        return C4052a.f20328b.serialize((C4052a) this, true);
    }

    public SharedContentCopyDetails(String str, AccessLevel accessLevel, String str2) {
        this(str, accessLevel, str2, null);
    }
}
