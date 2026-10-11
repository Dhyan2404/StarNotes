package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FileTransfersPolicy;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class FileTransfersPolicyChangedDetails {
    protected final FileTransfersPolicy newValue;
    protected final FileTransfersPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.FileTransfersPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3610a extends StructSerializer<FileTransfersPolicyChangedDetails> {

        /* renamed from: b */
        public static final C3610a f19869b = new C3610a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileTransfersPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileTransfersPolicy fileTransfersPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FileTransfersPolicy fileTransfersPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    fileTransfersPolicy = FileTransfersPolicy.C3609b.f19868b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    fileTransfersPolicy2 = FileTransfersPolicy.C3609b.f19868b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileTransfersPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (fileTransfersPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            FileTransfersPolicyChangedDetails fileTransfersPolicyChangedDetails = new FileTransfersPolicyChangedDetails(fileTransfersPolicy, fileTransfersPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileTransfersPolicyChangedDetails, fileTransfersPolicyChangedDetails.toStringMultiline());
            return fileTransfersPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileTransfersPolicyChangedDetails fileTransfersPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            FileTransfersPolicy.C3609b c3609b = FileTransfersPolicy.C3609b.f19868b;
            c3609b.serialize(fileTransfersPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3609b.serialize(fileTransfersPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileTransfersPolicyChangedDetails(FileTransfersPolicy fileTransfersPolicy, FileTransfersPolicy fileTransfersPolicy2) {
        if (fileTransfersPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = fileTransfersPolicy;
        if (fileTransfersPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = fileTransfersPolicy2;
    }

    public boolean equals(Object obj) {
        FileTransfersPolicy fileTransfersPolicy;
        FileTransfersPolicy fileTransfersPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileTransfersPolicyChangedDetails fileTransfersPolicyChangedDetails = (FileTransfersPolicyChangedDetails) obj;
        FileTransfersPolicy fileTransfersPolicy3 = this.newValue;
        FileTransfersPolicy fileTransfersPolicy4 = fileTransfersPolicyChangedDetails.newValue;
        return (fileTransfersPolicy3 == fileTransfersPolicy4 || fileTransfersPolicy3.equals(fileTransfersPolicy4)) && ((fileTransfersPolicy = this.previousValue) == (fileTransfersPolicy2 = fileTransfersPolicyChangedDetails.previousValue) || fileTransfersPolicy.equals(fileTransfersPolicy2));
    }

    public FileTransfersPolicy getNewValue() {
        return this.newValue;
    }

    public FileTransfersPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3610a.f19869b.serialize((C3610a) this, false);
    }

    public String toStringMultiline() {
        return C3610a.f19869b.serialize((C3610a) this, true);
    }
}
