package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FileRequestsPolicy;
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
public class FileRequestsChangePolicyDetails {
    protected final FileRequestsPolicy newValue;
    protected final FileRequestsPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestsChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3588a extends StructSerializer<FileRequestsChangePolicyDetails> {

        /* renamed from: b */
        public static final C3588a f19847b = new C3588a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequestsChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileRequestsPolicy fileRequestsPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FileRequestsPolicy fileRequestsPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    fileRequestsPolicy = FileRequestsPolicy.C3595b.f19854b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    fileRequestsPolicy2 = (FileRequestsPolicy) StoneSerializers.nullable(FileRequestsPolicy.C3595b.f19854b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileRequestsPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            FileRequestsChangePolicyDetails fileRequestsChangePolicyDetails = new FileRequestsChangePolicyDetails(fileRequestsPolicy, fileRequestsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileRequestsChangePolicyDetails, fileRequestsChangePolicyDetails.toStringMultiline());
            return fileRequestsChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequestsChangePolicyDetails fileRequestsChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            FileRequestsPolicy.C3595b c3595b = FileRequestsPolicy.C3595b.f19854b;
            c3595b.serialize(fileRequestsChangePolicyDetails.newValue, jsonGenerator);
            if (fileRequestsChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3595b).serialize((StoneSerializer) fileRequestsChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequestsChangePolicyDetails(FileRequestsPolicy fileRequestsPolicy, FileRequestsPolicy fileRequestsPolicy2) {
        if (fileRequestsPolicy != null) {
            this.newValue = fileRequestsPolicy;
            this.previousValue = fileRequestsPolicy2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileRequestsChangePolicyDetails fileRequestsChangePolicyDetails = (FileRequestsChangePolicyDetails) obj;
        FileRequestsPolicy fileRequestsPolicy = this.newValue;
        FileRequestsPolicy fileRequestsPolicy2 = fileRequestsChangePolicyDetails.newValue;
        if (fileRequestsPolicy == fileRequestsPolicy2 || fileRequestsPolicy.equals(fileRequestsPolicy2)) {
            FileRequestsPolicy fileRequestsPolicy3 = this.previousValue;
            FileRequestsPolicy fileRequestsPolicy4 = fileRequestsChangePolicyDetails.previousValue;
            if (fileRequestsPolicy3 == fileRequestsPolicy4) {
                return true;
            }
            if (fileRequestsPolicy3 != null && fileRequestsPolicy3.equals(fileRequestsPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public FileRequestsPolicy getNewValue() {
        return this.newValue;
    }

    public FileRequestsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3588a.f19847b.serialize((C3588a) this, false);
    }

    public String toStringMultiline() {
        return C3588a.f19847b.serialize((C3588a) this, true);
    }

    public FileRequestsChangePolicyDetails(FileRequestsPolicy fileRequestsPolicy) {
        this(fileRequestsPolicy, null);
    }
}
