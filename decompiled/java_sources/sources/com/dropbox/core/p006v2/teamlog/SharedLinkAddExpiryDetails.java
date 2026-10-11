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
public class SharedLinkAddExpiryDetails {
    protected final Date newValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkAddExpiryDetails$a */
    /* loaded from: classes4.dex */
    public static class C4100a extends StructSerializer<SharedLinkAddExpiryDetails> {

        /* renamed from: b */
        public static final C4100a f20376b = new C4100a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkAddExpiryDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedLinkAddExpiryDetails sharedLinkAddExpiryDetails = new SharedLinkAddExpiryDetails(date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkAddExpiryDetails, sharedLinkAddExpiryDetails.toStringMultiline());
            return sharedLinkAddExpiryDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkAddExpiryDetails sharedLinkAddExpiryDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) sharedLinkAddExpiryDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkAddExpiryDetails(Date date) {
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
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
        Date date2 = ((SharedLinkAddExpiryDetails) obj).newValue;
        return date == date2 || date.equals(date2);
    }

    public Date getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue});
    }

    public String toString() {
        return C4100a.f20376b.serialize((C4100a) this, false);
    }

    public String toStringMultiline() {
        return C4100a.f20376b.serialize((C4100a) this, true);
    }
}
