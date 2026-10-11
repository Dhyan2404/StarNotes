package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.RelocateAssetReferencesLogInfo;
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
public class FileCopyDetails {
    protected final List<RelocateAssetReferencesLogInfo> relocateActionDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.FileCopyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3546a extends StructSerializer<FileCopyDetails> {

        /* renamed from: b */
        public static final C3546a f19805b = new C3546a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileCopyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
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
                if ("relocate_action_details".equals(currentName)) {
                    list = (List) StoneSerializers.list(RelocateAssetReferencesLogInfo.C3969a.f20245b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"relocate_action_details\" missing.");
            }
            FileCopyDetails fileCopyDetails = new FileCopyDetails(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileCopyDetails, fileCopyDetails.toStringMultiline());
            return fileCopyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileCopyDetails fileCopyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("relocate_action_details");
            StoneSerializers.list(RelocateAssetReferencesLogInfo.C3969a.f20245b).serialize((StoneSerializer) fileCopyDetails.relocateActionDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileCopyDetails(List<RelocateAssetReferencesLogInfo> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'relocateActionDetails' is null");
        }
        Iterator<RelocateAssetReferencesLogInfo> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'relocateActionDetails' is null");
            }
        }
        this.relocateActionDetails = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<RelocateAssetReferencesLogInfo> list = this.relocateActionDetails;
        List<RelocateAssetReferencesLogInfo> list2 = ((FileCopyDetails) obj).relocateActionDetails;
        return list == list2 || list.equals(list2);
    }

    public List<RelocateAssetReferencesLogInfo> getRelocateActionDetails() {
        return this.relocateActionDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.relocateActionDetails});
    }

    public String toString() {
        return C3546a.f19805b.serialize((C3546a) this, false);
    }

    public String toStringMultiline() {
        return C3546a.f19805b.serialize((C3546a) this, true);
    }
}
