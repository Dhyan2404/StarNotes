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
public class FolderOverviewDescriptionChangedDetails {
    protected final long folderOverviewLocationAsset;

    /* renamed from: com.dropbox.core.v2.teamlog.FolderOverviewDescriptionChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3625a extends StructSerializer<FolderOverviewDescriptionChangedDetails> {

        /* renamed from: b */
        public static final C3625a f19884b = new C3625a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FolderOverviewDescriptionChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("folder_overview_location_asset".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"folder_overview_location_asset\" missing.");
            }
            FolderOverviewDescriptionChangedDetails folderOverviewDescriptionChangedDetails = new FolderOverviewDescriptionChangedDetails(l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(folderOverviewDescriptionChangedDetails, folderOverviewDescriptionChangedDetails.toStringMultiline());
            return folderOverviewDescriptionChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderOverviewDescriptionChangedDetails folderOverviewDescriptionChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("folder_overview_location_asset");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(folderOverviewDescriptionChangedDetails.folderOverviewLocationAsset), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FolderOverviewDescriptionChangedDetails(long j) {
        this.folderOverviewLocationAsset = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.folderOverviewLocationAsset == ((FolderOverviewDescriptionChangedDetails) obj).folderOverviewLocationAsset;
    }

    public long getFolderOverviewLocationAsset() {
        return this.folderOverviewLocationAsset;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.folderOverviewLocationAsset)});
    }

    public String toString() {
        return C3625a.f19884b.serialize((C3625a) this, false);
    }

    public String toStringMultiline() {
        return C3625a.f19884b.serialize((C3625a) this, true);
    }
}
