package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LookupError;
import com.dropbox.core.p006v2.files.MoveIntoVaultError;
import com.dropbox.core.p006v2.files.WriteError;
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
public final class RelocationBatchError {

    /* renamed from: a */
    public Tag f17302a;

    /* renamed from: b */
    public LookupError f17303b;

    /* renamed from: c */
    public WriteError f17304c;

    /* renamed from: d */
    public WriteError f17305d;

    /* renamed from: e */
    public MoveIntoVaultError f17306e;
    public static final RelocationBatchError CANT_COPY_SHARED_FOLDER = new RelocationBatchError().m10942e(Tag.CANT_COPY_SHARED_FOLDER);
    public static final RelocationBatchError CANT_NEST_SHARED_FOLDER = new RelocationBatchError().m10942e(Tag.CANT_NEST_SHARED_FOLDER);
    public static final RelocationBatchError CANT_MOVE_FOLDER_INTO_ITSELF = new RelocationBatchError().m10942e(Tag.CANT_MOVE_FOLDER_INTO_ITSELF);
    public static final RelocationBatchError TOO_MANY_FILES = new RelocationBatchError().m10942e(Tag.TOO_MANY_FILES);
    public static final RelocationBatchError DUPLICATED_OR_NESTED_PATHS = new RelocationBatchError().m10942e(Tag.DUPLICATED_OR_NESTED_PATHS);
    public static final RelocationBatchError CANT_TRANSFER_OWNERSHIP = new RelocationBatchError().m10942e(Tag.CANT_TRANSFER_OWNERSHIP);
    public static final RelocationBatchError INSUFFICIENT_QUOTA = new RelocationBatchError().m10942e(Tag.INSUFFICIENT_QUOTA);
    public static final RelocationBatchError INTERNAL_ERROR = new RelocationBatchError().m10942e(Tag.INTERNAL_ERROR);
    public static final RelocationBatchError CANT_MOVE_SHARED_FOLDER = new RelocationBatchError().m10942e(Tag.CANT_MOVE_SHARED_FOLDER);
    public static final RelocationBatchError OTHER = new RelocationBatchError().m10942e(Tag.OTHER);
    public static final RelocationBatchError TOO_MANY_WRITE_OPERATIONS = new RelocationBatchError().m10942e(Tag.TOO_MANY_WRITE_OPERATIONS);

