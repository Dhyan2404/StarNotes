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
public class PaperContentAddToFolderDetails {
    protected final String eventUuid;
    protected final long parentAssetIndex;
    protected final long targetAssetIndex;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperContentAddToFolderDetails$a */
    /* loaded from: classes4.dex */
    public static class C3848a extends StructSerializer<PaperContentAddToFolderDetails> {

        /* renamed from: b */
        public static final C3848a f20121b = new C3848a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperContentAddToFolderDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l2 = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("target_asset_index".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("parent_asset_index".equals(currentName)) {
                    l2 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"target_asset_index\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"parent_asset_index\" missing.");
            }
            PaperContentAddToFolderDetails paperContentAddToFolderDetails = new PaperContentAddToFolderDetails(str2, l.longValue(), l2.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperContentAddToFolderDetails, paperContentAddToFolderDetails.toStringMultiline());
            return paperContentAddToFolderDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperContentAddToFolderDetails paperContentAddToFolderDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperContentAddToFolderDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("target_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(paperContentAddToFolderDetails.targetAssetIndex), jsonGenerator);
            jsonGenerator.writeFieldName("parent_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(paperContentAddToFolderDetails.parentAssetIndex), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperContentAddToFolderDetails(String str, long j, long j2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        this.targetAssetIndex = j;
        this.parentAssetIndex = j2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperContentAddToFolderDetails paperContentAddToFolderDetails = (PaperContentAddToFolderDetails) obj;
        String str = this.eventUuid;
        String str2 = paperContentAddToFolderDetails.eventUuid;
        return (str == str2 || str.equals(str2)) && this.targetAssetIndex == paperContentAddToFolderDetails.targetAssetIndex && this.parentAssetIndex == paperContentAddToFolderDetails.parentAssetIndex;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public long getParentAssetIndex() {
        return this.parentAssetIndex;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, Long.valueOf(this.targetAssetIndex), Long.valueOf(this.parentAssetIndex)});
    }

    public String toString() {
        return C3848a.f20121b.serialize((C3848a) this, false);
    }

    public String toStringMultiline() {
        return C3848a.f20121b.serialize((C3848a) this, true);
    }
}
