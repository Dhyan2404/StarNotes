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
public class FileRequestDeleteDetails {
    protected final String fileRequestId;
    protected final FileRequestDetails previousDetails;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String fileRequestId = null;
        protected FileRequestDetails previousDetails = null;

        public FileRequestDeleteDetails build() {
            return new FileRequestDeleteDetails(this.fileRequestId, this.previousDetails);
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

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestDeleteDetails$a */
    /* loaded from: classes4.dex */
    public static class C3583a extends StructSerializer<FileRequestDeleteDetails> {

        /* renamed from: b */
        public static final C3583a f19842b = new C3583a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequestDeleteDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            FileRequestDetails fileRequestDetails = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file_request_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("previous_details".equals(currentName)) {
                    fileRequestDetails = (FileRequestDetails) StoneSerializers.nullableStruct(FileRequestDetails.C3585a.f19844b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            FileRequestDeleteDetails fileRequestDeleteDetails = new FileRequestDeleteDetails(str2, fileRequestDetails);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileRequestDeleteDetails, fileRequestDeleteDetails.toStringMultiline());
            return fileRequestDeleteDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequestDeleteDetails fileRequestDeleteDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (fileRequestDeleteDetails.fileRequestId != null) {
                jsonGenerator.writeFieldName("file_request_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileRequestDeleteDetails.fileRequestId, jsonGenerator);
            }
            if (fileRequestDeleteDetails.previousDetails != null) {
                jsonGenerator.writeFieldName("previous_details");
                StoneSerializers.nullableStruct(FileRequestDetails.C3585a.f19844b).serialize((StructSerializer) fileRequestDeleteDetails.previousDetails, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequestDeleteDetails(String str, FileRequestDetails fileRequestDetails) {
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
        this.previousDetails = fileRequestDetails;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileRequestDeleteDetails fileRequestDeleteDetails = (FileRequestDeleteDetails) obj;
        String str = this.fileRequestId;
        String str2 = fileRequestDeleteDetails.fileRequestId;
        if (str == str2 || (str != null && str.equals(str2))) {
            FileRequestDetails fileRequestDetails = this.previousDetails;
            FileRequestDetails fileRequestDetails2 = fileRequestDeleteDetails.previousDetails;
            if (fileRequestDetails == fileRequestDetails2) {
                return true;
            }
            if (fileRequestDetails != null && fileRequestDetails.equals(fileRequestDetails2)) {
                return true;
            }
        }
        return false;
    }

    public String getFileRequestId() {
        return this.fileRequestId;
    }

    public FileRequestDetails getPreviousDetails() {
        return this.previousDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileRequestId, this.previousDetails});
    }

    public String toString() {
        return C3583a.f19842b.serialize((C3583a) this, false);
    }

    public String toStringMultiline() {
        return C3583a.f19842b.serialize((C3583a) this, true);
    }

    public FileRequestDeleteDetails() {
        this(null, null);
    }
}
