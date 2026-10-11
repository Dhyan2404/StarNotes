package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileLock;
import com.dropbox.core.p006v2.files.Metadata;
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
public class LockFileResult {
    protected final FileLock lock;
    protected final Metadata metadata;

    /* renamed from: com.dropbox.core.v2.files.LockFileResult$a */
    /* loaded from: classes4.dex */
    public static class C2589a extends StructSerializer<LockFileResult> {

        /* renamed from: b */
        public static final C2589a f17250b = new C2589a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockFileResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Metadata metadata = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FileLock fileLock = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("metadata".equals(currentName)) {
                    metadata = Metadata.C2596a.f17264b.deserialize(jsonParser);
                } else if (DevicePushAction.LOCK_DEVICE.equals(currentName)) {
                    fileLock = FileLock.C2539a.f17143b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (metadata == null) {
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            if (fileLock == null) {
                throw new JsonParseException(jsonParser, "Required field \"lock\" missing.");
            }
            LockFileResult lockFileResult = new LockFileResult(metadata, fileLock);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(lockFileResult, lockFileResult.toStringMultiline());
            return lockFileResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockFileResult lockFileResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("metadata");
            Metadata.C2596a.f17264b.serialize((Metadata.C2596a) lockFileResult.metadata, jsonGenerator);
            jsonGenerator.writeFieldName(DevicePushAction.LOCK_DEVICE);
            FileLock.C2539a.f17143b.serialize((FileLock.C2539a) lockFileResult.lock, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LockFileResult(Metadata metadata, FileLock fileLock) {
        if (metadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = metadata;
        if (fileLock == null) {
            throw new IllegalArgumentException("Required value for 'lock' is null");
        }
        this.lock = fileLock;
    }

    public boolean equals(Object obj) {
        FileLock fileLock;
        FileLock fileLock2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LockFileResult lockFileResult = (LockFileResult) obj;
        Metadata metadata = this.metadata;
        Metadata metadata2 = lockFileResult.metadata;
        return (metadata == metadata2 || metadata.equals(metadata2)) && ((fileLock = this.lock) == (fileLock2 = lockFileResult.lock) || fileLock.equals(fileLock2));
    }

    public FileLock getLock() {
        return this.lock;
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata, this.lock});
    }

    public String toString() {
        return C2589a.f17250b.serialize((C2589a) this, false);
    }

    public String toStringMultiline() {
        return C2589a.f17250b.serialize((C2589a) this, true);
    }
}
