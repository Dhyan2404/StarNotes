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
public class PaperContentRemoveFromFolderDetails {
    protected final String eventUuid;
    protected final Long parentAssetIndex;
    protected final Long targetAssetIndex;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String eventUuid;
        protected Long parentAssetIndex;
        protected Long targetAssetIndex;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'eventUuid' is null");
            }
            this.eventUuid = str;
            this.targetAssetIndex = null;
            this.parentAssetIndex = null;
        }

        public PaperContentRemoveFromFolderDetails build() {
            return new PaperContentRemoveFromFolderDetails(this.eventUuid, this.targetAssetIndex, this.parentAssetIndex);
        }

        public Builder withParentAssetIndex(Long l) {
            this.parentAssetIndex = l;
            return this;
        }

        public Builder withTargetAssetIndex(Long l) {
            this.targetAssetIndex = l;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.PaperContentRemoveFromFolderDetails$a */
    /* loaded from: classes4.dex */
    public static class C3856a extends StructSerializer<PaperContentRemoveFromFolderDetails> {

        /* renamed from: b */
        public static final C3856a f20129b = new C3856a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperContentRemoveFromFolderDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = null;
            Long l2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("target_asset_index".equals(currentName)) {
                    l = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(jsonParser);
                } else if ("parent_asset_index".equals(currentName)) {
                    l2 = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            PaperContentRemoveFromFolderDetails paperContentRemoveFromFolderDetails = new PaperContentRemoveFromFolderDetails(str2, l, l2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperContentRemoveFromFolderDetails, paperContentRemoveFromFolderDetails.toStringMultiline());
            return paperContentRemoveFromFolderDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperContentRemoveFromFolderDetails paperContentRemoveFromFolderDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperContentRemoveFromFolderDetails.eventUuid, jsonGenerator);
            if (paperContentRemoveFromFolderDetails.targetAssetIndex != null) {
                jsonGenerator.writeFieldName("target_asset_index");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) paperContentRemoveFromFolderDetails.targetAssetIndex, jsonGenerator);
            }
            if (paperContentRemoveFromFolderDetails.parentAssetIndex != null) {
                jsonGenerator.writeFieldName("parent_asset_index");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) paperContentRemoveFromFolderDetails.parentAssetIndex, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperContentRemoveFromFolderDetails(String str, Long l, Long l2) {
        if (str != null) {
            this.eventUuid = str;
            this.targetAssetIndex = l;
            this.parentAssetIndex = l2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'eventUuid' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public boolean equals(Object obj) {
        Long l;
        Long l2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperContentRemoveFromFolderDetails paperContentRemoveFromFolderDetails = (PaperContentRemoveFromFolderDetails) obj;
        String str = this.eventUuid;
        String str2 = paperContentRemoveFromFolderDetails.eventUuid;
        if ((str == str2 || str.equals(str2)) && ((l = this.targetAssetIndex) == (l2 = paperContentRemoveFromFolderDetails.targetAssetIndex) || (l != null && l.equals(l2)))) {
            Long l3 = this.parentAssetIndex;
            Long l4 = paperContentRemoveFromFolderDetails.parentAssetIndex;
            if (l3 == l4) {
                return true;
            }
            if (l3 != null && l3.equals(l4)) {
                return true;
            }
        }
        return false;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public Long getParentAssetIndex() {
        return this.parentAssetIndex;
    }

    public Long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.targetAssetIndex, this.parentAssetIndex});
    }

    public String toString() {
        return C3856a.f20129b.serialize((C3856a) this, false);
    }

    public String toStringMultiline() {
        return C3856a.f20129b.serialize((C3856a) this, true);
    }

    public PaperContentRemoveFromFolderDetails(String str) {
        this(str, null, null);
    }
}
