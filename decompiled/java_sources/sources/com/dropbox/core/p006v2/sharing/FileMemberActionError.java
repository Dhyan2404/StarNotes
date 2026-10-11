package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.MemberAccessLevelResult;
import com.dropbox.core.p006v2.sharing.SharingFileAccessError;
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
public final class FileMemberActionError {
    public static final FileMemberActionError INVALID_MEMBER = new FileMemberActionError().m11569c(Tag.INVALID_MEMBER);
    public static final FileMemberActionError NO_PERMISSION = new FileMemberActionError().m11569c(Tag.NO_PERMISSION);
    public static final FileMemberActionError OTHER = new FileMemberActionError().m11569c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17715a;

    /* renamed from: b */
    public SharingFileAccessError f17716b;

    /* renamed from: c */
    public MemberAccessLevelResult f17717c;

    /* loaded from: classes4.dex */
    public enum Tag {
        INVALID_MEMBER,
        NO_PERMISSION,
        ACCESS_ERROR,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.FileMemberActionError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2819a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17718a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17718a = iArr;
            try {
                iArr[Tag.INVALID_MEMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17718a[Tag.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17718a[Tag.ACCESS_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17718a[Tag.NO_EXPLICIT_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17718a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.FileMemberActionError$b */
    /* loaded from: classes4.dex */
    public static class C2820b extends UnionSerializer<FileMemberActionError> {

        /* renamed from: b */
        public static final C2820b f17719b = new C2820b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileMemberActionError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            FileMemberActionError noExplicitAccess;
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
            if ("invalid_member".equals(readTag)) {
                noExplicitAccess = FileMemberActionError.INVALID_MEMBER;
            } else if ("no_permission".equals(readTag)) {
                noExplicitAccess = FileMemberActionError.NO_PERMISSION;
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                noExplicitAccess = FileMemberActionError.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                noExplicitAccess = "no_explicit_access".equals(readTag) ? FileMemberActionError.noExplicitAccess(MemberAccessLevelResult.C2891a.f17864b.deserialize(jsonParser, true)) : FileMemberActionError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return noExplicitAccess;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileMemberActionError fileMemberActionError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2819a.f17718a[fileMemberActionError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_member");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("no_permission");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                SharingFileAccessError.C2961b.f17989b.serialize(fileMemberActionError.f17716b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("no_explicit_access", jsonGenerator);
            MemberAccessLevelResult.C2891a.f17864b.serialize(fileMemberActionError.f17717c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static FileMemberActionError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new FileMemberActionError().m11570d(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FileMemberActionError noExplicitAccess(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult != null) {
            return new FileMemberActionError().m11571e(Tag.NO_EXPLICIT_ACCESS, memberAccessLevelResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final FileMemberActionError m11569c(Tag tag) {
        FileMemberActionError fileMemberActionError = new FileMemberActionError();
        fileMemberActionError.f17715a = tag;
        return fileMemberActionError;
    }

    /* renamed from: d */
    public final FileMemberActionError m11570d(Tag tag, SharingFileAccessError sharingFileAccessError) {
        FileMemberActionError fileMemberActionError = new FileMemberActionError();
        fileMemberActionError.f17715a = tag;
        fileMemberActionError.f17716b = sharingFileAccessError;
        return fileMemberActionError;
    }

    /* renamed from: e */
    public final FileMemberActionError m11571e(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        FileMemberActionError fileMemberActionError = new FileMemberActionError();
        fileMemberActionError.f17715a = tag;
        fileMemberActionError.f17717c = memberAccessLevelResult;
        return fileMemberActionError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FileMemberActionError)) {
            return false;
        }
        FileMemberActionError fileMemberActionError = (FileMemberActionError) obj;
        Tag tag = this.f17715a;
        if (tag != fileMemberActionError.f17715a) {
            return false;
        }
        int i = C2819a.f17718a[tag.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i == 3) {
            SharingFileAccessError sharingFileAccessError = this.f17716b;
            SharingFileAccessError sharingFileAccessError2 = fileMemberActionError.f17716b;
            return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
        }
        if (i != 4) {
            return i == 5;
        }
        MemberAccessLevelResult memberAccessLevelResult = this.f17717c;
        MemberAccessLevelResult memberAccessLevelResult2 = fileMemberActionError.f17717c;
        return memberAccessLevelResult == memberAccessLevelResult2 || memberAccessLevelResult.equals(memberAccessLevelResult2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17715a == Tag.ACCESS_ERROR) {
            return this.f17716b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17715a.name());
    }

    public MemberAccessLevelResult getNoExplicitAccessValue() {
        if (this.f17715a == Tag.NO_EXPLICIT_ACCESS) {
            return this.f17717c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag." + this.f17715a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17715a, this.f17716b, this.f17717c});
    }

    public boolean isAccessError() {
        return this.f17715a == Tag.ACCESS_ERROR;
    }

    public boolean isInvalidMember() {
        return this.f17715a == Tag.INVALID_MEMBER;
    }

    public boolean isNoExplicitAccess() {
        return this.f17715a == Tag.NO_EXPLICIT_ACCESS;
    }

    public boolean isNoPermission() {
        return this.f17715a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f17715a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17715a;
    }

    public String toString() {
        return C2820b.f17719b.serialize((C2820b) this, false);
    }

    public String toStringMultiline() {
        return C2820b.f17719b.serialize((C2820b) this, true);
    }
}
