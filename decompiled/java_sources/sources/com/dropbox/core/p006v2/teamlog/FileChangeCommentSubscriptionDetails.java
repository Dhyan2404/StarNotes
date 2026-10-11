package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FileCommentNotificationPolicy;
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
public class FileChangeCommentSubscriptionDetails {
    protected final FileCommentNotificationPolicy newValue;
    protected final FileCommentNotificationPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.FileChangeCommentSubscriptionDetails$a */
    /* loaded from: classes4.dex */
    public static class C3538a extends StructSerializer<FileChangeCommentSubscriptionDetails> {

        /* renamed from: b */
        public static final C3538a f19797b = new C3538a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileChangeCommentSubscriptionDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileCommentNotificationPolicy fileCommentNotificationPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FileCommentNotificationPolicy fileCommentNotificationPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    fileCommentNotificationPolicy = FileCommentNotificationPolicy.C3541b.f19800b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    fileCommentNotificationPolicy2 = (FileCommentNotificationPolicy) StoneSerializers.nullable(FileCommentNotificationPolicy.C3541b.f19800b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileCommentNotificationPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetails = new FileChangeCommentSubscriptionDetails(fileCommentNotificationPolicy, fileCommentNotificationPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileChangeCommentSubscriptionDetails, fileChangeCommentSubscriptionDetails.toStringMultiline());
            return fileChangeCommentSubscriptionDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            FileCommentNotificationPolicy.C3541b c3541b = FileCommentNotificationPolicy.C3541b.f19800b;
            c3541b.serialize(fileChangeCommentSubscriptionDetails.newValue, jsonGenerator);
            if (fileChangeCommentSubscriptionDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3541b).serialize((StoneSerializer) fileChangeCommentSubscriptionDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileChangeCommentSubscriptionDetails(FileCommentNotificationPolicy fileCommentNotificationPolicy, FileCommentNotificationPolicy fileCommentNotificationPolicy2) {
        if (fileCommentNotificationPolicy != null) {
            this.newValue = fileCommentNotificationPolicy;
            this.previousValue = fileCommentNotificationPolicy2;
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
        FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetails = (FileChangeCommentSubscriptionDetails) obj;
        FileCommentNotificationPolicy fileCommentNotificationPolicy = this.newValue;
        FileCommentNotificationPolicy fileCommentNotificationPolicy2 = fileChangeCommentSubscriptionDetails.newValue;
        if (fileCommentNotificationPolicy == fileCommentNotificationPolicy2 || fileCommentNotificationPolicy.equals(fileCommentNotificationPolicy2)) {
            FileCommentNotificationPolicy fileCommentNotificationPolicy3 = this.previousValue;
            FileCommentNotificationPolicy fileCommentNotificationPolicy4 = fileChangeCommentSubscriptionDetails.previousValue;
            if (fileCommentNotificationPolicy3 == fileCommentNotificationPolicy4) {
                return true;
            }
            if (fileCommentNotificationPolicy3 != null && fileCommentNotificationPolicy3.equals(fileCommentNotificationPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public FileCommentNotificationPolicy getNewValue() {
        return this.newValue;
    }

    public FileCommentNotificationPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3538a.f19797b.serialize((C3538a) this, false);
    }

    public String toStringMultiline() {
        return C3538a.f19797b.serialize((C3538a) this, true);
    }

    public FileChangeCommentSubscriptionDetails(FileCommentNotificationPolicy fileCommentNotificationPolicy) {
        this(fileCommentNotificationPolicy, null);
    }
}
