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
public final class UnmountFolderError {

    /* renamed from: a */
    public Tag f17997a;

    /* renamed from: b */
    public SharedFolderAccessError f17998b;
    public static final UnmountFolderError NO_PERMISSION = new UnmountFolderError().m11943b(Tag.NO_PERMISSION);
    public static final UnmountFolderError NOT_UNMOUNTABLE = new UnmountFolderError().m11943b(Tag.NOT_UNMOUNTABLE);
    public static final UnmountFolderError OTHER = new UnmountFolderError().m11943b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        NO_PERMISSION,
        NOT_UNMOUNTABLE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.UnmountFolderError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2967a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17999a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17999a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17999a[Tag.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17999a[Tag.NOT_UNMOUNTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17999a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.UnmountFolderError$b */
    /* loaded from: classes4.dex */
    public static class C2968b extends UnionSerializer<UnmountFolderError> {

        /* renamed from: b */
        public static final C2968b f18000b = new C2968b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnmountFolderError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UnmountFolderError unmountFolderError;
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
                unmountFolderError = UnmountFolderError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else {
                unmountFolderError = "no_permission".equals(readTag) ? UnmountFolderError.NO_PERMISSION : "not_unmountable".equals(readTag) ? UnmountFolderError.NOT_UNMOUNTABLE : UnmountFolderError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return unmountFolderError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UnmountFolderError unmountFolderError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2967a.f17999a[unmountFolderError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                SharedFolderAccessError.C2943b.f17965b.serialize(unmountFolderError.f17998b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("no_permission");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("not_unmountable");
            }
        }
    }

    public static UnmountFolderError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new UnmountFolderError().m11944c(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final UnmountFolderError m11943b(Tag tag) {
        UnmountFolderError unmountFolderError = new UnmountFolderError();
        unmountFolderError.f17997a = tag;
        return unmountFolderError;
    }

    /* renamed from: c */
    public final UnmountFolderError m11944c(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        UnmountFolderError unmountFolderError = new UnmountFolderError();
        unmountFolderError.f17997a = tag;
        unmountFolderError.f17998b = sharedFolderAccessError;
        return unmountFolderError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UnmountFolderError)) {
            return false;
        }
        UnmountFolderError unmountFolderError = (UnmountFolderError) obj;
        Tag tag = this.f17997a;
        if (tag != unmountFolderError.f17997a) {
            return false;
        }
        int i = C2967a.f17999a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        SharedFolderAccessError sharedFolderAccessError = this.f17998b;
        SharedFolderAccessError sharedFolderAccessError2 = unmountFolderError.f17998b;
        return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f17997a == Tag.ACCESS_ERROR) {
            return this.f17998b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17997a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17997a, this.f17998b});
    }

    public boolean isAccessError() {
        return this.f17997a == Tag.ACCESS_ERROR;
    }

    public boolean isNoPermission() {
        return this.f17997a == Tag.NO_PERMISSION;
    }

    public boolean isNotUnmountable() {
        return this.f17997a == Tag.NOT_UNMOUNTABLE;
    }

    public boolean isOther() {
        return this.f17997a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17997a;
    }

    public String toString() {
        return C2968b.f18000b.serialize((C2968b) this, false);
    }

    public String toStringMultiline() {
        return C2968b.f18000b.serialize((C2968b) this, true);
    }
}
