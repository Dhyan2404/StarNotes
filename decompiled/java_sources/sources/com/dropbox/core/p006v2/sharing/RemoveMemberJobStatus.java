package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.MemberAccessLevelResult;
import com.dropbox.core.p006v2.sharing.RemoveFolderMemberError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class RemoveMemberJobStatus {
    public static final RemoveMemberJobStatus IN_PROGRESS = new RemoveMemberJobStatus().m11837c(Tag.IN_PROGRESS);

    /* renamed from: a */
    public Tag f17910a;

    /* renamed from: b */
    public MemberAccessLevelResult f17911b;

    /* renamed from: c */
    public RemoveFolderMemberError f17912c;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    /* renamed from: com.dropbox.core.v2.sharing.RemoveMemberJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2916a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17913a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17913a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17913a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17913a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.RemoveMemberJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2917b extends UnionSerializer<RemoveMemberJobStatus> {

        /* renamed from: b */
        public static final C2917b f17914b = new C2917b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RemoveMemberJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RemoveMemberJobStatus failed;
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
            if ("in_progress".equals(readTag)) {
                failed = RemoveMemberJobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                failed = RemoveMemberJobStatus.complete(MemberAccessLevelResult.C2891a.f17864b.deserialize(jsonParser, true));
            } else {
                if (!"failed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failed", jsonParser);
                failed = RemoveMemberJobStatus.failed(RemoveFolderMemberError.C2915b.f17909b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RemoveMemberJobStatus removeMemberJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2916a.f17913a[removeMemberJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("complete", jsonGenerator);
                MemberAccessLevelResult.C2891a.f17864b.serialize(removeMemberJobStatus.f17911b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + removeMemberJobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failed", jsonGenerator);
            jsonGenerator.writeFieldName("failed");
            RemoveFolderMemberError.C2915b.f17909b.serialize(removeMemberJobStatus.f17912c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static RemoveMemberJobStatus complete(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult != null) {
            return new RemoveMemberJobStatus().m11838d(Tag.COMPLETE, memberAccessLevelResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RemoveMemberJobStatus failed(RemoveFolderMemberError removeFolderMemberError) {
        if (removeFolderMemberError != null) {
            return new RemoveMemberJobStatus().m11839e(Tag.FAILED, removeFolderMemberError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final RemoveMemberJobStatus m11837c(Tag tag) {
        RemoveMemberJobStatus removeMemberJobStatus = new RemoveMemberJobStatus();
        removeMemberJobStatus.f17910a = tag;
        return removeMemberJobStatus;
    }

    /* renamed from: d */
    public final RemoveMemberJobStatus m11838d(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        RemoveMemberJobStatus removeMemberJobStatus = new RemoveMemberJobStatus();
        removeMemberJobStatus.f17910a = tag;
        removeMemberJobStatus.f17911b = memberAccessLevelResult;
        return removeMemberJobStatus;
    }

    /* renamed from: e */
    public final RemoveMemberJobStatus m11839e(Tag tag, RemoveFolderMemberError removeFolderMemberError) {
        RemoveMemberJobStatus removeMemberJobStatus = new RemoveMemberJobStatus();
        removeMemberJobStatus.f17910a = tag;
        removeMemberJobStatus.f17912c = removeFolderMemberError;
        return removeMemberJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RemoveMemberJobStatus)) {
            return false;
        }
        RemoveMemberJobStatus removeMemberJobStatus = (RemoveMemberJobStatus) obj;
        Tag tag = this.f17910a;
        if (tag != removeMemberJobStatus.f17910a) {
            return false;
        }
        int i = C2916a.f17913a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            MemberAccessLevelResult memberAccessLevelResult = this.f17911b;
            MemberAccessLevelResult memberAccessLevelResult2 = removeMemberJobStatus.f17911b;
            return memberAccessLevelResult == memberAccessLevelResult2 || memberAccessLevelResult.equals(memberAccessLevelResult2);
        }
        if (i != 3) {
            return false;
        }
        RemoveFolderMemberError removeFolderMemberError = this.f17912c;
        RemoveFolderMemberError removeFolderMemberError2 = removeMemberJobStatus.f17912c;
        return removeFolderMemberError == removeFolderMemberError2 || removeFolderMemberError.equals(removeFolderMemberError2);
    }

    public MemberAccessLevelResult getCompleteValue() {
        if (this.f17910a == Tag.COMPLETE) {
            return this.f17911b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17910a.name());
    }

    public RemoveFolderMemberError getFailedValue() {
        if (this.f17910a == Tag.FAILED) {
            return this.f17912c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f17910a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17910a, this.f17911b, this.f17912c});
    }

    public boolean isComplete() {
        return this.f17910a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f17910a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f17910a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f17910a;
    }

    public String toString() {
        return C2917b.f17914b.serialize((C2917b) this, false);
    }

    public String toStringMultiline() {
        return C2917b.f17914b.serialize((C2917b) this, true);
    }
}
