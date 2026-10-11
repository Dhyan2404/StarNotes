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
public class FileRequestCreateDetails {
    protected final String fileRequestId;
    protected final FileRequestDetails requestDetails;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String fileRequestId = null;
        protected FileRequestDetails requestDetails = null;

        public FileRequestCreateDetails build() {
            return new FileRequestCreateDetails(this.fileRequestId, this.requestDetails);
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

        public Builder withRequestDetails(FileRequestDetails fileRequestDetails) {
            this.requestDetails = fileRequestDetails;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestCreateDetails$a */
    /* loaded from: classes4.dex */
    public static class C3580a extends StructSerializer<FileRequestCreateDetails> {

        /* renamed from: b */
        public static final C3580a f19839b = new C3580a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequestCreateDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("request_details".equals(currentName)) {
                    fileRequestDetails = (FileRequestDetails) StoneSerializers.nullableStruct(FileRequestDetails.C3585a.f19844b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            FileRequestCreateDetails fileRequestCreateDetails = new FileRequestCreateDetails(str2, fileRequestDetails);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileRequestCreateDetails, fileRequestCreateDetails.toStringMultiline());
            return fileRequestCreateDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequestCreateDetails fileRequestCreateDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (fileRequestCreateDetails.fileRequestId != null) {
                jsonGenerator.writeFieldName("file_request_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileRequestCreateDetails.fileRequestId, jsonGenerator);
            }
            if (fileRequestCreateDetails.requestDetails != null) {
                jsonGenerator.writeFieldName("request_details");
                StoneSerializers.nullableStruct(FileRequestDetails.C3585a.f19844b).serialize((StructSerializer) fileRequestCreateDetails.requestDetails, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequestCreateDetails(String str, FileRequestDetails fileRequestDetails) {
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
        this.requestDetails = fileRequestDetails;
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
        FileRequestCreateDetails fileRequestCreateDetails = (FileRequestCreateDetails) obj;
        String str = this.fileRequestId;
        String str2 = fileRequestCreateDetails.fileRequestId;
        if (str == str2 || (str != null && str.equals(str2))) {
            FileRequestDetails fileRequestDetails = this.requestDetails;
            FileRequestDetails fileRequestDetails2 = fileRequestCreateDetails.requestDetails;
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

    public FileRequestDetails getRequestDetails() {
        return this.requestDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileRequestId, this.requestDetails});
    }

    public String toString() {
        return C3580a.f19839b.serialize((C3580a) this, false);
    }

    public String toStringMultiline() {
        return C3580a.f19839b.serialize((C3580a) this, true);
    }

    public FileRequestCreateDetails() {
        this(null, null);
    }
}
