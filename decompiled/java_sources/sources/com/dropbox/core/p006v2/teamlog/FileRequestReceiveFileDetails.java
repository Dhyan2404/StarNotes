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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class FileRequestReceiveFileDetails {
    protected final FileRequestDetails fileRequestDetails;
    protected final String fileRequestId;
    protected final List<String> submittedFileNames;
    protected final String submitterEmail;
    protected final String submitterName;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected FileRequestDetails fileRequestDetails;
        protected String fileRequestId;
        protected final List<String> submittedFileNames;
        protected String submitterEmail;
        protected String submitterName;

        public Builder(List<String> list) {
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'submittedFileNames' is null");
            }
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'submittedFileNames' is null");
                }
            }
            this.submittedFileNames = list;
            this.fileRequestId = null;
            this.fileRequestDetails = null;
            this.submitterName = null;
            this.submitterEmail = null;
        }

        public FileRequestReceiveFileDetails build() {
            return new FileRequestReceiveFileDetails(this.submittedFileNames, this.fileRequestId, this.fileRequestDetails, this.submitterName, this.submitterEmail);
        }

        public Builder withFileRequestDetails(FileRequestDetails fileRequestDetails) {
            this.fileRequestDetails = fileRequestDetails;
            return this;
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

        public Builder withSubmitterEmail(String str) {
            if (str != null && str.length() > 255) {
                throw new IllegalArgumentException("String 'submitterEmail' is longer than 255");
            }
            this.submitterEmail = str;
            return this;
        }

        public Builder withSubmitterName(String str) {
            this.submitterName = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestReceiveFileDetails$a */
    /* loaded from: classes4.dex */
    public static class C3586a extends StructSerializer<FileRequestReceiveFileDetails> {

        /* renamed from: b */
        public static final C3586a f19845b = new C3586a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequestReceiveFileDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
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
            String str2 = null;
            FileRequestDetails fileRequestDetails = null;
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("submitted_file_names".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("file_request_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("file_request_details".equals(currentName)) {
                    fileRequestDetails = (FileRequestDetails) StoneSerializers.nullableStruct(FileRequestDetails.C3585a.f19844b).deserialize(jsonParser);
                } else if ("submitter_name".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("submitter_email".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"submitted_file_names\" missing.");
            }
            FileRequestReceiveFileDetails fileRequestReceiveFileDetails = new FileRequestReceiveFileDetails(list, str2, fileRequestDetails, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileRequestReceiveFileDetails, fileRequestReceiveFileDetails.toStringMultiline());
            return fileRequestReceiveFileDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequestReceiveFileDetails fileRequestReceiveFileDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("submitted_file_names");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) fileRequestReceiveFileDetails.submittedFileNames, jsonGenerator);
            if (fileRequestReceiveFileDetails.fileRequestId != null) {
                jsonGenerator.writeFieldName("file_request_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileRequestReceiveFileDetails.fileRequestId, jsonGenerator);
            }
            if (fileRequestReceiveFileDetails.fileRequestDetails != null) {
                jsonGenerator.writeFieldName("file_request_details");
                StoneSerializers.nullableStruct(FileRequestDetails.C3585a.f19844b).serialize((StructSerializer) fileRequestReceiveFileDetails.fileRequestDetails, jsonGenerator);
            }
            if (fileRequestReceiveFileDetails.submitterName != null) {
                jsonGenerator.writeFieldName("submitter_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileRequestReceiveFileDetails.submitterName, jsonGenerator);
            }
            if (fileRequestReceiveFileDetails.submitterEmail != null) {
                jsonGenerator.writeFieldName("submitter_email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileRequestReceiveFileDetails.submitterEmail, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequestReceiveFileDetails(List<String> list, String str, FileRequestDetails fileRequestDetails, String str2, String str3) {
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
        this.fileRequestDetails = fileRequestDetails;
        if (list != null) {
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'submittedFileNames' is null");
                }
            }
            this.submittedFileNames = list;
            this.submitterName = str2;
            if (str3 != null && str3.length() > 255) {
                throw new IllegalArgumentException("String 'submitterEmail' is longer than 255");
            }
            this.submitterEmail = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'submittedFileNames' is null");
    }

    public static Builder newBuilder(List<String> list) {
        return new Builder(list);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        FileRequestDetails fileRequestDetails;
        FileRequestDetails fileRequestDetails2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileRequestReceiveFileDetails fileRequestReceiveFileDetails = (FileRequestReceiveFileDetails) obj;
        List<String> list = this.submittedFileNames;
        List<String> list2 = fileRequestReceiveFileDetails.submittedFileNames;
        if ((list == list2 || list.equals(list2)) && (((str = this.fileRequestId) == (str2 = fileRequestReceiveFileDetails.fileRequestId) || (str != null && str.equals(str2))) && (((fileRequestDetails = this.fileRequestDetails) == (fileRequestDetails2 = fileRequestReceiveFileDetails.fileRequestDetails) || (fileRequestDetails != null && fileRequestDetails.equals(fileRequestDetails2))) && ((str3 = this.submitterName) == (str4 = fileRequestReceiveFileDetails.submitterName) || (str3 != null && str3.equals(str4)))))) {
            String str5 = this.submitterEmail;
            String str6 = fileRequestReceiveFileDetails.submitterEmail;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public FileRequestDetails getFileRequestDetails() {
        return this.fileRequestDetails;
    }

    public String getFileRequestId() {
        return this.fileRequestId;
    }

    public List<String> getSubmittedFileNames() {
        return this.submittedFileNames;
    }

    public String getSubmitterEmail() {
        return this.submitterEmail;
    }

    public String getSubmitterName() {
        return this.submitterName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileRequestId, this.fileRequestDetails, this.submittedFileNames, this.submitterName, this.submitterEmail});
    }

    public String toString() {
        return C3586a.f19845b.serialize((C3586a) this, false);
    }

    public String toStringMultiline() {
        return C3586a.f19845b.serialize((C3586a) this, true);
    }

    public FileRequestReceiveFileDetails(List<String> list) {
        this(list, null, null, null, null);
    }
}
