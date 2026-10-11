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
public final class RelocationError {

    /* renamed from: a */
    public Tag f17341a;

    /* renamed from: b */
    public LookupError f17342b;

    /* renamed from: c */
    public WriteError f17343c;

    /* renamed from: d */
    public WriteError f17344d;

    /* renamed from: e */
    public MoveIntoVaultError f17345e;
    public static final RelocationError CANT_COPY_SHARED_FOLDER = new RelocationError().m10998e(Tag.CANT_COPY_SHARED_FOLDER);
    public static final RelocationError CANT_NEST_SHARED_FOLDER = new RelocationError().m10998e(Tag.CANT_NEST_SHARED_FOLDER);
    public static final RelocationError CANT_MOVE_FOLDER_INTO_ITSELF = new RelocationError().m10998e(Tag.CANT_MOVE_FOLDER_INTO_ITSELF);
    public static final RelocationError TOO_MANY_FILES = new RelocationError().m10998e(Tag.TOO_MANY_FILES);
    public static final RelocationError DUPLICATED_OR_NESTED_PATHS = new RelocationError().m10998e(Tag.DUPLICATED_OR_NESTED_PATHS);
    public static final RelocationError CANT_TRANSFER_OWNERSHIP = new RelocationError().m10998e(Tag.CANT_TRANSFER_OWNERSHIP);
    public static final RelocationError INSUFFICIENT_QUOTA = new RelocationError().m10998e(Tag.INSUFFICIENT_QUOTA);
    public static final RelocationError INTERNAL_ERROR = new RelocationError().m10998e(Tag.INTERNAL_ERROR);
    public static final RelocationError CANT_MOVE_SHARED_FOLDER = new RelocationError().m10998e(Tag.CANT_MOVE_SHARED_FOLDER);
    public static final RelocationError OTHER = new RelocationError().m10998e(Tag.OTHER);

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
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2628a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17347a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17347a = iArr;
            try {
                iArr[Tag.FROM_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17347a[Tag.FROM_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17347a[Tag.TO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17347a[Tag.CANT_COPY_SHARED_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17347a[Tag.CANT_NEST_SHARED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17347a[Tag.CANT_MOVE_FOLDER_INTO_ITSELF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17347a[Tag.TOO_MANY_FILES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17347a[Tag.DUPLICATED_OR_NESTED_PATHS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17347a[Tag.CANT_TRANSFER_OWNERSHIP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17347a[Tag.INSUFFICIENT_QUOTA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17347a[Tag.INTERNAL_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17347a[Tag.CANT_MOVE_SHARED_FOLDER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17347a[Tag.CANT_MOVE_INTO_VAULT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17347a[Tag.OTHER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationError$b */
    /* loaded from: classes4.dex */
    public static class C2629b extends UnionSerializer<RelocationError> {

        /* renamed from: b */
        public static final C2629b f17348b = new C2629b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelocationError relocationError;
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
                relocationError = RelocationError.fromLookup(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("from_write".equals(readTag)) {
                StoneSerializer.expectField("from_write", jsonParser);
                relocationError = RelocationError.fromWrite(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else if ("to".equals(readTag)) {
                StoneSerializer.expectField("to", jsonParser);
                relocationError = RelocationError.m10997to(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else if ("cant_copy_shared_folder".equals(readTag)) {
                relocationError = RelocationError.CANT_COPY_SHARED_FOLDER;
            } else if ("cant_nest_shared_folder".equals(readTag)) {
                relocationError = RelocationError.CANT_NEST_SHARED_FOLDER;
            } else if ("cant_move_folder_into_itself".equals(readTag)) {
                relocationError = RelocationError.CANT_MOVE_FOLDER_INTO_ITSELF;
            } else if ("too_many_files".equals(readTag)) {
                relocationError = RelocationError.TOO_MANY_FILES;
            } else if ("duplicated_or_nested_paths".equals(readTag)) {
                relocationError = RelocationError.DUPLICATED_OR_NESTED_PATHS;
            } else if ("cant_transfer_ownership".equals(readTag)) {
                relocationError = RelocationError.CANT_TRANSFER_OWNERSHIP;
            } else if ("insufficient_quota".equals(readTag)) {
                relocationError = RelocationError.INSUFFICIENT_QUOTA;
            } else if ("internal_error".equals(readTag)) {
                relocationError = RelocationError.INTERNAL_ERROR;
            } else if ("cant_move_shared_folder".equals(readTag)) {
                relocationError = RelocationError.CANT_MOVE_SHARED_FOLDER;
            } else if ("cant_move_into_vault".equals(readTag)) {
                StoneSerializer.expectField("cant_move_into_vault", jsonParser);
                relocationError = RelocationError.cantMoveIntoVault(MoveIntoVaultError.C2602b.f17281b.deserialize(jsonParser));
            } else {
                relocationError = RelocationError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return relocationError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationError relocationError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2628a.f17347a[relocationError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("from_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("from_lookup");
                    LookupError.Serializer.INSTANCE.serialize(relocationError.f17342b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("from_write", jsonGenerator);
                    jsonGenerator.writeFieldName("from_write");
                    WriteError.C2702b.f17485b.serialize(relocationError.f17343c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("to", jsonGenerator);
                    jsonGenerator.writeFieldName("to");
                    WriteError.C2702b.f17485b.serialize(relocationError.f17344d, jsonGenerator);
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
                    MoveIntoVaultError.C2602b.f17281b.serialize(relocationError.f17345e, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static RelocationError cantMoveIntoVault(MoveIntoVaultError moveIntoVaultError) {
        if (moveIntoVaultError != null) {
            return new RelocationError().m10999f(Tag.CANT_MOVE_INTO_VAULT, moveIntoVaultError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RelocationError fromLookup(LookupError lookupError) {
        if (lookupError != null) {
            return new RelocationError().m11000g(Tag.FROM_LOOKUP, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RelocationError fromWrite(WriteError writeError) {
        if (writeError != null) {
            return new RelocationError().m11001h(Tag.FROM_WRITE, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: to */
    public static RelocationError m10997to(WriteError writeError) {
        if (writeError != null) {
            return new RelocationError().m11002i(Tag.TO, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: e */
    public final RelocationError m10998e(Tag tag) {
        RelocationError relocationError = new RelocationError();
        relocationError.f17341a = tag;
        return relocationError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationError)) {
            return false;
        }
        RelocationError relocationError = (RelocationError) obj;
        Tag tag = this.f17341a;
        if (tag != relocationError.f17341a) {
            return false;
        }
        switch (C2628a.f17347a[tag.ordinal()]) {
            case 1:
                LookupError lookupError = this.f17342b;
                LookupError lookupError2 = relocationError.f17342b;
                return lookupError == lookupError2 || lookupError.equals(lookupError2);
            case 2:
                WriteError writeError = this.f17343c;
                WriteError writeError2 = relocationError.f17343c;
                return writeError == writeError2 || writeError.equals(writeError2);
            case 3:
                WriteError writeError3 = this.f17344d;
                WriteError writeError4 = relocationError.f17344d;
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
                MoveIntoVaultError moveIntoVaultError = this.f17345e;
                MoveIntoVaultError moveIntoVaultError2 = relocationError.f17345e;
                return moveIntoVaultError == moveIntoVaultError2 || moveIntoVaultError.equals(moveIntoVaultError2);
            case 14:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final RelocationError m10999f(Tag tag, MoveIntoVaultError moveIntoVaultError) {
        RelocationError relocationError = new RelocationError();
        relocationError.f17341a = tag;
        relocationError.f17345e = moveIntoVaultError;
        return relocationError;
    }

    /* renamed from: g */
    public final RelocationError m11000g(Tag tag, LookupError lookupError) {
        RelocationError relocationError = new RelocationError();
        relocationError.f17341a = tag;
        relocationError.f17342b = lookupError;
        return relocationError;
    }

    public MoveIntoVaultError getCantMoveIntoVaultValue() {
        if (this.f17341a == Tag.CANT_MOVE_INTO_VAULT) {
            return this.f17345e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CANT_MOVE_INTO_VAULT, but was Tag." + this.f17341a.name());
    }

    public LookupError getFromLookupValue() {
        if (this.f17341a == Tag.FROM_LOOKUP) {
            return this.f17342b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FROM_LOOKUP, but was Tag." + this.f17341a.name());
    }

    public WriteError getFromWriteValue() {
        if (this.f17341a == Tag.FROM_WRITE) {
            return this.f17343c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FROM_WRITE, but was Tag." + this.f17341a.name());
    }

    public WriteError getToValue() {
        if (this.f17341a == Tag.TO) {
            return this.f17344d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TO, but was Tag." + this.f17341a.name());
    }

    /* renamed from: h */
    public final RelocationError m11001h(Tag tag, WriteError writeError) {
        RelocationError relocationError = new RelocationError();
        relocationError.f17341a = tag;
        relocationError.f17343c = writeError;
        return relocationError;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17341a, this.f17342b, this.f17343c, this.f17344d, this.f17345e});
    }

    /* renamed from: i */
    public final RelocationError m11002i(Tag tag, WriteError writeError) {
        RelocationError relocationError = new RelocationError();
        relocationError.f17341a = tag;
        relocationError.f17344d = writeError;
        return relocationError;
    }

    public boolean isCantCopySharedFolder() {
        return this.f17341a == Tag.CANT_COPY_SHARED_FOLDER;
    }

    public boolean isCantMoveFolderIntoItself() {
        return this.f17341a == Tag.CANT_MOVE_FOLDER_INTO_ITSELF;
    }

    public boolean isCantMoveIntoVault() {
        return this.f17341a == Tag.CANT_MOVE_INTO_VAULT;
    }

    public boolean isCantMoveSharedFolder() {
        return this.f17341a == Tag.CANT_MOVE_SHARED_FOLDER;
    }

    public boolean isCantNestSharedFolder() {
        return this.f17341a == Tag.CANT_NEST_SHARED_FOLDER;
    }

    public boolean isCantTransferOwnership() {
        return this.f17341a == Tag.CANT_TRANSFER_OWNERSHIP;
    }

    public boolean isDuplicatedOrNestedPaths() {
        return this.f17341a == Tag.DUPLICATED_OR_NESTED_PATHS;
    }

    public boolean isFromLookup() {
        return this.f17341a == Tag.FROM_LOOKUP;
    }

    public boolean isFromWrite() {
        return this.f17341a == Tag.FROM_WRITE;
    }

    public boolean isInsufficientQuota() {
        return this.f17341a == Tag.INSUFFICIENT_QUOTA;
    }

    public boolean isInternalError() {
        return this.f17341a == Tag.INTERNAL_ERROR;
    }

    public boolean isOther() {
        return this.f17341a == Tag.OTHER;
    }

    public boolean isTo() {
        return this.f17341a == Tag.TO;
    }

    public boolean isTooManyFiles() {
        return this.f17341a == Tag.TOO_MANY_FILES;
    }

    public Tag tag() {
        return this.f17341a;
    }

    public String toString() {
        return C2629b.f17348b.serialize((C2629b) this, false);
    }

    public String toStringMultiline() {
        return C2629b.f17348b.serialize((C2629b) this, true);
    }
}