    /* loaded from: classes4.dex */
    public enum Tag {
        FROM_LOOKUP,
        FROM_WRITE,
        TO,
        CANT_COPY_SHARED_FOLDER,
        CANT_NEST_SHARED_FOLDER,
        CANT_MOVE_FOLDER_INTO_ITSELF,
        TOO_MANY_FILES,
        DUPLICATED_OR_NESTED_PATHS,
        CANT_TRANSFER_OWNERSHIP,
        INSUFFICIENT_QUOTA,
        INTERNAL_ERROR,
        CANT_MOVE_SHARED_FOLDER,
        CANT_MOVE_INTO_VAULT,
        OTHER,
        TOO_MANY_WRITE_OPERATIONS
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2611a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17308a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17308a = iArr;
            try {
                iArr[Tag.FROM_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17308a[Tag.FROM_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17308a[Tag.TO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17308a[Tag.CANT_COPY_SHARED_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17308a[Tag.CANT_NEST_SHARED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17308a[Tag.CANT_MOVE_FOLDER_INTO_ITSELF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17308a[Tag.TOO_MANY_FILES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17308a[Tag.DUPLICATED_OR_NESTED_PATHS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17308a[Tag.CANT_TRANSFER_OWNERSHIP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17308a[Tag.INSUFFICIENT_QUOTA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17308a[Tag.INTERNAL_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17308a[Tag.CANT_MOVE_SHARED_FOLDER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17308a[Tag.CANT_MOVE_INTO_VAULT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17308a[Tag.OTHER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17308a[Tag.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchError$b */
    /* loaded from: classes4.dex */
    public static class C2612b extends UnionSerializer<RelocationBatchError> {

        /* renamed from: b */
        public static final C2612b f17309b = new C2612b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationBatchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelocationBatchError relocationBatchError;
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
            if ("from_lookup".equals(readTag)) {
                StoneSerializer.expectField("from_lookup", jsonParser);
                relocationBatchError = RelocationBatchError.fromLookup(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("from_write".equals(readTag)) {
                StoneSerializer.expectField("from_write", jsonParser);
                relocationBatchError = RelocationBatchError.fromWrite(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else if ("to".equals(readTag)) {
                StoneSerializer.expectField("to", jsonParser);
                relocationBatchError = RelocationBatchError.m10941to(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else if ("cant_copy_shared_folder".equals(readTag)) {
                relocationBatchError = RelocationBatchError.CANT_COPY_SHARED_FOLDER;
            } else if ("cant_nest_shared_folder".equals(readTag)) {
                relocationBatchError = RelocationBatchError.CANT_NEST_SHARED_FOLDER;
            } else if ("cant_move_folder_into_itself".equals(readTag)) {
                relocationBatchError = RelocationBatchError.CANT_MOVE_FOLDER_INTO_ITSELF;
            } else if ("too_many_files".equals(readTag)) {
                relocationBatchError = RelocationBatchError.TOO_MANY_FILES;
            } else if ("duplicated_or_nested_paths".equals(readTag)) {
                relocationBatchError = RelocationBatchError.DUPLICATED_OR_NESTED_PATHS;
            } else if ("cant_transfer_ownership".equals(readTag)) {
                relocationBatchError = RelocationBatchError.CANT_TRANSFER_OWNERSHIP;
            } else if ("insufficient_quota".equals(readTag)) {
                relocationBatchError = RelocationBatchError.INSUFFICIENT_QUOTA;
            } else if ("internal_error".equals(readTag)) {
                relocationBatchError = RelocationBatchError.INTERNAL_ERROR;
            } else if ("cant_move_shared_folder".equals(readTag)) {
                relocationBatchError = RelocationBatchError.CANT_MOVE_SHARED_FOLDER;
            } else if ("cant_move_into_vault".equals(readTag)) {
                StoneSerializer.expectField("cant_move_into_vault", jsonParser);
                relocationBatchError = RelocationBatchError.cantMoveIntoVault(MoveIntoVaultError.C2602b.f17281b.deserialize(jsonParser));
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                relocationBatchError = RelocationBatchError.OTHER;
            } else {
                if (!"too_many_write_operations".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                relocationBatchError = RelocationBatchError.TOO_MANY_WRITE_OPERATIONS;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return relocationBatchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationBatchError relocationBatchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2611a.f17308a[relocationBatchError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("from_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("from_lookup");
                    LookupError.Serializer.INSTANCE.serialize(relocationBatchError.f17303b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("from_write", jsonGenerator);
                    jsonGenerator.writeFieldName("from_write");
                    WriteError.C2702b.f17485b.serialize(relocationBatchError.f17304c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("to", jsonGenerator);
                    jsonGenerator.writeFieldName("to");
                    WriteError.C2702b.f17485b.serialize(relocationBatchError.f17305d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString("cant_copy_shared_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("cant_nest_shared_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("cant_move_folder_into_itself");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_files");
                    return;
                case 8:
                    jsonGenerator.writeString("duplicated_or_nested_paths");
                    return;
                case 9:
                    jsonGenerator.writeString("cant_transfer_ownership");
                    return;
                case 10:
                    jsonGenerator.writeString("insufficient_quota");
                    return;
                case 11:
                    jsonGenerator.writeString("internal_error");
                    return;
                case 12:
                    jsonGenerator.writeString("cant_move_shared_folder");
                    return;
                case 13:
                    jsonGenerator.writeStartObject();
                    writeTag("cant_move_into_vault", jsonGenerator);
                    jsonGenerator.writeFieldName("cant_move_into_vault");
                    MoveIntoVaultError.C2602b.f17281b.serialize(relocationBatchError.f17306e, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 14:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 15:
                    jsonGenerator.writeString("too_many_write_operations");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + relocationBatchError.tag());
            }
        }
    }

    public static RelocationBatchError cantMoveIntoVault(MoveIntoVaultError moveIntoVaultError) {
        if (moveIntoVaultError != null) {
            return new RelocationBatchError().m10943f(Tag.CANT_MOVE_INTO_VAULT, moveIntoVaultError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RelocationBatchError fromLookup(LookupError lookupError) {
        if (lookupError != null) {
            return new RelocationBatchError().m10944g(Tag.FROM_LOOKUP, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RelocationBatchError fromWrite(WriteError writeError) {
        if (writeError != null) {
            return new RelocationBatchError().m10945h(Tag.FROM_WRITE, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: to */
    public static RelocationBatchError m10941to(WriteError writeError) {
        if (writeError != null) {
            return new RelocationBatchError().m10946i(Tag.TO, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: e */
    public final RelocationBatchError m10942e(Tag tag) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError.f17302a = tag;
        return relocationBatchError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationBatchError)) {
            return false;
        }
        RelocationBatchError relocationBatchError = (RelocationBatchError) obj;
        Tag tag = this.f17302a;
        if (tag != relocationBatchError.f17302a) {
            return false;
        }
        switch (C2611a.f17308a[tag.ordinal()]) {
            case 1:
                LookupError lookupError = this.f17303b;
                LookupError lookupError2 = relocationBatchError.f17303b;
                return lookupError == lookupError2 || lookupError.equals(lookupError2);
            case 2:
                WriteError writeError = this.f17304c;
                WriteError writeError2 = relocationBatchError.f17304c;
                return writeError == writeError2 || writeError.equals(writeError2);
            case 3:
                WriteError writeError3 = this.f17305d;
                WriteError writeError4 = relocationBatchError.f17305d;
                return writeError3 == writeError4 || writeError3.equals(writeError4);
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return true;
            case 13:
                MoveIntoVaultError moveIntoVaultError = this.f17306e;
                MoveIntoVaultError moveIntoVaultError2 = relocationBatchError.f17306e;
                return moveIntoVaultError == moveIntoVaultError2 || moveIntoVaultError.equals(moveIntoVaultError2);
            case 14:
            case 15:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final RelocationBatchError m10943f(Tag tag, MoveIntoVaultError moveIntoVaultError) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError.f17302a = tag;
        relocationBatchError.f17306e = moveIntoVaultError;
        return relocationBatchError;
    }

    /* renamed from: g */
    public final RelocationBatchError m10944g(Tag tag, LookupError lookupError) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError.f17302a = tag;
        relocationBatchError.f17303b = lookupError;
        return relocationBatchError;
    }

    public MoveIntoVaultError getCantMoveIntoVaultValue() {
        if (this.f17302a == Tag.CANT_MOVE_INTO_VAULT) {
            return this.f17306e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CANT_MOVE_INTO_VAULT, but was Tag." + this.f17302a.name());
    }

    public LookupError getFromLookupValue() {
        if (this.f17302a == Tag.FROM_LOOKUP) {
            return this.f17303b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FROM_LOOKUP, but was Tag." + this.f17302a.name());
    }

    public WriteError getFromWriteValue() {
        if (this.f17302a == Tag.FROM_WRITE) {
            return this.f17304c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FROM_WRITE, but was Tag." + this.f17302a.name());
    }

    public WriteError getToValue() {
        if (this.f17302a == Tag.TO) {
            return this.f17305d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TO, but was Tag." + this.f17302a.name());
    }

    /* renamed from: h */
    public final RelocationBatchError m10945h(Tag tag, WriteError writeError) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError.f17302a = tag;
        relocationBatchError.f17304c = writeError;
        return relocationBatchError;
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17302a, this.f17303b, this.f17304c, this.f17305d, this.f17306e});
    }

    /* renamed from: i */
    public final RelocationBatchError m10946i(Tag tag, WriteError writeError) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError.f17302a = tag;
        relocationBatchError.f17305d = writeError;
        return relocationBatchError;
    }

    public boolean isCantCopySharedFolder() {
        return this.f17302a == Tag.CANT_COPY_SHARED_FOLDER;
    }

    public boolean isCantMoveFolderIntoItself() {
        return this.f17302a == Tag.CANT_MOVE_FOLDER_INTO_ITSELF;
    }

    public boolean isCantMoveIntoVault() {
        return this.f17302a == Tag.CANT_MOVE_INTO_VAULT;
    }

    public boolean isCantMoveSharedFolder() {
        return this.f17302a == Tag.CANT_MOVE_SHARED_FOLDER;
    }

    public boolean isCantNestSharedFolder() {
        return this.f17302a == Tag.CANT_NEST_SHARED_FOLDER;
    }

    public boolean isCantTransferOwnership() {
        return this.f17302a == Tag.CANT_TRANSFER_OWNERSHIP;
    }

    public boolean isDuplicatedOrNestedPaths() {
        return this.f17302a == Tag.DUPLICATED_OR_NESTED_PATHS;
    }

    public boolean isFromLookup() {
        return this.f17302a == Tag.FROM_LOOKUP;
    }

    public boolean isFromWrite() {
        return this.f17302a == Tag.FROM_WRITE;
    }

    public boolean isInsufficientQuota() {
        return this.f17302a == Tag.INSUFFICIENT_QUOTA;
    }

    public boolean isInternalError() {
        return this.f17302a == Tag.INTERNAL_ERROR;
    }

    public boolean isOther() {
        return this.f17302a == Tag.OTHER;
    }

    public boolean isTo() {
        return this.f17302a == Tag.TO;
    }

    public boolean isTooManyFiles() {
        return this.f17302a == Tag.TOO_MANY_FILES;
    }

    public boolean isTooManyWriteOperations() {
        return this.f17302a == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public Tag tag() {
        return this.f17302a;
    }

    public String toString() {
        return C2612b.f17309b.serialize((C2612b) this, false);
    }

    public String toStringMultiline() {
        return C2612b.f17309b.serialize((C2612b) this, true);
    }
}
