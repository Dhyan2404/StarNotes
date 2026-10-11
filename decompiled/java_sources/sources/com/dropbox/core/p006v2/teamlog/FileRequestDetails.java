package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FileRequestDeadline;
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
public class FileRequestDetails {
    protected final long assetIndex;
    protected final FileRequestDeadline deadline;

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestDetails$a */
    /* loaded from: classes4.dex */
    public static class C3585a extends StructSerializer<FileRequestDetails> {

        /* renamed from: b */
        public static final C3585a f19844b = new C3585a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequestDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            FileRequestDeadline fileRequestDeadline = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("asset_index".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("deadline".equals(currentName)) {
                    fileRequestDeadline = (FileRequestDeadline) StoneSerializers.nullableStruct(FileRequestDeadline.C3582a.f19841b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"asset_index\" missing.");
            }
            FileRequestDetails fileRequestDetails = new FileRequestDetails(l.longValue(), fileRequestDeadline);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileRequestDetails, fileRequestDetails.toStringMultiline());
            return fileRequestDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequestDetails fileRequestDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(fileRequestDetails.assetIndex), jsonGenerator);
            if (fileRequestDetails.deadline != null) {
                jsonGenerator.writeFieldName("deadline");
                StoneSerializers.nullableStruct(FileRequestDeadline.C3582a.f19841b).serialize((StructSerializer) fileRequestDetails.deadline, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequestDetails(long j, FileRequestDeadline fileRequestDeadline) {
        this.assetIndex = j;
        this.deadline = fileRequestDeadline;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileRequestDetails fileRequestDetails = (FileRequestDetails) obj;
        if (this.assetIndex == fileRequestDetails.assetIndex) {
            FileRequestDeadline fileRequestDeadline = this.deadline;
            FileRequestDeadline fileRequestDeadline2 = fileRequestDetails.deadline;
            if (fileRequestDeadline == fileRequestDeadline2) {
                return true;
            }
            if (fileRequestDeadline != null && fileRequestDeadline.equals(fileRequestDeadline2)) {
                return true;
            }
        }
        return false;
    }

    public long getAssetIndex() {
        return this.assetIndex;
    }

    public FileRequestDeadline getDeadline() {
        return this.deadline;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.assetIndex), this.deadline});
    }

    public String toString() {
        return C3585a.f19844b.serialize((C3585a) this, false);
    }

    public String toStringMultiline() {
        return C3585a.f19844b.serialize((C3585a) this, true);
    }

    public FileRequestDetails(long j) {
        this(j, null);
    }
}
