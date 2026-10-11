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
public class PaperDocOwnershipChangedDetails {
    protected final String eventUuid;
    protected final String newOwnerUserId;
    protected final String oldOwnerUserId;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDocOwnershipChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3894a extends StructSerializer<PaperDocOwnershipChangedDetails> {

        /* renamed from: b */
        public static final C3894a f20167b = new C3894a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocOwnershipChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("new_owner_user_id".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("old_owner_user_id".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_owner_user_id\" missing.");
            }
            PaperDocOwnershipChangedDetails paperDocOwnershipChangedDetails = new PaperDocOwnershipChangedDetails(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocOwnershipChangedDetails, paperDocOwnershipChangedDetails.toStringMultiline());
            return paperDocOwnershipChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocOwnershipChangedDetails paperDocOwnershipChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocOwnershipChangedDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("new_owner_user_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocOwnershipChangedDetails.newOwnerUserId, jsonGenerator);
            if (paperDocOwnershipChangedDetails.oldOwnerUserId != null) {
                jsonGenerator.writeFieldName("old_owner_user_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) paperDocOwnershipChangedDetails.oldOwnerUserId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocOwnershipChangedDetails(String str, String str2, String str3) {
        if (str != null) {
            this.eventUuid = str;
            if (str3 != null) {
                if (str3.length() >= 40) {
                    if (str3.length() > 40) {
                        throw new IllegalArgumentException("String 'oldOwnerUserId' is longer than 40");
                    }
                } else {
                    throw new IllegalArgumentException("String 'oldOwnerUserId' is shorter than 40");
                }
            }
            this.oldOwnerUserId = str3;
            if (str2 != null) {
                if (str2.length() >= 40) {
                    if (str2.length() <= 40) {
                        this.newOwnerUserId = str2;
                        return;
                    }
                    throw new IllegalArgumentException("String 'newOwnerUserId' is longer than 40");
                }
                throw new IllegalArgumentException("String 'newOwnerUserId' is shorter than 40");
            }
            throw new IllegalArgumentException("Required value for 'newOwnerUserId' is null");
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
        PaperDocOwnershipChangedDetails paperDocOwnershipChangedDetails = (PaperDocOwnershipChangedDetails) obj;
        String str3 = this.eventUuid;
        String str4 = paperDocOwnershipChangedDetails.eventUuid;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.newOwnerUserId) == (str2 = paperDocOwnershipChangedDetails.newOwnerUserId) || str.equals(str2))) {
            String str5 = this.oldOwnerUserId;
            String str6 = paperDocOwnershipChangedDetails.oldOwnerUserId;
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

    public String getNewOwnerUserId() {
        return this.newOwnerUserId;
    }

    public String getOldOwnerUserId() {
        return this.oldOwnerUserId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.oldOwnerUserId, this.newOwnerUserId});
    }

    public String toString() {
        return C3894a.f20167b.serialize((C3894a) this, false);
    }

    public String toStringMultiline() {
        return C3894a.f20167b.serialize((C3894a) this, true);
    }

    public PaperDocOwnershipChangedDetails(String str, String str2) {
        this(str, str2, null);
    }
}
