package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.LinkAudience;
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
public class SharedLinkSettingsChangeAudienceDetails {
    protected final LinkAudience newValue;
    protected final LinkAudience previousValue;
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final LinkAudience newValue;
        protected LinkAudience previousValue;
        protected final AccessLevel sharedContentAccessLevel;
        protected String sharedContentLink;

        public Builder(AccessLevel accessLevel, LinkAudience linkAudience) {
            if (accessLevel == null) {
                throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
            }
            this.sharedContentAccessLevel = accessLevel;
            if (linkAudience == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = linkAudience;
            this.sharedContentLink = null;
            this.previousValue = null;
        }

        public SharedLinkSettingsChangeAudienceDetails build() {
            return new SharedLinkSettingsChangeAudienceDetails(this.sharedContentAccessLevel, this.newValue, this.sharedContentLink, this.previousValue);
        }

        public Builder withPreviousValue(LinkAudience linkAudience) {
            this.previousValue = linkAudience;
            return this;
        }

        public Builder withSharedContentLink(String str) {
            this.sharedContentLink = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkSettingsChangeAudienceDetails$a */
    /* loaded from: classes4.dex */
    public static class C4124a extends StructSerializer<SharedLinkSettingsChangeAudienceDetails> {

        /* renamed from: b */
        public static final C4124a f20400b = new C4124a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkSettingsChangeAudienceDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            LinkAudience linkAudience = null;
            String str2 = null;
            LinkAudience linkAudience2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_content_access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    linkAudience = LinkAudience.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("shared_content_link".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    linkAudience2 = (LinkAudience) StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_content_access_level\" missing.");
            }
            if (linkAudience == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedLinkSettingsChangeAudienceDetails sharedLinkSettingsChangeAudienceDetails = new SharedLinkSettingsChangeAudienceDetails(accessLevel, linkAudience, str2, linkAudience2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkSettingsChangeAudienceDetails, sharedLinkSettingsChangeAudienceDetails.toStringMultiline());
            return sharedLinkSettingsChangeAudienceDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkSettingsChangeAudienceDetails sharedLinkSettingsChangeAudienceDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedLinkSettingsChangeAudienceDetails.sharedContentAccessLevel, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            LinkAudience.Serializer serializer = LinkAudience.Serializer.INSTANCE;
            serializer.serialize(sharedLinkSettingsChangeAudienceDetails.newValue, jsonGenerator);
            if (sharedLinkSettingsChangeAudienceDetails.sharedContentLink != null) {
                jsonGenerator.writeFieldName("shared_content_link");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkSettingsChangeAudienceDetails.sharedContentLink, jsonGenerator);
            }
            if (sharedLinkSettingsChangeAudienceDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) sharedLinkSettingsChangeAudienceDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkSettingsChangeAudienceDetails(AccessLevel accessLevel, LinkAudience linkAudience, String str, LinkAudience linkAudience2) {
        if (accessLevel != null) {
            this.sharedContentAccessLevel = accessLevel;
            this.sharedContentLink = str;
            if (linkAudience != null) {
                this.newValue = linkAudience;
                this.previousValue = linkAudience2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
    }

    public static Builder newBuilder(AccessLevel accessLevel, LinkAudience linkAudience) {
        return new Builder(accessLevel, linkAudience);
    }

    public boolean equals(Object obj) {
        LinkAudience linkAudience;
        LinkAudience linkAudience2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedLinkSettingsChangeAudienceDetails sharedLinkSettingsChangeAudienceDetails = (SharedLinkSettingsChangeAudienceDetails) obj;
        AccessLevel accessLevel = this.sharedContentAccessLevel;
        AccessLevel accessLevel2 = sharedLinkSettingsChangeAudienceDetails.sharedContentAccessLevel;
        if ((accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && (((linkAudience = this.newValue) == (linkAudience2 = sharedLinkSettingsChangeAudienceDetails.newValue) || linkAudience.equals(linkAudience2)) && ((str = this.sharedContentLink) == (str2 = sharedLinkSettingsChangeAudienceDetails.sharedContentLink) || (str != null && str.equals(str2))))) {
            LinkAudience linkAudience3 = this.previousValue;
            LinkAudience linkAudience4 = sharedLinkSettingsChangeAudienceDetails.previousValue;
            if (linkAudience3 == linkAudience4) {
                return true;
            }
            if (linkAudience3 != null && linkAudience3.equals(linkAudience4)) {
                return true;
            }
        }
        return false;
    }

    public LinkAudience getNewValue() {
        return this.newValue;
    }

    public LinkAudience getPreviousValue() {
        return this.previousValue;
    }

    public AccessLevel getSharedContentAccessLevel() {
        return this.sharedContentAccessLevel;
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentAccessLevel, this.sharedContentLink, this.newValue, this.previousValue});
    }

    public String toString() {
        return C4124a.f20400b.serialize((C4124a) this, false);
    }

    public String toStringMultiline() {
        return C4124a.f20400b.serialize((C4124a) this, true);
    }

    public SharedLinkSettingsChangeAudienceDetails(AccessLevel accessLevel, LinkAudience linkAudience) {
        this(accessLevel, linkAudience, null, null);
    }
}
