package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileLock;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class LockConflictError {
    protected final FileLock lock;

    /* renamed from: com.dropbox.core.v2.files.LockConflictError$a */
    /* loaded from: classes4.dex */
    public static class C2584a extends StructSerializer<LockConflictError> {

        /* renamed from: b */
        public static final C2584a f17242b = new C2584a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockConflictError deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileLock fileLock = null;
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
                if (DevicePushAction.LOCK_DEVICE.equals(currentName)) {
                    fileLock = FileLock.C2539a.f17143b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileLock == null) {
                throw new JsonParseException(jsonParser, "Required field \"lock\" missing.");
            }
            LockConflictError lockConflictError = new LockConflictError(fileLock);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(lockConflictError, lockConflictError.toStringMultiline());
            return lockConflictError;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockConflictError lockConflictError, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(DevicePushAction.LOCK_DEVICE);
            FileLock.C2539a.f17143b.serialize((FileLock.C2539a) lockConflictError.lock, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LockConflictError(FileLock fileLock) {
        if (fileLock == null) {
            throw new IllegalArgumentException("Required value for 'lock' is null");
        }
        this.lock = fileLock;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileLock fileLock = this.lock;
        FileLock fileLock2 = ((LockConflictError) obj).lock;
        return fileLock == fileLock2 || fileLock.equals(fileLock2);
    }

    public FileLock getLock() {
        return this.lock;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.lock});
    }

    public String toString() {
        return C2584a.f17242b.serialize((C2584a) this, false);
    }

    public String toStringMultiline() {
        return C2584a.f17242b.serialize((C2584a) this, true);
    }
}
