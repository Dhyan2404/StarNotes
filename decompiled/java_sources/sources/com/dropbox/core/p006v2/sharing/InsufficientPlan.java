package com.dropbox.core.p006v2.sharing;

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
public class InsufficientPlan {
    protected final String message;
    protected final String upsellUrl;

    /* renamed from: com.dropbox.core.v2.sharing.InsufficientPlan$a */
    /* loaded from: classes4.dex */
    public static class C2845a extends StructSerializer<InsufficientPlan> {

        /* renamed from: b */
        public static final C2845a f17765b = new C2845a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public InsufficientPlan deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("message".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("upsell_url".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"message\" missing.");
            }
            InsufficientPlan insufficientPlan = new InsufficientPlan(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(insufficientPlan, insufficientPlan.toStringMultiline());
            return insufficientPlan;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(InsufficientPlan insufficientPlan, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("message");
            StoneSerializers.string().serialize((StoneSerializer<String>) insufficientPlan.message, jsonGenerator);
            if (insufficientPlan.upsellUrl != null) {
                jsonGenerator.writeFieldName("upsell_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) insufficientPlan.upsellUrl, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public InsufficientPlan(String str, String str2) {
        if (str != null) {
            this.message = str;
            this.upsellUrl = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'message' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        InsufficientPlan insufficientPlan = (InsufficientPlan) obj;
        String str = this.message;
        String str2 = insufficientPlan.message;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.upsellUrl;
            String str4 = insufficientPlan.upsellUrl;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getMessage() {
        return this.message;
    }

    public String getUpsellUrl() {
        return this.upsellUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.message, this.upsellUrl});
    }

    public String toString() {
        return C2845a.f17765b.serialize((C2845a) this, false);
    }

    public String toStringMultiline() {
        return C2845a.f17765b.serialize((C2845a) this, true);
    }

    public InsufficientPlan(String str) {
        this(str, null);
    }
}
