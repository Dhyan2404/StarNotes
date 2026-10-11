package com.dropbox.core.p006v2.users;

import com.dropbox.core.p006v2.users.FileLockingValue;
import com.dropbox.core.p006v2.users.PaperAsFilesValue;
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
public final class UserFeatureValue {
    public static final UserFeatureValue OTHER = new UserFeatureValue().m16889c(Tag.OTHER);

    /* renamed from: a */
    public Tag f20754a;

    /* renamed from: b */
    public PaperAsFilesValue f20755b;

    /* renamed from: c */
    public FileLockingValue f20756c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PAPER_AS_FILES,
        FILE_LOCKING,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.users.UserFeatureValue$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4448a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20757a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20757a = iArr;
            try {
                iArr[Tag.PAPER_AS_FILES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20757a[Tag.FILE_LOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20757a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.users.UserFeatureValue$b */
    /* loaded from: classes4.dex */
    public static class C4449b extends UnionSerializer<UserFeatureValue> {

        /* renamed from: b */
        public static final C4449b f20758b = new C4449b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserFeatureValue deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UserFeatureValue userFeatureValue;
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
            if ("paper_as_files".equals(readTag)) {
                StoneSerializer.expectField("paper_as_files", jsonParser);
                userFeatureValue = UserFeatureValue.paperAsFiles(PaperAsFilesValue.C4441b.f20743b.deserialize(jsonParser));
            } else if ("file_locking".equals(readTag)) {
                StoneSerializer.expectField("file_locking", jsonParser);
                userFeatureValue = UserFeatureValue.fileLocking(FileLockingValue.C4434b.f20732b.deserialize(jsonParser));
            } else {
                userFeatureValue = UserFeatureValue.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userFeatureValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserFeatureValue userFeatureValue, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4448a.f20757a[userFeatureValue.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("paper_as_files", jsonGenerator);
                jsonGenerator.writeFieldName("paper_as_files");
                PaperAsFilesValue.C4441b.f20743b.serialize(userFeatureValue.f20755b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("file_locking", jsonGenerator);
            jsonGenerator.writeFieldName("file_locking");
            FileLockingValue.C4434b.f20732b.serialize(userFeatureValue.f20756c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UserFeatureValue fileLocking(FileLockingValue fileLockingValue) {
        if (fileLockingValue != null) {
            return new UserFeatureValue().m16890d(Tag.FILE_LOCKING, fileLockingValue);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UserFeatureValue paperAsFiles(PaperAsFilesValue paperAsFilesValue) {
        if (paperAsFilesValue != null) {
            return new UserFeatureValue().m16891e(Tag.PAPER_AS_FILES, paperAsFilesValue);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final UserFeatureValue m16889c(Tag tag) {
        UserFeatureValue userFeatureValue = new UserFeatureValue();
        userFeatureValue.f20754a = tag;
        return userFeatureValue;
    }

    /* renamed from: d */
    public final UserFeatureValue m16890d(Tag tag, FileLockingValue fileLockingValue) {
        UserFeatureValue userFeatureValue = new UserFeatureValue();
        userFeatureValue.f20754a = tag;
        userFeatureValue.f20756c = fileLockingValue;
        return userFeatureValue;
    }

    /* renamed from: e */
    public final UserFeatureValue m16891e(Tag tag, PaperAsFilesValue paperAsFilesValue) {
        UserFeatureValue userFeatureValue = new UserFeatureValue();
        userFeatureValue.f20754a = tag;
        userFeatureValue.f20755b = paperAsFilesValue;
        return userFeatureValue;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UserFeatureValue)) {
            return false;
        }
        UserFeatureValue userFeatureValue = (UserFeatureValue) obj;
        Tag tag = this.f20754a;
        if (tag != userFeatureValue.f20754a) {
            return false;
        }
        int i = C4448a.f20757a[tag.ordinal()];
        if (i == 1) {
            PaperAsFilesValue paperAsFilesValue = this.f20755b;
            PaperAsFilesValue paperAsFilesValue2 = userFeatureValue.f20755b;
            return paperAsFilesValue == paperAsFilesValue2 || paperAsFilesValue.equals(paperAsFilesValue2);
        }
        if (i != 2) {
            return i == 3;
        }
        FileLockingValue fileLockingValue = this.f20756c;
        FileLockingValue fileLockingValue2 = userFeatureValue.f20756c;
        return fileLockingValue == fileLockingValue2 || fileLockingValue.equals(fileLockingValue2);
    }

    public FileLockingValue getFileLockingValue() {
        if (this.f20754a == Tag.FILE_LOCKING) {
            return this.f20756c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILE_LOCKING, but was Tag." + this.f20754a.name());
    }

    public PaperAsFilesValue getPaperAsFilesValue() {
        if (this.f20754a == Tag.PAPER_AS_FILES) {
            return this.f20755b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_AS_FILES, but was Tag." + this.f20754a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20754a, this.f20755b, this.f20756c});
    }

    public boolean isFileLocking() {
        return this.f20754a == Tag.FILE_LOCKING;
    }

    public boolean isOther() {
        return this.f20754a == Tag.OTHER;
    }

    public boolean isPaperAsFiles() {
        return this.f20754a == Tag.PAPER_AS_FILES;
    }

    public Tag tag() {
        return this.f20754a;
    }

    public String toString() {
        return C4449b.f20758b.serialize((C4449b) this, false);
    }

    public String toStringMultiline() {
        return C4449b.f20758b.serialize((C4449b) this, true);
    }
}
