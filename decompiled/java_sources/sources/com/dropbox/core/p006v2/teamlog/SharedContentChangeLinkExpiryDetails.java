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
public class SharedContentChangeLinkExpiryDetails {
    protected final Date newValue;
    protected final Date previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date newValue = null;
        protected Date previousValue = null;

        public SharedContentChangeLinkExpiryDetails build() {
            return new SharedContentChangeLinkExpiryDetails(this.newValue, this.previousValue);
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

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentChangeLinkExpiryDetails$a */
    /* loaded from: classes4.dex */
    public static class C4042a extends StructSerializer<SharedContentChangeLinkExpiryDetails> {

        /* renamed from: b */
        public static final C4042a f20318b = new C4042a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentChangeLinkExpiryDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetails = new SharedContentChangeLinkExpiryDetails(date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentChangeLinkExpiryDetails, sharedContentChangeLinkExpiryDetails.toStringMultiline());
            return sharedContentChangeLinkExpiryDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedContentChangeLinkExpiryDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedContentChangeLinkExpiryDetails.newValue, jsonGenerator);
            }
            if (sharedContentChangeLinkExpiryDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedContentChangeLinkExpiryDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentChangeLinkExpiryDetails(Date date, Date date2) {
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
        SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetails = (SharedContentChangeLinkExpiryDetails) obj;
        Date date = this.newValue;
        Date date2 = sharedContentChangeLinkExpiryDetails.newValue;
        if (date == date2 || (date != null && date.equals(date2))) {
            Date date3 = this.previousValue;
            Date date4 = sharedContentChangeLinkExpiryDetails.previousValue;
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
        return C4042a.f20318b.serialize((C4042a) this, false);
    }

    public String toStringMultiline() {
        return C4042a.f20318b.serialize((C4042a) this, true);
    }

    public SharedContentChangeLinkExpiryDetails() {
        this(null, null);
    }
}
