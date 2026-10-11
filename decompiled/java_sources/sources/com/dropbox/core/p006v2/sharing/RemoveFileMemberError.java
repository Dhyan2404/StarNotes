package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.MemberAccessLevelResult;
import com.dropbox.core.p006v2.sharing.SharingFileAccessError;
import com.dropbox.core.p006v2.sharing.SharingUserError;
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
public final class RemoveFileMemberError {
    public static final RemoveFileMemberError OTHER = new RemoveFileMemberError().m11822d(Tag.OTHER);

    /* renamed from: a */
    public Tag f17899a;

    /* renamed from: b */
    public SharingUserError f17900b;

    /* renamed from: c */
    public SharingFileAccessError f17901c;

    /* renamed from: d */
    public MemberAccessLevelResult f17902d;

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.RemoveFileMemberError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2912a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17903a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17903a = iArr;
            try {
                iArr[Tag.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17903a[Tag.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17903a[Tag.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17903a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.RemoveFileMemberError$b */
    /* loaded from: classes4.dex */
    public static class C2913b extends UnionSerializer<RemoveFileMemberError> {

        /* renamed from: b */
        public static final C2913b f17904b = new C2913b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RemoveFileMemberError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RemoveFileMemberError noExplicitAccess;
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
            if ("user_error".equals(readTag)) {
                StoneSerializer.expectField("user_error", jsonParser);
                noExplicitAccess = RemoveFileMemberError.userError(SharingUserError.C2963b.f17991b.deserialize(jsonParser));
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                noExplicitAccess = RemoveFileMemberError.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                noExplicitAccess = "no_explicit_access".equals(readTag) ? RemoveFileMemberError.noExplicitAccess(MemberAccessLevelResult.C2891a.f17864b.deserialize(jsonParser, true)) : RemoveFileMemberError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return noExplicitAccess;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RemoveFileMemberError removeFileMemberError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2912a.f17903a[removeFileMemberError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                SharingUserError.C2963b.f17991b.serialize(removeFileMemberError.f17900b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                SharingFileAccessError.C2961b.f17989b.serialize(removeFileMemberError.f17901c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("no_explicit_access", jsonGenerator);
            MemberAccessLevelResult.C2891a.f17864b.serialize(removeFileMemberError.f17902d, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static RemoveFileMemberError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new RemoveFileMemberError().m11823e(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RemoveFileMemberError noExplicitAccess(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult != null) {
            return new RemoveFileMemberError().m11824f(Tag.NO_EXPLICIT_ACCESS, memberAccessLevelResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RemoveFileMemberError userError(SharingUserError sharingUserError) {
        if (sharingUserError != null) {
            return new RemoveFileMemberError().m11825g(Tag.USER_ERROR, sharingUserError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final RemoveFileMemberError m11822d(Tag tag) {
        RemoveFileMemberError removeFileMemberError = new RemoveFileMemberError();
        removeFileMemberError.f17899a = tag;
        return removeFileMemberError;
    }

    /* renamed from: e */
    public final RemoveFileMemberError m11823e(Tag tag, SharingFileAccessError sharingFileAccessError) {
        RemoveFileMemberError removeFileMemberError = new RemoveFileMemberError();
        removeFileMemberError.f17899a = tag;
        removeFileMemberError.f17901c = sharingFileAccessError;
        return removeFileMemberError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RemoveFileMemberError)) {
            return false;
        }
        RemoveFileMemberError removeFileMemberError = (RemoveFileMemberError) obj;
        Tag tag = this.f17899a;
        if (tag != removeFileMemberError.f17899a) {
            return false;
        }
        int i = C2912a.f17903a[tag.ordinal()];
        if (i == 1) {
            SharingUserError sharingUserError = this.f17900b;
            SharingUserError sharingUserError2 = removeFileMemberError.f17900b;
            return sharingUserError == sharingUserError2 || sharingUserError.equals(sharingUserError2);
        }
        if (i == 2) {
            SharingFileAccessError sharingFileAccessError = this.f17901c;
            SharingFileAccessError sharingFileAccessError2 = removeFileMemberError.f17901c;
            return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
        }
        if (i != 3) {
            return i == 4;
        }
        MemberAccessLevelResult memberAccessLevelResult = this.f17902d;
        MemberAccessLevelResult memberAccessLevelResult2 = removeFileMemberError.f17902d;
        return memberAccessLevelResult == memberAccessLevelResult2 || memberAccessLevelResult.equals(memberAccessLevelResult2);
    }

    /* renamed from: f */
    public final RemoveFileMemberError m11824f(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        RemoveFileMemberError removeFileMemberError = new RemoveFileMemberError();
        removeFileMemberError.f17899a = tag;
        removeFileMemberError.f17902d = memberAccessLevelResult;
        return removeFileMemberError;
    }

    /* renamed from: g */
    public final RemoveFileMemberError m11825g(Tag tag, SharingUserError sharingUserError) {
        RemoveFileMemberError removeFileMemberError = new RemoveFileMemberError();
        removeFileMemberError.f17899a = tag;
        removeFileMemberError.f17900b = sharingUserError;
        return removeFileMemberError;
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17899a == Tag.ACCESS_ERROR) {
            return this.f17901c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17899a.name());
    }

    public MemberAccessLevelResult getNoExplicitAccessValue() {
        if (this.f17899a == Tag.NO_EXPLICIT_ACCESS) {
            return this.f17902d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag." + this.f17899a.name());
    }

    public SharingUserError getUserErrorValue() {
        if (this.f17899a == Tag.USER_ERROR) {
            return this.f17900b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this.f17899a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17899a, this.f17900b, this.f17901c, this.f17902d});
    }

    public boolean isAccessError() {
        return this.f17899a == Tag.ACCESS_ERROR;
    }

    public boolean isNoExplicitAccess() {
        return this.f17899a == Tag.NO_EXPLICIT_ACCESS;
    }

    public boolean isOther() {
        return this.f17899a == Tag.OTHER;
    }

    public boolean isUserError() {
        return this.f17899a == Tag.USER_ERROR;
    }

    public Tag tag() {
        return this.f17899a;
    }

    public String toString() {
        return C2913b.f17904b.serialize((C2913b) this, false);
    }

    public String toStringMultiline() {
        return C2913b.f17904b.serialize((C2913b) this, true);
    }
}
