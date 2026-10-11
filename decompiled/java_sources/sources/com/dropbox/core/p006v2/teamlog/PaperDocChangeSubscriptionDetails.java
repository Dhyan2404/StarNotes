package com.dropbox.core.p006v2.teamlog;

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
public class PaperDocChangeSubscriptionDetails {
    protected final String eventUuid;
    protected final String newSubscriptionLevel;
    protected final String previousSubscriptionLevel;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDocChangeSubscriptionDetails$a */
    /* loaded from: classes4.dex */
    public static class C3878a extends StructSerializer<PaperDocChangeSubscriptionDetails> {

        /* renamed from: b */
        public static final C3878a f20151b = new C3878a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocChangeSubscriptionDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("new_subscription_level".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_subscription_level".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_subscription_level\" missing.");
            }
            PaperDocChangeSubscriptionDetails paperDocChangeSubscriptionDetails = new PaperDocChangeSubscriptionDetails(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocChangeSubscriptionDetails, paperDocChangeSubscriptionDetails.toStringMultiline());
            return paperDocChangeSubscriptionDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocChangeSubscriptionDetails paperDocChangeSubscriptionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocChangeSubscriptionDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("new_subscription_level");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocChangeSubscriptionDetails.newSubscriptionLevel, jsonGenerator);
            if (paperDocChangeSubscriptionDetails.previousSubscriptionLevel != null) {
                jsonGenerator.writeFieldName("previous_subscription_level");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) paperDocChangeSubscriptionDetails.previousSubscriptionLevel, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocChangeSubscriptionDetails(String str, String str2, String str3) {
        if (str != null) {
            this.eventUuid = str;
            if (str2 != null) {
                this.newSubscriptionLevel = str2;
                this.previousSubscriptionLevel = str3;
                return;
            }
            throw new IllegalArgumentException("Required value for 'newSubscriptionLevel' is null");
        }
        throw new IllegalArgumentException("Required value for 'eventUuid' is null");
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
        PaperDocChangeSubscriptionDetails paperDocChangeSubscriptionDetails = (PaperDocChangeSubscriptionDetails) obj;
        String str3 = this.eventUuid;
        String str4 = paperDocChangeSubscriptionDetails.eventUuid;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.newSubscriptionLevel) == (str2 = paperDocChangeSubscriptionDetails.newSubscriptionLevel) || str.equals(str2))) {
            String str5 = this.previousSubscriptionLevel;
            String str6 = paperDocChangeSubscriptionDetails.previousSubscriptionLevel;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public String getNewSubscriptionLevel() {
        return this.newSubscriptionLevel;
    }

    public String getPreviousSubscriptionLevel() {
        return this.previousSubscriptionLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.newSubscriptionLevel, this.previousSubscriptionLevel});
    }

    public String toString() {
        return C3878a.f20151b.serialize((C3878a) this, false);
    }

    public String toStringMultiline() {
        return C3878a.f20151b.serialize((C3878a) this, true);
    }

    public PaperDocChangeSubscriptionDetails(String str, String str2) {
        this(str, str2, null);
    }
}
