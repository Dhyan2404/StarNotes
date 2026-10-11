package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.MemberAccessLevelResult;
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
public final class SharedFolderMemberError {
    public static final SharedFolderMemberError INVALID_DROPBOX_ID = new SharedFolderMemberError().m11906b(Tag.INVALID_DROPBOX_ID);
    public static final SharedFolderMemberError NOT_A_MEMBER = new SharedFolderMemberError().m11906b(Tag.NOT_A_MEMBER);
    public static final SharedFolderMemberError OTHER = new SharedFolderMemberError().m11906b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17966a;

    /* renamed from: b */
    public MemberAccessLevelResult f17967b;

    /* loaded from: classes4.dex */
    public enum Tag {
        INVALID_DROPBOX_ID,
        NOT_A_MEMBER,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedFolderMemberError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2944a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17968a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17968a = iArr;
            try {
                iArr[Tag.INVALID_DROPBOX_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17968a[Tag.NOT_A_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17968a[Tag.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17968a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedFolderMemberError$b */
    /* loaded from: classes4.dex */
    public static class C2945b extends UnionSerializer<SharedFolderMemberError> {

        /* renamed from: b */
        public static final C2945b f17969b = new C2945b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderMemberError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedFolderMemberError noExplicitAccess = "invalid_dropbox_id".equals(readTag) ? SharedFolderMemberError.INVALID_DROPBOX_ID : "not_a_member".equals(readTag) ? SharedFolderMemberError.NOT_A_MEMBER : "no_explicit_access".equals(readTag) ? SharedFolderMemberError.noExplicitAccess(MemberAccessLevelResult.C2891a.f17864b.deserialize(jsonParser, true)) : SharedFolderMemberError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return noExplicitAccess;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderMemberError sharedFolderMemberError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2944a.f17968a[sharedFolderMemberError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_dropbox_id");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("not_a_member");
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("no_explicit_access", jsonGenerator);
            MemberAccessLevelResult.C2891a.f17864b.serialize(sharedFolderMemberError.f17967b, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static SharedFolderMemberError noExplicitAccess(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult != null) {
            return new SharedFolderMemberError().m11907c(Tag.NO_EXPLICIT_ACCESS, memberAccessLevelResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final SharedFolderMemberError m11906b(Tag tag) {
        SharedFolderMemberError sharedFolderMemberError = new SharedFolderMemberError();
        sharedFolderMemberError.f17966a = tag;
        return sharedFolderMemberError;
    }

    /* renamed from: c */
    public final SharedFolderMemberError m11907c(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        SharedFolderMemberError sharedFolderMemberError = new SharedFolderMemberError();
        sharedFolderMemberError.f17966a = tag;
        sharedFolderMemberError.f17967b = memberAccessLevelResult;
        return sharedFolderMemberError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SharedFolderMemberError)) {
            return false;
        }
        SharedFolderMemberError sharedFolderMemberError = (SharedFolderMemberError) obj;
        Tag tag = this.f17966a;
        if (tag != sharedFolderMemberError.f17966a) {
            return false;
        }
        int i = C2944a.f17968a[tag.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3) {
            return i == 4;
        }
        MemberAccessLevelResult memberAccessLevelResult = this.f17967b;
        MemberAccessLevelResult memberAccessLevelResult2 = sharedFolderMemberError.f17967b;
        return memberAccessLevelResult == memberAccessLevelResult2 || memberAccessLevelResult.equals(memberAccessLevelResult2);
    }

    public MemberAccessLevelResult getNoExplicitAccessValue() {
        if (this.f17966a == Tag.NO_EXPLICIT_ACCESS) {
            return this.f17967b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag." + this.f17966a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17966a, this.f17967b});
    }

    public boolean isInvalidDropboxId() {
        return this.f17966a == Tag.INVALID_DROPBOX_ID;
    }

    public boolean isNoExplicitAccess() {
        return this.f17966a == Tag.NO_EXPLICIT_ACCESS;
    }

    public boolean isNotAMember() {
        return this.f17966a == Tag.NOT_A_MEMBER;
    }

    public boolean isOther() {
        return this.f17966a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17966a;
    }

    public String toString() {
        return C2945b.f17969b.serialize((C2945b) this, false);
    }

    public String toStringMultiline() {
        return C2945b.f17969b.serialize((C2945b) this, true);
    }
}
