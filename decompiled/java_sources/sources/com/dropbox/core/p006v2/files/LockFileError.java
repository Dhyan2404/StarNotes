package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LockConflictError;
import com.dropbox.core.p006v2.files.LookupError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class LockFileError {

    /* renamed from: a */
    public Tag f17245a;

    /* renamed from: b */
    public LookupError f17246b;

    /* renamed from: c */
    public LockConflictError f17247c;
    public static final LockFileError TOO_MANY_WRITE_OPERATIONS = new LockFileError().m10868c(Tag.TOO_MANY_WRITE_OPERATIONS);
    public static final LockFileError TOO_MANY_FILES = new LockFileError().m10868c(Tag.TOO_MANY_FILES);
    public static final LockFileError NO_WRITE_PERMISSION = new LockFileError().m10868c(Tag.NO_WRITE_PERMISSION);
    public static final LockFileError CANNOT_BE_LOCKED = new LockFileError().m10868c(Tag.CANNOT_BE_LOCKED);
    public static final LockFileError FILE_NOT_SHARED = new LockFileError().m10868c(Tag.FILE_NOT_SHARED);
    public static final LockFileError INTERNAL_ERROR = new LockFileError().m10868c(Tag.INTERNAL_ERROR);
    public static final LockFileError OTHER = new LockFileError().m10868c(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH_LOOKUP,
        TOO_MANY_WRITE_OPERATIONS,
        TOO_MANY_FILES,
        NO_WRITE_PERMISSION,
        CANNOT_BE_LOCKED,
        FILE_NOT_SHARED,
        LOCK_CONFLICT,
        INTERNAL_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.LockFileError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2587a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17248a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17248a = iArr;
            try {
                iArr[Tag.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17248a[Tag.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17248a[Tag.TOO_MANY_FILES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17248a[Tag.NO_WRITE_PERMISSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17248a[Tag.CANNOT_BE_LOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17248a[Tag.FILE_NOT_SHARED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17248a[Tag.LOCK_CONFLICT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17248a[Tag.INTERNAL_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17248a[Tag.OTHER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.LockFileError$b */
    /* loaded from: classes4.dex */
    public static class C2588b extends UnionSerializer<LockFileError> {

        /* renamed from: b */
        public static final C2588b f17249b = new C2588b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockFileError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LockFileError lockConflict;
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
            if ("path_lookup".equals(readTag)) {
                StoneSerializer.expectField("path_lookup", jsonParser);
                lockConflict = LockFileError.pathLookup(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                lockConflict = "too_many_write_operations".equals(readTag) ? LockFileError.TOO_MANY_WRITE_OPERATIONS : "too_many_files".equals(readTag) ? LockFileError.TOO_MANY_FILES : "no_write_permission".equals(readTag) ? LockFileError.NO_WRITE_PERMISSION : "cannot_be_locked".equals(readTag) ? LockFileError.CANNOT_BE_LOCKED : "file_not_shared".equals(readTag) ? LockFileError.FILE_NOT_SHARED : "lock_conflict".equals(readTag) ? LockFileError.lockConflict(LockConflictError.C2584a.f17242b.deserialize(jsonParser, true)) : "internal_error".equals(readTag) ? LockFileError.INTERNAL_ERROR : LockFileError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return lockConflict;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockFileError lockFileError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2587a.f17248a[lockFileError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("path_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("path_lookup");
                    LookupError.Serializer.INSTANCE.serialize(lockFileError.f17246b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("too_many_write_operations");
                    return;
                case 3:
                    jsonGenerator.writeString("too_many_files");
                    return;
                case 4:
                    jsonGenerator.writeString("no_write_permission");
                    return;
                case 5:
                    jsonGenerator.writeString("cannot_be_locked");
                    return;
                case 6:
                    jsonGenerator.writeString("file_not_shared");
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("lock_conflict", jsonGenerator);
                    LockConflictError.C2584a.f17242b.serialize(lockFileError.f17247c, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeString("internal_error");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static LockFileError lockConflict(LockConflictError lockConflictError) {
        if (lockConflictError != null) {
            return new LockFileError().m10869d(Tag.LOCK_CONFLICT, lockConflictError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static LockFileError pathLookup(LookupError lookupError) {
        if (lookupError != null) {
            return new LockFileError().m10870e(Tag.PATH_LOOKUP, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final LockFileError m10868c(Tag tag) {
        LockFileError lockFileError = new LockFileError();
        lockFileError.f17245a = tag;
        return lockFileError;
    }

    /* renamed from: d */
    public final LockFileError m10869d(Tag tag, LockConflictError lockConflictError) {
        LockFileError lockFileError = new LockFileError();
        lockFileError.f17245a = tag;
        lockFileError.f17247c = lockConflictError;
        return lockFileError;
    }

    /* renamed from: e */
    public final LockFileError m10870e(Tag tag, LookupError lookupError) {
        LockFileError lockFileError = new LockFileError();
        lockFileError.f17245a = tag;
        lockFileError.f17246b = lookupError;
        return lockFileError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LockFileError)) {
            return false;
        }
        LockFileError lockFileError = (LockFileError) obj;
        Tag tag = this.f17245a;
        if (tag != lockFileError.f17245a) {
            return false;
        }
        switch (C2587a.f17248a[tag.ordinal()]) {
            case 1:
                LookupError lookupError = this.f17246b;
                LookupError lookupError2 = lockFileError.f17246b;
                return lookupError == lookupError2 || lookupError.equals(lookupError2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            case 7:
                LockConflictError lockConflictError = this.f17247c;
                LockConflictError lockConflictError2 = lockFileError.f17247c;
                return lockConflictError == lockConflictError2 || lockConflictError.equals(lockConflictError2);
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    public LockConflictError getLockConflictValue() {
        if (this.f17245a == Tag.LOCK_CONFLICT) {
            return this.f17247c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LOCK_CONFLICT, but was Tag." + this.f17245a.name());
    }

    public LookupError getPathLookupValue() {
        if (this.f17245a == Tag.PATH_LOOKUP) {
            return this.f17246b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH_LOOKUP, but was Tag." + this.f17245a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17245a, this.f17246b, this.f17247c});
    }

    public boolean isCannotBeLocked() {
        return this.f17245a == Tag.CANNOT_BE_LOCKED;
    }

    public boolean isFileNotShared() {
        return this.f17245a == Tag.FILE_NOT_SHARED;
    }

    public boolean isInternalError() {
        return this.f17245a == Tag.INTERNAL_ERROR;
    }

    public boolean isLockConflict() {
        return this.f17245a == Tag.LOCK_CONFLICT;
    }

    public boolean isNoWritePermission() {
        return this.f17245a == Tag.NO_WRITE_PERMISSION;
    }

    public boolean isOther() {
        return this.f17245a == Tag.OTHER;
    }

    public boolean isPathLookup() {
        return this.f17245a == Tag.PATH_LOOKUP;
    }

    public boolean isTooManyFiles() {
        return this.f17245a == Tag.TOO_MANY_FILES;
    }

    public boolean isTooManyWriteOperations() {
        return this.f17245a == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public Tag tag() {
        return this.f17245a;
    }

    public String toString() {
        return C2588b.f17249b.serialize((C2588b) this, false);
    }

    public String toStringMultiline() {
        return C2588b.f17249b.serialize((C2588b) this, true);
    }
}
