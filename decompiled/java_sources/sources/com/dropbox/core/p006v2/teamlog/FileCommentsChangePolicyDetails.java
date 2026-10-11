package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FileCommentsPolicy;
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
public class FileCommentsChangePolicyDetails {
    protected final FileCommentsPolicy newValue;
    protected final FileCommentsPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.FileCommentsChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3542a extends StructSerializer<FileCommentsChangePolicyDetails> {

        /* renamed from: b */
        public static final C3542a f19801b = new C3542a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileCommentsChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileCommentsPolicy fileCommentsPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FileCommentsPolicy fileCommentsPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    fileCommentsPolicy = FileCommentsPolicy.C3545b.f19804b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    fileCommentsPolicy2 = (FileCommentsPolicy) StoneSerializers.nullable(FileCommentsPolicy.C3545b.f19804b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileCommentsPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            FileCommentsChangePolicyDetails fileCommentsChangePolicyDetails = new FileCommentsChangePolicyDetails(fileCommentsPolicy, fileCommentsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileCommentsChangePolicyDetails, fileCommentsChangePolicyDetails.toStringMultiline());
            return fileCommentsChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileCommentsChangePolicyDetails fileCommentsChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            FileCommentsPolicy.C3545b c3545b = FileCommentsPolicy.C3545b.f19804b;
            c3545b.serialize(fileCommentsChangePolicyDetails.newValue, jsonGenerator);
            if (fileCommentsChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3545b).serialize((StoneSerializer) fileCommentsChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileCommentsChangePolicyDetails(FileCommentsPolicy fileCommentsPolicy, FileCommentsPolicy fileCommentsPolicy2) {
        if (fileCommentsPolicy != null) {
            this.newValue = fileCommentsPolicy;
            this.previousValue = fileCommentsPolicy2;
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
        FileCommentsChangePolicyDetails fileCommentsChangePolicyDetails = (FileCommentsChangePolicyDetails) obj;
        FileCommentsPolicy fileCommentsPolicy = this.newValue;
        FileCommentsPolicy fileCommentsPolicy2 = fileCommentsChangePolicyDetails.newValue;
        if (fileCommentsPolicy == fileCommentsPolicy2 || fileCommentsPolicy.equals(fileCommentsPolicy2)) {
            FileCommentsPolicy fileCommentsPolicy3 = this.previousValue;
            FileCommentsPolicy fileCommentsPolicy4 = fileCommentsChangePolicyDetails.previousValue;
            if (fileCommentsPolicy3 == fileCommentsPolicy4) {
                return true;
            }
            if (fileCommentsPolicy3 != null && fileCommentsPolicy3.equals(fileCommentsPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public FileCommentsPolicy getNewValue() {
        return this.newValue;
    }

    public FileCommentsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3542a.f19801b.serialize((C3542a) this, false);
    }

    public String toStringMultiline() {
        return C3542a.f19801b.serialize((C3542a) this, true);
    }

    public FileCommentsChangePolicyDetails(FileCommentsPolicy fileCommentsPolicy) {
        this(fileCommentsPolicy, null);
    }
}
