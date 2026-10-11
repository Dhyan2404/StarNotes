package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFolderAccessError;
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
public final class UnshareFolderError {

    /* renamed from: a */
    public Tag f18006a;

    /* renamed from: b */
    public SharedFolderAccessError f18007b;
    public static final UnshareFolderError TEAM_FOLDER = new UnshareFolderError().m11955b(Tag.TEAM_FOLDER);
    public static final UnshareFolderError NO_PERMISSION = new UnshareFolderError().m11955b(Tag.NO_PERMISSION);
    public static final UnshareFolderError TOO_MANY_FILES = new UnshareFolderError().m11955b(Tag.TOO_MANY_FILES);
    public static final UnshareFolderError OTHER = new UnshareFolderError().m11955b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        TEAM_FOLDER,
        NO_PERMISSION,
        TOO_MANY_FILES,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.UnshareFolderError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2971a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18008a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18008a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18008a[Tag.TEAM_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18008a[Tag.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18008a[Tag.TOO_MANY_FILES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18008a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.UnshareFolderError$b */
    /* loaded from: classes4.dex */
    public static class C2972b extends UnionSerializer<UnshareFolderError> {

        /* renamed from: b */
        public static final C2972b f18009b = new C2972b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnshareFolderError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UnshareFolderError unshareFolderError;
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
            if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                unshareFolderError = UnshareFolderError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else {
                unshareFolderError = "team_folder".equals(readTag) ? UnshareFolderError.TEAM_FOLDER : "no_permission".equals(readTag) ? UnshareFolderError.NO_PERMISSION : "too_many_files".equals(readTag) ? UnshareFolderError.TOO_MANY_FILES : UnshareFolderError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return unshareFolderError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UnshareFolderError unshareFolderError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2971a.f18008a[unshareFolderError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                SharedFolderAccessError.C2943b.f17965b.serialize(unshareFolderError.f18007b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("team_folder");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("no_permission");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    public static UnshareFolderError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new UnshareFolderError().m11956c(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final UnshareFolderError m11955b(Tag tag) {
        UnshareFolderError unshareFolderError = new UnshareFolderError();
        unshareFolderError.f18006a = tag;
        return unshareFolderError;
    }

    /* renamed from: c */
    public final UnshareFolderError m11956c(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        UnshareFolderError unshareFolderError = new UnshareFolderError();
        unshareFolderError.f18006a = tag;
        unshareFolderError.f18007b = sharedFolderAccessError;
        return unshareFolderError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UnshareFolderError)) {
            return false;
        }
        UnshareFolderError unshareFolderError = (UnshareFolderError) obj;
        Tag tag = this.f18006a;
        if (tag != unshareFolderError.f18006a) {
            return false;
        }
        int i = C2971a.f18008a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4 || i == 5;
        }
        SharedFolderAccessError sharedFolderAccessError = this.f18007b;
        SharedFolderAccessError sharedFolderAccessError2 = unshareFolderError.f18007b;
        return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f18006a == Tag.ACCESS_ERROR) {
            return this.f18007b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18006a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18006a, this.f18007b});
    }

    public boolean isAccessError() {
        return this.f18006a == Tag.ACCESS_ERROR;
    }

    public boolean isNoPermission() {
        return this.f18006a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f18006a == Tag.OTHER;
    }

    public boolean isTeamFolder() {
        return this.f18006a == Tag.TEAM_FOLDER;
    }

    public boolean isTooManyFiles() {
        return this.f18006a == Tag.TOO_MANY_FILES;
    }

    public Tag tag() {
        return this.f18006a;
    }

    public String toString() {
        return C2972b.f18009b.serialize((C2972b) this, false);
    }

    public String toStringMultiline() {
        return C2972b.f18009b.serialize((C2972b) this, true);
    }
}
