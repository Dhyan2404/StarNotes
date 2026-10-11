package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.FileMemberActionError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class FileMemberActionIndividualResult {

    /* renamed from: a */
    public Tag f17720a;

    /* renamed from: b */
    public AccessLevel f17721b;

    /* renamed from: c */
    public FileMemberActionError f17722c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        MEMBER_ERROR
    }

    /* renamed from: com.dropbox.core.v2.sharing.FileMemberActionIndividualResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2821a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17723a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17723a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17723a[Tag.MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.FileMemberActionIndividualResult$b */
    /* loaded from: classes4.dex */
    public static class C2822b extends UnionSerializer<FileMemberActionIndividualResult> {

        /* renamed from: b */
        public static final C2822b f17724b = new C2822b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileMemberActionIndividualResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            FileMemberActionIndividualResult memberError;
            AccessLevel accessLevel;
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
                if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                    StoneSerializer.expectField(FirebaseAnalytics.Param.SUCCESS, jsonParser);
                    accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    accessLevel = null;
                }
                memberError = accessLevel == null ? FileMemberActionIndividualResult.success() : FileMemberActionIndividualResult.success(accessLevel);
            } else {
                if (!"member_error".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("member_error", jsonParser);
                memberError = FileMemberActionIndividualResult.memberError(FileMemberActionError.C2820b.f17719b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return memberError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileMemberActionIndividualResult fileMemberActionIndividualResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2821a.f17723a[fileMemberActionIndividualResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.SUCCESS);
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize((StoneSerializer) fileMemberActionIndividualResult.f17721b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + fileMemberActionIndividualResult.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("member_error", jsonGenerator);
            jsonGenerator.writeFieldName("member_error");
            FileMemberActionError.C2820b.f17719b.serialize(fileMemberActionIndividualResult.f17722c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static FileMemberActionIndividualResult memberError(FileMemberActionError fileMemberActionError) {
        if (fileMemberActionError != null) {
            return new FileMemberActionIndividualResult().m11577d(Tag.MEMBER_ERROR, fileMemberActionError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FileMemberActionIndividualResult success(AccessLevel accessLevel) {
        return new FileMemberActionIndividualResult().m11578e(Tag.SUCCESS, accessLevel);
    }

    /* renamed from: c */
    public final FileMemberActionIndividualResult m11576c(Tag tag) {
        FileMemberActionIndividualResult fileMemberActionIndividualResult = new FileMemberActionIndividualResult();
        fileMemberActionIndividualResult.f17720a = tag;
        return fileMemberActionIndividualResult;
    }

    /* renamed from: d */
    public final FileMemberActionIndividualResult m11577d(Tag tag, FileMemberActionError fileMemberActionError) {
        FileMemberActionIndividualResult fileMemberActionIndividualResult = new FileMemberActionIndividualResult();
        fileMemberActionIndividualResult.f17720a = tag;
        fileMemberActionIndividualResult.f17722c = fileMemberActionError;
        return fileMemberActionIndividualResult;
    }

    /* renamed from: e */
    public final FileMemberActionIndividualResult m11578e(Tag tag, AccessLevel accessLevel) {
        FileMemberActionIndividualResult fileMemberActionIndividualResult = new FileMemberActionIndividualResult();
        fileMemberActionIndividualResult.f17720a = tag;
        fileMemberActionIndividualResult.f17721b = accessLevel;
        return fileMemberActionIndividualResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FileMemberActionIndividualResult)) {
            return false;
        }
        FileMemberActionIndividualResult fileMemberActionIndividualResult = (FileMemberActionIndividualResult) obj;
        Tag tag = this.f17720a;
        if (tag != fileMemberActionIndividualResult.f17720a) {
            return false;
        }
        int i = C2821a.f17723a[tag.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            FileMemberActionError fileMemberActionError = this.f17722c;
            FileMemberActionError fileMemberActionError2 = fileMemberActionIndividualResult.f17722c;
            return fileMemberActionError == fileMemberActionError2 || fileMemberActionError.equals(fileMemberActionError2);
        }
        AccessLevel accessLevel = this.f17721b;
        AccessLevel accessLevel2 = fileMemberActionIndividualResult.f17721b;
        if (accessLevel != accessLevel2) {
            return accessLevel != null && accessLevel.equals(accessLevel2);
        }
        return true;
    }

    public FileMemberActionError getMemberErrorValue() {
        if (this.f17720a == Tag.MEMBER_ERROR) {
            return this.f17722c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ERROR, but was Tag." + this.f17720a.name());
    }

    public AccessLevel getSuccessValue() {
        if (this.f17720a == Tag.SUCCESS) {
            return this.f17721b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f17720a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17720a, this.f17721b, this.f17722c});
    }

    public boolean isMemberError() {
        return this.f17720a == Tag.MEMBER_ERROR;
    }

    public boolean isSuccess() {
        return this.f17720a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f17720a;
    }

    public String toString() {
        return C2822b.f17724b.serialize((C2822b) this, false);
    }

    public String toStringMultiline() {
        return C2822b.f17724b.serialize((C2822b) this, true);
    }

    public static FileMemberActionIndividualResult success() {
        return success(null);
    }
}
