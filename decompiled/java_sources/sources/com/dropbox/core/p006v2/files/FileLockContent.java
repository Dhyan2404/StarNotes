package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.SingleUserLock;
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
public final class FileLockContent {

    /* renamed from: a */
    public Tag f17144a;

    /* renamed from: b */
    public SingleUserLock f17145b;
    public static final FileLockContent UNLOCKED = new FileLockContent().m10751b(Tag.UNLOCKED);
    public static final FileLockContent OTHER = new FileLockContent().m10751b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        UNLOCKED,
        SINGLE_USER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.FileLockContent$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2540a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17146a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17146a = iArr;
            try {
                iArr[Tag.UNLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17146a[Tag.SINGLE_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17146a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.FileLockContent$b */
    /* loaded from: classes4.dex */
    public static class C2541b extends UnionSerializer<FileLockContent> {

        /* renamed from: b */
        public static final C2541b f17147b = new C2541b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileLockContent deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
            FileLockContent singleUser = "unlocked".equals(readTag) ? FileLockContent.UNLOCKED : "single_user".equals(readTag) ? FileLockContent.singleUser(SingleUserLock.C2660a.f17408b.deserialize(jsonParser, true)) : FileLockContent.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return singleUser;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileLockContent fileLockContent, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2540a.f17146a[fileLockContent.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("unlocked");
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("single_user", jsonGenerator);
            SingleUserLock.C2660a.f17408b.serialize(fileLockContent.f17145b, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static FileLockContent singleUser(SingleUserLock singleUserLock) {
        if (singleUserLock != null) {
            return new FileLockContent().m10752c(Tag.SINGLE_USER, singleUserLock);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final FileLockContent m10751b(Tag tag) {
        FileLockContent fileLockContent = new FileLockContent();
        fileLockContent.f17144a = tag;
        return fileLockContent;
    }

    /* renamed from: c */
    public final FileLockContent m10752c(Tag tag, SingleUserLock singleUserLock) {
        FileLockContent fileLockContent = new FileLockContent();
        fileLockContent.f17144a = tag;
        fileLockContent.f17145b = singleUserLock;
        return fileLockContent;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FileLockContent)) {
            return false;
        }
        FileLockContent fileLockContent = (FileLockContent) obj;
        Tag tag = this.f17144a;
        if (tag != fileLockContent.f17144a) {
            return false;
        }
        int i = C2540a.f17146a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        SingleUserLock singleUserLock = this.f17145b;
        SingleUserLock singleUserLock2 = fileLockContent.f17145b;
        return singleUserLock == singleUserLock2 || singleUserLock.equals(singleUserLock2);
    }

    public SingleUserLock getSingleUserValue() {
        if (this.f17144a == Tag.SINGLE_USER) {
            return this.f17145b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SINGLE_USER, but was Tag." + this.f17144a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17144a, this.f17145b});
    }

    public boolean isOther() {
        return this.f17144a == Tag.OTHER;
    }

    public boolean isSingleUser() {
        return this.f17144a == Tag.SINGLE_USER;
    }

    public boolean isUnlocked() {
        return this.f17144a == Tag.UNLOCKED;
    }

    public Tag tag() {
        return this.f17144a;
    }

    public String toString() {
        return C2541b.f17147b.serialize((C2541b) this, false);
    }

    public String toStringMultiline() {
        return C2541b.f17147b.serialize((C2541b) this, true);
    }
}
