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
public final class SetAccessInheritanceError {
    public static final SetAccessInheritanceError NO_PERMISSION = new SetAccessInheritanceError().m11851b(Tag.NO_PERMISSION);
    public static final SetAccessInheritanceError OTHER = new SetAccessInheritanceError().m11851b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17923a;

    /* renamed from: b */
    public SharedFolderAccessError f17924b;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        NO_PERMISSION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.SetAccessInheritanceError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2926a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17925a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17925a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17925a[Tag.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17925a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SetAccessInheritanceError$b */
    /* loaded from: classes4.dex */
    public static class C2927b extends UnionSerializer<SetAccessInheritanceError> {

        /* renamed from: b */
        public static final C2927b f17926b = new C2927b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SetAccessInheritanceError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SetAccessInheritanceError setAccessInheritanceError;
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
                setAccessInheritanceError = SetAccessInheritanceError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else {
                setAccessInheritanceError = "no_permission".equals(readTag) ? SetAccessInheritanceError.NO_PERMISSION : SetAccessInheritanceError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return setAccessInheritanceError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SetAccessInheritanceError setAccessInheritanceError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2926a.f17925a[setAccessInheritanceError.tag().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString("no_permission");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("access_error", jsonGenerator);
            jsonGenerator.writeFieldName("access_error");
            SharedFolderAccessError.C2943b.f17965b.serialize(setAccessInheritanceError.f17924b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static SetAccessInheritanceError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new SetAccessInheritanceError().m11852c(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final SetAccessInheritanceError m11851b(Tag tag) {
        SetAccessInheritanceError setAccessInheritanceError = new SetAccessInheritanceError();
        setAccessInheritanceError.f17923a = tag;
        return setAccessInheritanceError;
    }

    /* renamed from: c */
    public final SetAccessInheritanceError m11852c(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        SetAccessInheritanceError setAccessInheritanceError = new SetAccessInheritanceError();
        setAccessInheritanceError.f17923a = tag;
        setAccessInheritanceError.f17924b = sharedFolderAccessError;
        return setAccessInheritanceError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SetAccessInheritanceError)) {
            return false;
        }
        SetAccessInheritanceError setAccessInheritanceError = (SetAccessInheritanceError) obj;
        Tag tag = this.f17923a;
        if (tag != setAccessInheritanceError.f17923a) {
            return false;
        }
        int i = C2926a.f17925a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        SharedFolderAccessError sharedFolderAccessError = this.f17924b;
        SharedFolderAccessError sharedFolderAccessError2 = setAccessInheritanceError.f17924b;
        return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f17923a == Tag.ACCESS_ERROR) {
            return this.f17924b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17923a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17923a, this.f17924b});
    }

    public boolean isAccessError() {
        return this.f17923a == Tag.ACCESS_ERROR;
    }

    public boolean isNoPermission() {
        return this.f17923a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f17923a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17923a;
    }

    public String toString() {
        return C2927b.f17926b.serialize((C2927b) this, false);
    }

    public String toStringMultiline() {
        return C2927b.f17926b.serialize((C2927b) this, true);
    }
}
