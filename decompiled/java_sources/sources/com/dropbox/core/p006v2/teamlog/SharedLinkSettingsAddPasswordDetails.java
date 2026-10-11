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
public class SharedLinkSettingsAddPasswordDetails {
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkSettingsAddPasswordDetails$a */
    /* loaded from: classes4.dex */
    public static class C4118a extends StructSerializer<SharedLinkSettingsAddPasswordDetails> {

        /* renamed from: b */
        public static final C4118a f20394b = new C4118a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkSettingsAddPasswordDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_content_access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("shared_content_link".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_content_access_level\" missing.");
            }
            SharedLinkSettingsAddPasswordDetails sharedLinkSettingsAddPasswordDetails = new SharedLinkSettingsAddPasswordDetails(accessLevel, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkSettingsAddPasswordDetails, sharedLinkSettingsAddPasswordDetails.toStringMultiline());
            return sharedLinkSettingsAddPasswordDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkSettingsAddPasswordDetails sharedLinkSettingsAddPasswordDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedLinkSettingsAddPasswordDetails.sharedContentAccessLevel, jsonGenerator);
            if (sharedLinkSettingsAddPasswordDetails.sharedContentLink != null) {
                jsonGenerator.writeFieldName("shared_content_link");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkSettingsAddPasswordDetails.sharedContentLink, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkSettingsAddPasswordDetails(AccessLevel accessLevel, String str) {
        if (accessLevel != null) {
            this.sharedContentAccessLevel = accessLevel;
            this.sharedContentLink = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedLinkSettingsAddPasswordDetails sharedLinkSettingsAddPasswordDetails = (SharedLinkSettingsAddPasswordDetails) obj;
        AccessLevel accessLevel = this.sharedContentAccessLevel;
        AccessLevel accessLevel2 = sharedLinkSettingsAddPasswordDetails.sharedContentAccessLevel;
        if (accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) {
            String str = this.sharedContentLink;
            String str2 = sharedLinkSettingsAddPasswordDetails.sharedContentLink;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
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

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentAccessLevel, this.sharedContentLink});
    }

    public String toString() {
        return C4118a.f20394b.serialize((C4118a) this, false);
    }

    public String toStringMultiline() {
        return C4118a.f20394b.serialize((C4118a) this, true);
    }

    public SharedLinkSettingsAddPasswordDetails(AccessLevel accessLevel) {
        this(accessLevel, null);
    }
}
