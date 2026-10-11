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
public class RelocateAssetReferencesLogInfo {
    protected final long destAssetIndex;
    protected final long srcAssetIndex;

    /* renamed from: com.dropbox.core.v2.teamlog.RelocateAssetReferencesLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3969a extends StructSerializer<RelocateAssetReferencesLogInfo> {

        /* renamed from: b */
        public static final C3969a f20245b = new C3969a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocateAssetReferencesLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("src_asset_index".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("dest_asset_index".equals(currentName)) {
                    l2 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"src_asset_index\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"dest_asset_index\" missing.");
            }
            RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo = new RelocateAssetReferencesLogInfo(l.longValue(), l2.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(relocateAssetReferencesLogInfo, relocateAssetReferencesLogInfo.toStringMultiline());
            return relocateAssetReferencesLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("src_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(relocateAssetReferencesLogInfo.srcAssetIndex), jsonGenerator);
            jsonGenerator.writeFieldName("dest_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(relocateAssetReferencesLogInfo.destAssetIndex), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RelocateAssetReferencesLogInfo(long j, long j2) {
        this.srcAssetIndex = j;
        this.destAssetIndex = j2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo = (RelocateAssetReferencesLogInfo) obj;
        return this.srcAssetIndex == relocateAssetReferencesLogInfo.srcAssetIndex && this.destAssetIndex == relocateAssetReferencesLogInfo.destAssetIndex;
    }

    public long getDestAssetIndex() {
        return this.destAssetIndex;
    }

    public long getSrcAssetIndex() {
        return this.srcAssetIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.srcAssetIndex), Long.valueOf(this.destAssetIndex)});
    }

    public String toString() {
        return C3969a.f20245b.serialize((C3969a) this, false);
    }

    public String toStringMultiline() {
        return C3969a.f20245b.serialize((C3969a) this, true);
    }
}
