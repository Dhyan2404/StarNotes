package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.LockingErrorTagUnion;
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
public class LockingError {
    protected final LockingErrorTagUnion lockingErrorTag;

    /* renamed from: com.dropbox.core.v2.clouddocs.LockingError$a */
    /* loaded from: classes4.dex */
    public static class C2397a extends StructSerializer<LockingError> {

        /* renamed from: b */
        public static final C2397a f16845b = new C2397a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockingError deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            LockingErrorTagUnion lockingErrorTagUnion = null;
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
                if ("locking_error_tag".equals(currentName)) {
                    lockingErrorTagUnion = (LockingErrorTagUnion) StoneSerializers.nullable(LockingErrorTagUnion.C2401b.f16852b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            LockingError lockingError = new LockingError(lockingErrorTagUnion);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(lockingError, lockingError.toStringMultiline());
            return lockingError;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockingError lockingError, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (lockingError.lockingErrorTag != null) {
                jsonGenerator.writeFieldName("locking_error_tag");
                StoneSerializers.nullable(LockingErrorTagUnion.C2401b.f16852b).serialize((StoneSerializer) lockingError.lockingErrorTag, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LockingError(LockingErrorTagUnion lockingErrorTagUnion) {
        this.lockingErrorTag = lockingErrorTagUnion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LockingErrorTagUnion lockingErrorTagUnion = this.lockingErrorTag;
        LockingErrorTagUnion lockingErrorTagUnion2 = ((LockingError) obj).lockingErrorTag;
        if (lockingErrorTagUnion != lockingErrorTagUnion2) {
            return lockingErrorTagUnion != null && lockingErrorTagUnion.equals(lockingErrorTagUnion2);
        }
        return true;
    }

    public LockingErrorTagUnion getLockingErrorTag() {
        return this.lockingErrorTag;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.lockingErrorTag});
    }

    public String toString() {
        return C2397a.f16845b.serialize((C2397a) this, false);
    }

    public String toStringMultiline() {
        return C2397a.f16845b.serialize((C2397a) this, true);
    }

    public LockingError() {
        this(null);
    }
}
