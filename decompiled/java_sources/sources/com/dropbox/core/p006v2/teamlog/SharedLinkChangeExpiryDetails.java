package com.dropbox.core.p006v2.teamlog;

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
public class SharedLinkChangeExpiryDetails {
    protected final Date newValue;
    protected final Date previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date newValue = null;
        protected Date previousValue = null;

        public SharedLinkChangeExpiryDetails build() {
            return new SharedLinkChangeExpiryDetails(this.newValue, this.previousValue);
        }

        public Builder withNewValue(Date date) {
            this.newValue = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withPreviousValue(Date date) {
            this.previousValue = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkChangeExpiryDetails$a */
    /* loaded from: classes4.dex */
    public static class C4102a extends StructSerializer<SharedLinkChangeExpiryDetails> {

        /* renamed from: b */
        public static final C4102a f20378b = new C4102a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkChangeExpiryDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Date date = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Date date2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedLinkChangeExpiryDetails sharedLinkChangeExpiryDetails = new SharedLinkChangeExpiryDetails(date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkChangeExpiryDetails, sharedLinkChangeExpiryDetails.toStringMultiline());
            return sharedLinkChangeExpiryDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkChangeExpiryDetails sharedLinkChangeExpiryDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedLinkChangeExpiryDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkChangeExpiryDetails.newValue, jsonGenerator);
            }
            if (sharedLinkChangeExpiryDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkChangeExpiryDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkChangeExpiryDetails(Date date, Date date2) {
        this.newValue = LangUtil.truncateMillis(date);
        this.previousValue = LangUtil.truncateMillis(date2);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedLinkChangeExpiryDetails sharedLinkChangeExpiryDetails = (SharedLinkChangeExpiryDetails) obj;
        Date date = this.newValue;
        Date date2 = sharedLinkChangeExpiryDetails.newValue;
        if (date == date2 || (date != null && date.equals(date2))) {
            Date date3 = this.previousValue;
            Date date4 = sharedLinkChangeExpiryDetails.previousValue;
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

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4102a.f20378b.serialize((C4102a) this, false);
    }

    public String toStringMultiline() {
        return C4102a.f20378b.serialize((C4102a) this, true);
    }

    public SharedLinkChangeExpiryDetails() {
        this(null, null);
    }
}
