package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FileRequestDetails;
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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class FileRequestChangeDetails {
    protected final String fileRequestId;
    protected final FileRequestDetails newDetails;
    protected final FileRequestDetails previousDetails;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String fileRequestId;
        protected final FileRequestDetails newDetails;
        protected FileRequestDetails previousDetails;

        public Builder(FileRequestDetails fileRequestDetails) {
            if (fileRequestDetails == null) {
                throw new IllegalArgumentException("Required value for 'newDetails' is null");
            }
            this.newDetails = fileRequestDetails;
            this.fileRequestId = null;
            this.previousDetails = null;
        }

        public FileRequestChangeDetails build() {
            return new FileRequestChangeDetails(this.newDetails, this.fileRequestId, this.previousDetails);
        }

        public Builder withFileRequestId(String str) {
            if (str != null) {
                if (str.length() < 1) {
                    throw new IllegalArgumentException("String 'fileRequestId' is shorter than 1");
                }
                if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
                    throw new IllegalArgumentException("String 'fileRequestId' does not match pattern");
                }
            }
            this.fileRequestId = str;
            return this;
        }

        public Builder withPreviousDetails(FileRequestDetails fileRequestDetails) {
            this.previousDetails = fileRequestDetails;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestChangeDetails$a */
    /* loaded from: classes4.dex */
    public static class C3576a extends StructSerializer<FileRequestChangeDetails> {

        /* renamed from: b */
        public static final C3576a f19835b = new C3576a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequestChangeDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileRequestDetails fileRequestDetails = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            FileRequestDetails fileRequestDetails2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_details".equals(currentName)) {
                    fileRequestDetails = FileRequestDetails.C3585a.f19844b.deserialize(jsonParser);
                } else if ("file_request_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("previous_details".equals(currentName)) {
                    fileRequestDetails2 = (FileRequestDetails) StoneSerializers.nullableStruct(FileRequestDetails.C3585a.f19844b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileRequestDetails == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_details\" missing.");
            }
            FileRequestChangeDetails fileRequestChangeDetails = new FileRequestChangeDetails(fileRequestDetails, str2, fileRequestDetails2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileRequestChangeDetails, fileRequestChangeDetails.toStringMultiline());
            return fileRequestChangeDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequestChangeDetails fileRequestChangeDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_details");
            FileRequestDetails.C3585a c3585a = FileRequestDetails.C3585a.f19844b;
            c3585a.serialize((FileRequestDetails.C3585a) fileRequestChangeDetails.newDetails, jsonGenerator);
            if (fileRequestChangeDetails.fileRequestId != null) {
                jsonGenerator.writeFieldName("file_request_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileRequestChangeDetails.fileRequestId, jsonGenerator);
            }
            if (fileRequestChangeDetails.previousDetails != null) {
                jsonGenerator.writeFieldName("previous_details");
                StoneSerializers.nullableStruct(c3585a).serialize((StructSerializer) fileRequestChangeDetails.previousDetails, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequestChangeDetails(FileRequestDetails fileRequestDetails, String str, FileRequestDetails fileRequestDetails2) {
        if (str != null) {
            if (str.length() >= 1) {
                if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
                    throw new IllegalArgumentException("String 'fileRequestId' does not match pattern");
                }
            } else {
                throw new IllegalArgumentException("String 'fileRequestId' is shorter than 1");
            }
        }
        this.fileRequestId = str;
        this.previousDetails = fileRequestDetails2;
        if (fileRequestDetails != null) {
            this.newDetails = fileRequestDetails;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newDetails' is null");
    }

    public static Builder newBuilder(FileRequestDetails fileRequestDetails) {
        return new Builder(fileRequestDetails);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileRequestChangeDetails fileRequestChangeDetails = (FileRequestChangeDetails) obj;
        FileRequestDetails fileRequestDetails = this.newDetails;
        FileRequestDetails fileRequestDetails2 = fileRequestChangeDetails.newDetails;
        if ((fileRequestDetails == fileRequestDetails2 || fileRequestDetails.equals(fileRequestDetails2)) && ((str = this.fileRequestId) == (str2 = fileRequestChangeDetails.fileRequestId) || (str != null && str.equals(str2)))) {
            FileRequestDetails fileRequestDetails3 = this.previousDetails;
            FileRequestDetails fileRequestDetails4 = fileRequestChangeDetails.previousDetails;
            if (fileRequestDetails3 == fileRequestDetails4) {
                return true;
            }
            if (fileRequestDetails3 != null && fileRequestDetails3.equals(fileRequestDetails4)) {
                return true;
            }
        }
        return false;
    }

    public String getFileRequestId() {
        return this.fileRequestId;
    }

    public FileRequestDetails getNewDetails() {
        return this.newDetails;
    }

    public FileRequestDetails getPreviousDetails() {
        return this.previousDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileRequestId, this.previousDetails, this.newDetails});
    }

    public String toString() {
        return C3576a.f19835b.serialize((C3576a) this, false);
    }

    public String toStringMultiline() {
        return C3576a.f19835b.serialize((C3576a) this, true);
    }

    public FileRequestChangeDetails(FileRequestDetails fileRequestDetails) {
        this(fileRequestDetails, null, null);
    }
}
