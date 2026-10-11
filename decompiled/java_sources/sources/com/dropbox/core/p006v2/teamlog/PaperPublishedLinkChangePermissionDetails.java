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
public class PaperPublishedLinkChangePermissionDetails {
    protected final String eventUuid;
    protected final String newPermissionLevel;
    protected final String previousPermissionLevel;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperPublishedLinkChangePermissionDetails$a */
    /* loaded from: classes4.dex */
    public static class C3938a extends StructSerializer<PaperPublishedLinkChangePermissionDetails> {

        /* renamed from: b */
        public static final C3938a f20211b = new C3938a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperPublishedLinkChangePermissionDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("new_permission_level".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_permission_level".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_permission_level\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_permission_level\" missing.");
            }
            PaperPublishedLinkChangePermissionDetails paperPublishedLinkChangePermissionDetails = new PaperPublishedLinkChangePermissionDetails(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperPublishedLinkChangePermissionDetails, paperPublishedLinkChangePermissionDetails.toStringMultiline());
            return paperPublishedLinkChangePermissionDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperPublishedLinkChangePermissionDetails paperPublishedLinkChangePermissionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperPublishedLinkChangePermissionDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("new_permission_level");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperPublishedLinkChangePermissionDetails.newPermissionLevel, jsonGenerator);
            jsonGenerator.writeFieldName("previous_permission_level");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperPublishedLinkChangePermissionDetails.previousPermissionLevel, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperPublishedLinkChangePermissionDetails(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'newPermissionLevel' is null");
        }
        this.newPermissionLevel = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'previousPermissionLevel' is null");
        }
        this.previousPermissionLevel = str3;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperPublishedLinkChangePermissionDetails paperPublishedLinkChangePermissionDetails = (PaperPublishedLinkChangePermissionDetails) obj;
        String str5 = this.eventUuid;
        String str6 = paperPublishedLinkChangePermissionDetails.eventUuid;
        return (str5 == str6 || str5.equals(str6)) && ((str = this.newPermissionLevel) == (str2 = paperPublishedLinkChangePermissionDetails.newPermissionLevel) || str.equals(str2)) && ((str3 = this.previousPermissionLevel) == (str4 = paperPublishedLinkChangePermissionDetails.previousPermissionLevel) || str3.equals(str4));
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public String getNewPermissionLevel() {
        return this.newPermissionLevel;
    }

    public String getPreviousPermissionLevel() {
        return this.previousPermissionLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.newPermissionLevel, this.previousPermissionLevel});
    }

    public String toString() {
        return C3938a.f20211b.serialize((C3938a) this, false);
    }

    public String toStringMultiline() {
        return C3938a.f20211b.serialize((C3938a) this, true);
    }
}
