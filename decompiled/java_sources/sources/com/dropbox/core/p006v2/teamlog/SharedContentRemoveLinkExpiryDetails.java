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
public class SharedContentRemoveLinkExpiryDetails {
    protected final Date previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentRemoveLinkExpiryDetails$a */
    /* loaded from: classes4.dex */
    public static class C4060a extends StructSerializer<SharedContentRemoveLinkExpiryDetails> {

        /* renamed from: b */
        public static final C4060a f20336b = new C4060a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentRemoveLinkExpiryDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SharedContentRemoveLinkExpiryDetails sharedContentRemoveLinkExpiryDetails = new SharedContentRemoveLinkExpiryDetails(date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentRemoveLinkExpiryDetails, sharedContentRemoveLinkExpiryDetails.toStringMultiline());
            return sharedContentRemoveLinkExpiryDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentRemoveLinkExpiryDetails sharedContentRemoveLinkExpiryDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedContentRemoveLinkExpiryDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedContentRemoveLinkExpiryDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentRemoveLinkExpiryDetails(Date date) {
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
        Date date2 = ((SharedContentRemoveLinkExpiryDetails) obj).previousValue;
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
        return C4060a.f20336b.serialize((C4060a) this, false);
    }

    public String toStringMultiline() {
        return C4060a.f20336b.serialize((C4060a) this, true);
    }

    public SharedContentRemoveLinkExpiryDetails() {
        this(null);
    }
}
