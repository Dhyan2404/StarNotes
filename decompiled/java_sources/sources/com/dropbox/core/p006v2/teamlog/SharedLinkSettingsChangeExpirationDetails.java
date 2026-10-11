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
public class SharedLinkSettingsChangeExpirationDetails {
    protected final Date newValue;
    protected final Date previousValue;
    protected final AccessLevel sharedContentAccessLevel;
    protected final String sharedContentLink;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date newValue;
        protected Date previousValue;
        protected final AccessLevel sharedContentAccessLevel;
        protected String sharedContentLink;

        public Builder(AccessLevel accessLevel) {
            if (accessLevel == null) {
                throw new IllegalArgumentException("Required value for 'sharedContentAccessLevel' is null");
            }
            this.sharedContentAccessLevel = accessLevel;
            this.sharedContentLink = null;
            this.newValue = null;
            this.previousValue = null;
        }

        public SharedLinkSettingsChangeExpirationDetails build() {
            return new SharedLinkSettingsChangeExpirationDetails(this.sharedContentAccessLevel, this.sharedContentLink, this.newValue, this.previousValue);
        }

        public Builder withNewValue(Date date) {
            this.newValue = LangUtil.truncateMillis(date);
            return this;
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

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkSettingsChangeExpirationDetails$a */
    /* loaded from: classes4.dex */
    public static class C4126a extends StructSerializer<SharedLinkSettingsChangeExpirationDetails> {

        /* renamed from: b */
        public static final C4126a f20402b = new C4126a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkSettingsChangeExpirationDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Date date2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_content_access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("shared_content_link".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_content_access_level\" missing.");
            }
            SharedLinkSettingsChangeExpirationDetails sharedLinkSettingsChangeExpirationDetails = new SharedLinkSettingsChangeExpirationDetails(accessLevel, str2, date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkSettingsChangeExpirationDetails, sharedLinkSettingsChangeExpirationDetails.toStringMultiline());
            return sharedLinkSettingsChangeExpirationDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkSettingsChangeExpirationDetails sharedLinkSettingsChangeExpirationDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_content_access_level");
            AccessLevel.Serializer.INSTANCE.serialize(sharedLinkSettingsChangeExpirationDetails.sharedContentAccessLevel, jsonGenerator);
            if (sharedLinkSettingsChangeExpirationDetails.sharedContentLink != null) {
                jsonGenerator.writeFieldName("shared_content_link");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkSettingsChangeExpirationDetails.sharedContentLink, jsonGenerator);
            }
            if (sharedLinkSettingsChangeExpirationDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkSettingsChangeExpirationDetails.newValue, jsonGenerator);
            }
            if (sharedLinkSettingsChangeExpirationDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkSettingsChangeExpirationDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkSettingsChangeExpirationDetails(AccessLevel accessLevel, String str, Date date, Date date2) {
        if (accessLevel != null) {
            this.sharedContentAccessLevel = accessLevel;
            this.sharedContentLink = str;
            this.newValue = LangUtil.truncateMillis(date);
            this.previousValue = LangUtil.truncateMillis(date2);
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
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedLinkSettingsChangeExpirationDetails sharedLinkSettingsChangeExpirationDetails = (SharedLinkSettingsChangeExpirationDetails) obj;
        AccessLevel accessLevel = this.sharedContentAccessLevel;
        AccessLevel accessLevel2 = sharedLinkSettingsChangeExpirationDetails.sharedContentAccessLevel;
        if ((accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && (((str = this.sharedContentLink) == (str2 = sharedLinkSettingsChangeExpirationDetails.sharedContentLink) || (str != null && str.equals(str2))) && ((date = this.newValue) == (date2 = sharedLinkSettingsChangeExpirationDetails.newValue) || (date != null && date.equals(date2))))) {
            Date date3 = this.previousValue;
            Date date4 = sharedLinkSettingsChangeExpirationDetails.previousValue;
            if (date3 == date4) {
                return true;
            }
            if (date3 != null && date3.equals(date4)) {
                return true;
            }
        }
        return false;
    }

    public Date getNewValue() {
        return this.newValue;
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
        return Arrays.hashCode(new Object[]{this.sharedContentAccessLevel, this.sharedContentLink, this.newValue, this.previousValue});
    }

    public String toString() {
        return C4126a.f20402b.serialize((C4126a) this, false);
    }

    public String toStringMultiline() {
        return C4126a.f20402b.serialize((C4126a) this, true);
    }

    public SharedLinkSettingsChangeExpirationDetails(AccessLevel accessLevel) {
        this(accessLevel, null, null, null);
    }
}
