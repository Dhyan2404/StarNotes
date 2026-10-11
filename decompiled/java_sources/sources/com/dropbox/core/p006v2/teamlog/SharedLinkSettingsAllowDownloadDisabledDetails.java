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
public class SharedLinkSettingsAllowDownloadDisabledDetails {
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkSettingsAllowDownloadDisabledDetails$a */
    /* loaded from: classes4.dex */
    public static class C4120a extends StructSerializer<SharedLinkSettingsAllowDownloadDisabledDetails> {

        /* renamed from: b */
        public static final C4120a f20396b = new C4120a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkSettingsAllowDownloadDisabledDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SharedLinkSettingsAllowDownloadDisabledDetails sharedLinkSettingsAllowDownloadDisabledDetails = new SharedLinkSettingsAllowDownloadDisabledDetails(accessLevel, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkSettingsAllowDownloadDisabledDetails, sharedLinkSettingsAllowDownloadDisabledDetails.toStringMultiline());
            return sharedLinkSettingsAllowDownloadDisabledDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkSettingsAllowDownloadDisabledDetails sharedLinkSettingsAllowDownloadDisabledDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedLinkSettingsAllowDownloadDisabledDetails.sharedContentAccessLevel, jsonGenerator);
            if (sharedLinkSettingsAllowDownloadDisabledDetails.sharedContentLink != null) {
                jsonGenerator.writeFieldName("shared_content_link");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkSettingsAllowDownloadDisabledDetails.sharedContentLink, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkSettingsAllowDownloadDisabledDetails(AccessLevel accessLevel, String str) {
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
        SharedLinkSettingsAllowDownloadDisabledDetails sharedLinkSettingsAllowDownloadDisabledDetails = (SharedLinkSettingsAllowDownloadDisabledDetails) obj;
        AccessLevel accessLevel = this.sharedContentAccessLevel;
        AccessLevel accessLevel2 = sharedLinkSettingsAllowDownloadDisabledDetails.sharedContentAccessLevel;
        if (accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) {
            String str = this.sharedContentLink;
            String str2 = sharedLinkSettingsAllowDownloadDisabledDetails.sharedContentLink;
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
        return C4120a.f20396b.serialize((C4120a) this, false);
    }

    public String toStringMultiline() {
        return C4120a.f20396b.serialize((C4120a) this, true);
    }

    public SharedLinkSettingsAllowDownloadDisabledDetails(AccessLevel accessLevel) {
        this(accessLevel, null);
    }
}
