package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PaperAccessType;
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
public class PaperDocChangeMemberRoleDetails {
    protected final PaperAccessType accessType;
    protected final String eventUuid;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDocChangeMemberRoleDetails$a */
    /* loaded from: classes4.dex */
    public static class C3874a extends StructSerializer<PaperDocChangeMemberRoleDetails> {

        /* renamed from: b */
        public static final C3874a f20147b = new C3874a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocChangeMemberRoleDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            PaperAccessType paperAccessType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("access_type".equals(currentName)) {
                    paperAccessType = PaperAccessType.C3835b.f20108b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            if (paperAccessType == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetails = new PaperDocChangeMemberRoleDetails(str2, paperAccessType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocChangeMemberRoleDetails, paperDocChangeMemberRoleDetails.toStringMultiline());
            return paperDocChangeMemberRoleDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocChangeMemberRoleDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("access_type");
            PaperAccessType.C3835b.f20108b.serialize(paperDocChangeMemberRoleDetails.accessType, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocChangeMemberRoleDetails(String str, PaperAccessType paperAccessType) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        if (paperAccessType == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = paperAccessType;
    }

    public boolean equals(Object obj) {
        PaperAccessType paperAccessType;
        PaperAccessType paperAccessType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetails = (PaperDocChangeMemberRoleDetails) obj;
        String str = this.eventUuid;
        String str2 = paperDocChangeMemberRoleDetails.eventUuid;
        return (str == str2 || str.equals(str2)) && ((paperAccessType = this.accessType) == (paperAccessType2 = paperDocChangeMemberRoleDetails.accessType) || paperAccessType.equals(paperAccessType2));
    }

    public PaperAccessType getAccessType() {
        return this.accessType;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.accessType});
    }

    public String toString() {
        return C3874a.f20147b.serialize((C3874a) this, false);
    }

    public String toStringMultiline() {
        return C3874a.f20147b.serialize((C3874a) this, true);
    }
}
