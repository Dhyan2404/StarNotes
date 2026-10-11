package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class SharedLinkSettingsAddExpirationDetails {
    protected final Date newValue;
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date newValue;
        protected final AccessLevel sharedContentAccessLevel;
        protected String sharedContentLink;

        public Builder(AccessLevel accessLevel) {
            if (accessLevel == null) {
                throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
            }
            this.sharedContentAccessLevel = accessLevel;
            this.sharedContentLink = null;
            this.newValue = null;
        }

        public SharedLinkSettingsAddExpirationDetails build() {
            return new SharedLinkSettingsAddExpirationDetails(this.sharedContentAccessLevel, this.sharedContentLink, this.newValue);
        }

        public Builder withNewValue(Date date) {
            this.newValue = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withSharedContentLink(String str) {
            this.sharedContentLink = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkSettingsAddExpirationDetails$a */
    /* loaded from: classes4.dex */
    public static class C4116a extends StructSerializer<SharedLinkSettingsAddExpirationDetails> {

        /* renamed from: b */
        public static final C4116a f20392b = new C4116a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkSettingsAddExpirationDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_content_access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("shared_content_link".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_content_access_level\" missing.");
            }
            SharedLinkSettingsAddExpirationDetails sharedLinkSettingsAddExpirationDetails = new SharedLinkSettingsAddExpirationDetails(accessLevel, str2, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkSettingsAddExpirationDetails, sharedLinkSettingsAddExpirationDetails.toStringMultiline());
            return sharedLinkSettingsAddExpirationDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkSettingsAddExpirationDetails sharedLinkSettingsAddExpirationDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedLinkSettingsAddExpirationDetails.sharedContentAccessLevel, jsonGenerator);
            if (sharedLinkSettingsAddExpirationDetails.sharedContentLink != null) {
                jsonGenerator.writeFieldName("shared_content_link");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkSettingsAddExpirationDetails.sharedContentLink, jsonGenerator);
            }
            if (sharedLinkSettingsAddExpirationDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkSettingsAddExpirationDetails.newValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkSettingsAddExpirationDetails(AccessLevel accessLevel, String str, Date date) {
        if (accessLevel != null) {
            this.sharedContentAccessLevel = accessLevel;
            this.sharedContentLink = str;
            this.newValue = LangUtil.truncateMillis(date);
            return;
        }
        throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
    }

    public static Builder newBuilder(AccessLevel accessLevel) {
        return new Builder(accessLevel);
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
        SharedLinkSettingsAddExpirationDetails sharedLinkSettingsAddExpirationDetails = (SharedLinkSettingsAddExpirationDetails) obj;
        AccessLevel accessLevel = this.sharedContentAccessLevel;
        AccessLevel accessLevel2 = sharedLinkSettingsAddExpirationDetails.sharedContentAccessLevel;
        if ((accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && ((str = this.sharedContentLink) == (str2 = sharedLinkSettingsAddExpirationDetails.sharedContentLink) || (str != null && str.equals(str2)))) {
            Date date = this.newValue;
            Date date2 = sharedLinkSettingsAddExpirationDetails.newValue;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public Date getNewValue() {
        return this.newValue;
    }

    public AccessLevel getSharedContentAccessLevel() {
        return this.sharedContentAccessLevel;
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentAccessLevel, this.sharedContentLink, this.newValue});
    }

    public String toString() {
        return C4116a.f20392b.serialize((C4116a) this, false);
    }

    public String toStringMultiline() {
        return C4116a.f20392b.serialize((C4116a) this, true);
    }

    public SharedLinkSettingsAddExpirationDetails(AccessLevel accessLevel) {
        this(accessLevel, null, null);
    }
}
