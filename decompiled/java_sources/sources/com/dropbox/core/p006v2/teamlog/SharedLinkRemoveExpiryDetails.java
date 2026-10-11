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
public class SharedLinkRemoveExpiryDetails {
    protected final Date previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkRemoveExpiryDetails$a */
    /* loaded from: classes4.dex */
    public static class C4114a extends StructSerializer<SharedLinkRemoveExpiryDetails> {

        /* renamed from: b */
        public static final C4114a f20390b = new C4114a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkRemoveExpiryDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedLinkRemoveExpiryDetails sharedLinkRemoveExpiryDetails = new SharedLinkRemoveExpiryDetails(date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkRemoveExpiryDetails, sharedLinkRemoveExpiryDetails.toStringMultiline());
            return sharedLinkRemoveExpiryDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkRemoveExpiryDetails sharedLinkRemoveExpiryDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedLinkRemoveExpiryDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkRemoveExpiryDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkRemoveExpiryDetails(Date date) {
        this.previousValue = LangUtil.truncateMillis(date);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Date date = this.previousValue;
        Date date2 = ((SharedLinkRemoveExpiryDetails) obj).previousValue;
        if (date != date2) {
            return date != null && date.equals(date2);
        }
        return true;
    }

    public Date getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue});
    }

    public String toString() {
        return C4114a.f20390b.serialize((C4114a) this, false);
    }

    public String toStringMultiline() {
        return C4114a.f20390b.serialize((C4114a) this, true);
    }

    public SharedLinkRemoveExpiryDetails() {
        this(null);
    }
}
