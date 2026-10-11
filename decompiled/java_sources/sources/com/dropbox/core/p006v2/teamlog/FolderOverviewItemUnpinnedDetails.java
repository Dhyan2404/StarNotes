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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class FolderOverviewItemUnpinnedDetails {
    protected final long folderOverviewLocationAsset;
    protected final List<Long> pinnedItemsAssetIndices;

    /* renamed from: com.dropbox.core.v2.teamlog.FolderOverviewItemUnpinnedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3629a extends StructSerializer<FolderOverviewItemUnpinnedDetails> {

        /* renamed from: b */
        public static final C3629a f19888b = new C3629a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FolderOverviewItemUnpinnedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("folder_overview_location_asset".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("pinned_items_asset_indices".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.uInt64()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"folder_overview_location_asset\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"pinned_items_asset_indices\" missing.");
            }
            FolderOverviewItemUnpinnedDetails folderOverviewItemUnpinnedDetails = new FolderOverviewItemUnpinnedDetails(l.longValue(), list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(folderOverviewItemUnpinnedDetails, folderOverviewItemUnpinnedDetails.toStringMultiline());
            return folderOverviewItemUnpinnedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderOverviewItemUnpinnedDetails folderOverviewItemUnpinnedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("folder_overview_location_asset");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(folderOverviewItemUnpinnedDetails.folderOverviewLocationAsset), jsonGenerator);
            jsonGenerator.writeFieldName("pinned_items_asset_indices");
            StoneSerializers.list(StoneSerializers.uInt64()).serialize((StoneSerializer) folderOverviewItemUnpinnedDetails.pinnedItemsAssetIndices, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FolderOverviewItemUnpinnedDetails(long j, List<Long> list) {
        this.folderOverviewLocationAsset = j;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'pinnedItemsAssetIndices' is null");
        }
        Iterator<Long> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'pinnedItemsAssetIndices' is null");
            }
        }
        this.pinnedItemsAssetIndices = list;
    }

    public boolean equals(Object obj) {
        List<Long> list;
        List<Long> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FolderOverviewItemUnpinnedDetails folderOverviewItemUnpinnedDetails = (FolderOverviewItemUnpinnedDetails) obj;
        return this.folderOverviewLocationAsset == folderOverviewItemUnpinnedDetails.folderOverviewLocationAsset && ((list = this.pinnedItemsAssetIndices) == (list2 = folderOverviewItemUnpinnedDetails.pinnedItemsAssetIndices) || list.equals(list2));
    }

    public long getFolderOverviewLocationAsset() {
        return this.folderOverviewLocationAsset;
    }

    public List<Long> getPinnedItemsAssetIndices() {
        return this.pinnedItemsAssetIndices;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.folderOverviewLocationAsset), this.pinnedItemsAssetIndices});
    }

    public String toString() {
        return C3629a.f19888b.serialize((C3629a) this, false);
    }

    public String toStringMultiline() {
        return C3629a.f19888b.serialize((C3629a) this, true);
    }
}
