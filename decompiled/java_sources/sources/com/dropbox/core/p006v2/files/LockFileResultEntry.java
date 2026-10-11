package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LockFileError;
import com.dropbox.core.p006v2.files.LockFileResult;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class LockFileResultEntry {

    /* renamed from: a */
    public Tag f17251a;

    /* renamed from: b */
    public LockFileResult f17252b;

    /* renamed from: c */
    public LockFileError f17253c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        FAILURE
    }

    /* renamed from: com.dropbox.core.v2.files.LockFileResultEntry$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2590a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17254a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17254a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17254a[Tag.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.LockFileResultEntry$b */
    /* loaded from: classes4.dex */
    public static class C2591b extends UnionSerializer<LockFileResultEntry> {

        /* renamed from: b */
        public static final C2591b f17255b = new C2591b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockFileResultEntry deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LockFileResultEntry failure;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if (FirebaseAnalytics.Param.SUCCESS.equals(readTag)) {
                failure = LockFileResultEntry.success(LockFileResult.C2589a.f17250b.deserialize(jsonParser, true));
            } else {
                if (!"failure".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failure", jsonParser);
                failure = LockFileResultEntry.failure(LockFileError.C2588b.f17249b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failure;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockFileResultEntry lockFileResultEntry, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2590a.f17254a[lockFileResultEntry.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                LockFileResult.C2589a.f17250b.serialize(lockFileResultEntry.f17252b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + lockFileResultEntry.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failure", jsonGenerator);
            jsonGenerator.writeFieldName("failure");
            LockFileError.C2588b.f17249b.serialize(lockFileResultEntry.f17253c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static LockFileResultEntry failure(LockFileError lockFileError) {
        if (lockFileError != null) {
            return new LockFileResultEntry().m10878d(Tag.FAILURE, lockFileError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static LockFileResultEntry success(LockFileResult lockFileResult) {
        if (lockFileResult != null) {
            return new LockFileResultEntry().m10879e(Tag.SUCCESS, lockFileResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final LockFileResultEntry m10877c(Tag tag) {
        LockFileResultEntry lockFileResultEntry = new LockFileResultEntry();
        lockFileResultEntry.f17251a = tag;
        return lockFileResultEntry;
    }

    /* renamed from: d */
    public final LockFileResultEntry m10878d(Tag tag, LockFileError lockFileError) {
        LockFileResultEntry lockFileResultEntry = new LockFileResultEntry();
        lockFileResultEntry.f17251a = tag;
        lockFileResultEntry.f17253c = lockFileError;
        return lockFileResultEntry;
    }

    /* renamed from: e */
    public final LockFileResultEntry m10879e(Tag tag, LockFileResult lockFileResult) {
        LockFileResultEntry lockFileResultEntry = new LockFileResultEntry();
        lockFileResultEntry.f17251a = tag;
        lockFileResultEntry.f17252b = lockFileResult;
        return lockFileResultEntry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LockFileResultEntry)) {
            return false;
        }
        LockFileResultEntry lockFileResultEntry = (LockFileResultEntry) obj;
        Tag tag = this.f17251a;
        if (tag != lockFileResultEntry.f17251a) {
            return false;
        }
        int i = C2590a.f17254a[tag.ordinal()];
        if (i == 1) {
            LockFileResult lockFileResult = this.f17252b;
            LockFileResult lockFileResult2 = lockFileResultEntry.f17252b;
            return lockFileResult == lockFileResult2 || lockFileResult.equals(lockFileResult2);
        }
        if (i != 2) {
            return false;
        }
        LockFileError lockFileError = this.f17253c;
        LockFileError lockFileError2 = lockFileResultEntry.f17253c;
        return lockFileError == lockFileError2 || lockFileError.equals(lockFileError2);
    }

    public LockFileError getFailureValue() {
        if (this.f17251a == Tag.FAILURE) {
            return this.f17253c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this.f17251a.name());
    }

    public LockFileResult getSuccessValue() {
        if (this.f17251a == Tag.SUCCESS) {
            return this.f17252b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f17251a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17251a, this.f17252b, this.f17253c});
    }

    public boolean isFailure() {
        return this.f17251a == Tag.FAILURE;
    }

    public boolean isSuccess() {
        return this.f17251a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f17251a;
    }

    public String toString() {
        return C2591b.f17255b.serialize((C2591b) this, false);
    }

    public String toStringMultiline() {
        return C2591b.f17255b.serialize((C2591b) this, true);
    }
}
