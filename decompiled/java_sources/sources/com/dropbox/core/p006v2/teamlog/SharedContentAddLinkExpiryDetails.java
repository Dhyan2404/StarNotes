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
public class SharedContentAddLinkExpiryDetails {
    protected final Date newValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentAddLinkExpiryDetails$a */
    /* loaded from: classes4.dex */
    public static class C4030a extends StructSerializer<SharedContentAddLinkExpiryDetails> {

        /* renamed from: b */
        public static final C4030a f20306b = new C4030a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentAddLinkExpiryDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("new_value".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedContentAddLinkExpiryDetails sharedContentAddLinkExpiryDetails = new SharedContentAddLinkExpiryDetails(date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentAddLinkExpiryDetails, sharedContentAddLinkExpiryDetails.toStringMultiline());
            return sharedContentAddLinkExpiryDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentAddLinkExpiryDetails sharedContentAddLinkExpiryDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedContentAddLinkExpiryDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedContentAddLinkExpiryDetails.newValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentAddLinkExpiryDetails(Date date) {
        this.newValue = LangUtil.truncateMillis(date);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Date date = this.newValue;
        Date date2 = ((SharedContentAddLinkExpiryDetails) obj).newValue;
        if (date != date2) {
            return date != null && date.equals(date2);
        }
        return true;
    }

    public Date getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue});
    }

    public String toString() {
        return C4030a.f20306b.serialize((C4030a) this, false);
    }

    public String toStringMultiline() {
        return C4030a.f20306b.serialize((C4030a) this, true);
    }

    public SharedContentAddLinkExpiryDetails() {
        this(null);
    }
}
