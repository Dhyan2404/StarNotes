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
public class FileTransfersTransferDownloadDetails {
    protected final String fileTransferId;

    /* renamed from: com.dropbox.core.v2.teamlog.FileTransfersTransferDownloadDetails$a */
    /* loaded from: classes4.dex */
    public static class C3614a extends StructSerializer<FileTransfersTransferDownloadDetails> {

        /* renamed from: b */
        public static final C3614a f19873b = new C3614a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileTransfersTransferDownloadDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file_transfer_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file_transfer_id\" missing.");
            }
            FileTransfersTransferDownloadDetails fileTransfersTransferDownloadDetails = new FileTransfersTransferDownloadDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileTransfersTransferDownloadDetails, fileTransfersTransferDownloadDetails.toStringMultiline());
            return fileTransfersTransferDownloadDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileTransfersTransferDownloadDetails fileTransfersTransferDownloadDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_transfer_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileTransfersTransferDownloadDetails.fileTransferId, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileTransfersTransferDownloadDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'fileTransferId' is null");
        }
        this.fileTransferId = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.fileTransferId;
        String str2 = ((FileTransfersTransferDownloadDetails) obj).fileTransferId;
        return str == str2 || str.equals(str2);
    }

    public String getFileTransferId() {
        return this.fileTransferId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileTransferId});
    }

    public String toString() {
        return C3614a.f19873b.serialize((C3614a) this, false);
    }

    public String toStringMultiline() {
        return C3614a.f19873b.serialize((C3614a) this, true);
    }
}
