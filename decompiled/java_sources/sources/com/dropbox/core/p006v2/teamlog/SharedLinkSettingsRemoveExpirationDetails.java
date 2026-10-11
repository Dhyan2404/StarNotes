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
public class SharedLinkSettingsRemoveExpirationDetails {
    protected final Date previousValue;
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date previousValue;
        protected final AccessLevel sharedContentAccessLevel;
        protected String sharedContentLink;

        public Builder(AccessLevel accessLevel) {
            if (accessLevel == null) {
                throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
            }
            this.sharedContentAccessLevel = accessLevel;
            this.sharedContentLink = null;
            this.previousValue = null;
        }

        public SharedLinkSettingsRemoveExpirationDetails build() {
            return new SharedLinkSettingsRemoveExpirationDetails(this.sharedContentAccessLevel, this.sharedContentLink, this.previousValue);
        }

        public Builder withPreviousValue(Date date) {
            this.previousValue = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withSharedContentLink(String str) {
            this.sharedContentLink = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkSettingsRemoveExpirationDetails$a */
    /* loaded from: classes4.dex */
    public static class C4130a extends StructSerializer<SharedLinkSettingsRemoveExpirationDetails> {

        /* renamed from: b */
        public static final C4130a f20406b = new C4130a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkSettingsRemoveExpirationDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("previous_value".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_content_access_level\" missing.");
            }
            SharedLinkSettingsRemoveExpirationDetails sharedLinkSettingsRemoveExpirationDetails = new SharedLinkSettingsRemoveExpirationDetails(accessLevel, str2, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkSettingsRemoveExpirationDetails, sharedLinkSettingsRemoveExpirationDetails.toStringMultiline());
            return sharedLinkSettingsRemoveExpirationDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkSettingsRemoveExpirationDetails sharedLinkSettingsRemoveExpirationDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedLinkSettingsRemoveExpirationDetails.sharedContentAccessLevel, jsonGenerator);
            if (sharedLinkSettingsRemoveExpirationDetails.sharedContentLink != null) {
                jsonGenerator.writeFieldName("shared_content_link");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkSettingsRemoveExpirationDetails.sharedContentLink, jsonGenerator);
            }
            if (sharedLinkSettingsRemoveExpirationDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkSettingsRemoveExpirationDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkSettingsRemoveExpirationDetails(AccessLevel accessLevel, String str, Date date) {
        if (accessLevel != null) {
            this.sharedContentAccessLevel = accessLevel;
            this.sharedContentLink = str;
            this.previousValue = LangUtil.truncateMillis(date);
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
        SharedLinkSettingsRemoveExpirationDetails sharedLinkSettingsRemoveExpirationDetails = (SharedLinkSettingsRemoveExpirationDetails) obj;
        AccessLevel accessLevel = this.sharedContentAccessLevel;
        AccessLevel accessLevel2 = sharedLinkSettingsRemoveExpirationDetails.sharedContentAccessLevel;
        if ((accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && ((str = this.sharedContentLink) == (str2 = sharedLinkSettingsRemoveExpirationDetails.sharedContentLink) || (str != null && str.equals(str2)))) {
            Date date = this.previousValue;
            Date date2 = sharedLinkSettingsRemoveExpirationDetails.previousValue;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public Date getPreviousValue() {
        return this.previousValue;
    }

    public AccessLevel getSharedContentAccessLevel() {
        return this.sharedContentAccessLevel;
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentAccessLevel, this.sharedContentLink, this.previousValue});
    }

    public String toString() {
        return C4130a.f20406b.serialize((C4130a) this, false);
    }

    public String toStringMultiline() {
        return C4130a.f20406b.serialize((C4130a) this, true);
    }

    public SharedLinkSettingsRemoveExpirationDetails(AccessLevel accessLevel) {
        this(accessLevel, null, null);
    }
}
