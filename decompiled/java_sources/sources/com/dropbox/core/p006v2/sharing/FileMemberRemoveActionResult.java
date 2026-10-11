package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.FileMemberActionError;
import com.dropbox.core.p006v2.sharing.MemberAccessLevelResult;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class FileMemberRemoveActionResult {
    public static final FileMemberRemoveActionResult OTHER = new FileMemberRemoveActionResult().m11585c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17726a;

    /* renamed from: b */
    public MemberAccessLevelResult f17727b;

    /* renamed from: c */
    public FileMemberActionError f17728c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        MEMBER_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.FileMemberRemoveActionResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2824a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17729a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17729a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17729a[Tag.MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17729a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.FileMemberRemoveActionResult$b */
    /* loaded from: classes4.dex */
    public static class C2825b extends UnionSerializer<FileMemberRemoveActionResult> {

        /* renamed from: b */
        public static final C2825b f17730b = new C2825b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileMemberRemoveActionResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            FileMemberRemoveActionResult fileMemberRemoveActionResult;
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
            if (FirebaseAnalytics.Param.SUCCESS.equals(readTag)) {
                fileMemberRemoveActionResult = FileMemberRemoveActionResult.success(MemberAccessLevelResult.C2891a.f17864b.deserialize(jsonParser, true));
            } else if ("member_error".equals(readTag)) {
                StoneSerializer.expectField("member_error", jsonParser);
                fileMemberRemoveActionResult = FileMemberRemoveActionResult.memberError(FileMemberActionError.C2820b.f17719b.deserialize(jsonParser));
            } else {
                fileMemberRemoveActionResult = FileMemberRemoveActionResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fileMemberRemoveActionResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileMemberRemoveActionResult fileMemberRemoveActionResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2824a.f17729a[fileMemberRemoveActionResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                MemberAccessLevelResult.C2891a.f17864b.serialize(fileMemberRemoveActionResult.f17727b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("member_error", jsonGenerator);
            jsonGenerator.writeFieldName("member_error");
            FileMemberActionError.C2820b.f17719b.serialize(fileMemberRemoveActionResult.f17728c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static FileMemberRemoveActionResult memberError(FileMemberActionError fileMemberActionError) {
        if (fileMemberActionError != null) {
            return new FileMemberRemoveActionResult().m11586d(Tag.MEMBER_ERROR, fileMemberActionError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FileMemberRemoveActionResult success(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult != null) {
            return new FileMemberRemoveActionResult().m11587e(Tag.SUCCESS, memberAccessLevelResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final FileMemberRemoveActionResult m11585c(Tag tag) {
        FileMemberRemoveActionResult fileMemberRemoveActionResult = new FileMemberRemoveActionResult();
        fileMemberRemoveActionResult.f17726a = tag;
        return fileMemberRemoveActionResult;
    }

    /* renamed from: d */
    public final FileMemberRemoveActionResult m11586d(Tag tag, FileMemberActionError fileMemberActionError) {
        FileMemberRemoveActionResult fileMemberRemoveActionResult = new FileMemberRemoveActionResult();
        fileMemberRemoveActionResult.f17726a = tag;
        fileMemberRemoveActionResult.f17728c = fileMemberActionError;
        return fileMemberRemoveActionResult;
    }

    /* renamed from: e */
    public final FileMemberRemoveActionResult m11587e(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        FileMemberRemoveActionResult fileMemberRemoveActionResult = new FileMemberRemoveActionResult();
        fileMemberRemoveActionResult.f17726a = tag;
        fileMemberRemoveActionResult.f17727b = memberAccessLevelResult;
        return fileMemberRemoveActionResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FileMemberRemoveActionResult)) {
            return false;
        }
        FileMemberRemoveActionResult fileMemberRemoveActionResult = (FileMemberRemoveActionResult) obj;
        Tag tag = this.f17726a;
        if (tag != fileMemberRemoveActionResult.f17726a) {
            return false;
        }
        int i = C2824a.f17729a[tag.ordinal()];
        if (i == 1) {
            MemberAccessLevelResult memberAccessLevelResult = this.f17727b;
            MemberAccessLevelResult memberAccessLevelResult2 = fileMemberRemoveActionResult.f17727b;
            return memberAccessLevelResult == memberAccessLevelResult2 || memberAccessLevelResult.equals(memberAccessLevelResult2);
        }
        if (i != 2) {
            return i == 3;
        }
        FileMemberActionError fileMemberActionError = this.f17728c;
        FileMemberActionError fileMemberActionError2 = fileMemberRemoveActionResult.f17728c;
        return fileMemberActionError == fileMemberActionError2 || fileMemberActionError.equals(fileMemberActionError2);
    }

    public FileMemberActionError getMemberErrorValue() {
        if (this.f17726a == Tag.MEMBER_ERROR) {
            return this.f17728c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ERROR, but was Tag." + this.f17726a.name());
    }

    public MemberAccessLevelResult getSuccessValue() {
        if (this.f17726a == Tag.SUCCESS) {
            return this.f17727b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f17726a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17726a, this.f17727b, this.f17728c});
    }

    public boolean isMemberError() {
        return this.f17726a == Tag.MEMBER_ERROR;
    }

    public boolean isOther() {
        return this.f17726a == Tag.OTHER;
    }

    public boolean isSuccess() {
        return this.f17726a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f17726a;
    }

    public String toString() {
        return C2825b.f17730b.serialize((C2825b) this, false);
    }

    public String toStringMultiline() {
        return C2825b.f17730b.serialize((C2825b) this, true);
    }
}
