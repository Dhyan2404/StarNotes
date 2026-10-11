package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.FileLockingPolicyState;
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
public class FileLockingPolicyChangedDetails {
    protected final FileLockingPolicyState newValue;
    protected final FileLockingPolicyState previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.FileLockingPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3564a extends StructSerializer<FileLockingPolicyChangedDetails> {

        /* renamed from: b */
        public static final C3564a f19823b = new C3564a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileLockingPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileLockingPolicyState fileLockingPolicyState = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FileLockingPolicyState fileLockingPolicyState2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    fileLockingPolicyState = FileLockingPolicyState.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    fileLockingPolicyState2 = FileLockingPolicyState.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileLockingPolicyState == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (fileLockingPolicyState2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            FileLockingPolicyChangedDetails fileLockingPolicyChangedDetails = new FileLockingPolicyChangedDetails(fileLockingPolicyState, fileLockingPolicyState2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileLockingPolicyChangedDetails, fileLockingPolicyChangedDetails.toStringMultiline());
            return fileLockingPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileLockingPolicyChangedDetails fileLockingPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            FileLockingPolicyState.Serializer serializer = FileLockingPolicyState.Serializer.INSTANCE;
            serializer.serialize(fileLockingPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            serializer.serialize(fileLockingPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileLockingPolicyChangedDetails(FileLockingPolicyState fileLockingPolicyState, FileLockingPolicyState fileLockingPolicyState2) {
        if (fileLockingPolicyState == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = fileLockingPolicyState;
        if (fileLockingPolicyState2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = fileLockingPolicyState2;
    }

    public boolean equals(Object obj) {
        FileLockingPolicyState fileLockingPolicyState;
        FileLockingPolicyState fileLockingPolicyState2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileLockingPolicyChangedDetails fileLockingPolicyChangedDetails = (FileLockingPolicyChangedDetails) obj;
        FileLockingPolicyState fileLockingPolicyState3 = this.newValue;
        FileLockingPolicyState fileLockingPolicyState4 = fileLockingPolicyChangedDetails.newValue;
        return (fileLockingPolicyState3 == fileLockingPolicyState4 || fileLockingPolicyState3.equals(fileLockingPolicyState4)) && ((fileLockingPolicyState = this.previousValue) == (fileLockingPolicyState2 = fileLockingPolicyChangedDetails.previousValue) || fileLockingPolicyState.equals(fileLockingPolicyState2));
    }

    public FileLockingPolicyState getNewValue() {
        return this.newValue;
    }

    public FileLockingPolicyState getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3564a.f19823b.serialize((C3564a) this, false);
    }

    public String toStringMultiline() {
        return C3564a.f19823b.serialize((C3564a) this, true);
    }
}
