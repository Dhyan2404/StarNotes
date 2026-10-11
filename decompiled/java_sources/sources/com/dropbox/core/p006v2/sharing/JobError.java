package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.RelinquishFolderMembershipError;
import com.dropbox.core.p006v2.sharing.RemoveFolderMemberError;
import com.dropbox.core.p006v2.sharing.UnshareFolderError;
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
public final class JobError {
    public static final JobError OTHER = new JobError().m11655d(Tag.OTHER);

    /* renamed from: a */
    public Tag f17771a;

    /* renamed from: b */
    public UnshareFolderError f17772b;

    /* renamed from: c */
    public RemoveFolderMemberError f17773c;

    /* renamed from: d */
    public RelinquishFolderMembershipError f17774d;

    /* loaded from: classes4.dex */
    public enum Tag {
        UNSHARE_FOLDER_ERROR,
        REMOVE_FOLDER_MEMBER_ERROR,
        RELINQUISH_FOLDER_MEMBERSHIP_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.JobError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2849a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17775a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17775a = iArr;
            try {
                iArr[Tag.UNSHARE_FOLDER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17775a[Tag.REMOVE_FOLDER_MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17775a[Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17775a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.JobError$b */
    /* loaded from: classes4.dex */
    public static class C2850b extends UnionSerializer<JobError> {

        /* renamed from: b */
        public static final C2850b f17776b = new C2850b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public JobError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            JobError jobError;
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
            if ("unshare_folder_error".equals(readTag)) {
                StoneSerializer.expectField("unshare_folder_error", jsonParser);
                jobError = JobError.unshareFolderError(UnshareFolderError.C2972b.f18009b.deserialize(jsonParser));
            } else if ("remove_folder_member_error".equals(readTag)) {
                StoneSerializer.expectField("remove_folder_member_error", jsonParser);
                jobError = JobError.removeFolderMemberError(RemoveFolderMemberError.C2915b.f17909b.deserialize(jsonParser));
            } else if ("relinquish_folder_membership_error".equals(readTag)) {
                StoneSerializer.expectField("relinquish_folder_membership_error", jsonParser);
                jobError = JobError.relinquishFolderMembershipError(RelinquishFolderMembershipError.C2911b.f17898b.deserialize(jsonParser));
            } else {
                jobError = JobError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return jobError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(JobError jobError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2849a.f17775a[jobError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("unshare_folder_error", jsonGenerator);
                jsonGenerator.writeFieldName("unshare_folder_error");
                UnshareFolderError.C2972b.f18009b.serialize(jobError.f17772b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("remove_folder_member_error", jsonGenerator);
                jsonGenerator.writeFieldName("remove_folder_member_error");
                RemoveFolderMemberError.C2915b.f17909b.serialize(jobError.f17773c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("relinquish_folder_membership_error", jsonGenerator);
            jsonGenerator.writeFieldName("relinquish_folder_membership_error");
            RelinquishFolderMembershipError.C2911b.f17898b.serialize(jobError.f17774d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static JobError relinquishFolderMembershipError(RelinquishFolderMembershipError relinquishFolderMembershipError) {
        if (relinquishFolderMembershipError != null) {
            return new JobError().m11656e(Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, relinquishFolderMembershipError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static JobError removeFolderMemberError(RemoveFolderMemberError removeFolderMemberError) {
        if (removeFolderMemberError != null) {
            return new JobError().m11657f(Tag.REMOVE_FOLDER_MEMBER_ERROR, removeFolderMemberError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static JobError unshareFolderError(UnshareFolderError unshareFolderError) {
        if (unshareFolderError != null) {
            return new JobError().m11658g(Tag.UNSHARE_FOLDER_ERROR, unshareFolderError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final JobError m11655d(Tag tag) {
        JobError jobError = new JobError();
        jobError.f17771a = tag;
        return jobError;
    }

    /* renamed from: e */
    public final JobError m11656e(Tag tag, RelinquishFolderMembershipError relinquishFolderMembershipError) {
        JobError jobError = new JobError();
        jobError.f17771a = tag;
        jobError.f17774d = relinquishFolderMembershipError;
        return jobError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof JobError)) {
            return false;
        }
        JobError jobError = (JobError) obj;
        Tag tag = this.f17771a;
        if (tag != jobError.f17771a) {
            return false;
        }
        int i = C2849a.f17775a[tag.ordinal()];
        if (i == 1) {
            UnshareFolderError unshareFolderError = this.f17772b;
            UnshareFolderError unshareFolderError2 = jobError.f17772b;
            return unshareFolderError == unshareFolderError2 || unshareFolderError.equals(unshareFolderError2);
        }
        if (i == 2) {
            RemoveFolderMemberError removeFolderMemberError = this.f17773c;
            RemoveFolderMemberError removeFolderMemberError2 = jobError.f17773c;
            return removeFolderMemberError == removeFolderMemberError2 || removeFolderMemberError.equals(removeFolderMemberError2);
        }
        if (i != 3) {
            return i == 4;
        }
        RelinquishFolderMembershipError relinquishFolderMembershipError = this.f17774d;
        RelinquishFolderMembershipError relinquishFolderMembershipError2 = jobError.f17774d;
        return relinquishFolderMembershipError == relinquishFolderMembershipError2 || relinquishFolderMembershipError.equals(relinquishFolderMembershipError2);
    }

    /* renamed from: f */
    public final JobError m11657f(Tag tag, RemoveFolderMemberError removeFolderMemberError) {
        JobError jobError = new JobError();
        jobError.f17771a = tag;
        jobError.f17773c = removeFolderMemberError;
        return jobError;
    }

    /* renamed from: g */
    public final JobError m11658g(Tag tag, UnshareFolderError unshareFolderError) {
        JobError jobError = new JobError();
        jobError.f17771a = tag;
        jobError.f17772b = unshareFolderError;
        return jobError;
    }

    public RelinquishFolderMembershipError getRelinquishFolderMembershipErrorValue() {
        if (this.f17771a == Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR) {
            return this.f17774d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, but was Tag." + this.f17771a.name());
    }

    public RemoveFolderMemberError getRemoveFolderMemberErrorValue() {
        if (this.f17771a == Tag.REMOVE_FOLDER_MEMBER_ERROR) {
            return this.f17773c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.REMOVE_FOLDER_MEMBER_ERROR, but was Tag." + this.f17771a.name());
    }

    public UnshareFolderError getUnshareFolderErrorValue() {
        if (this.f17771a == Tag.UNSHARE_FOLDER_ERROR) {
            return this.f17772b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.UNSHARE_FOLDER_ERROR, but was Tag." + this.f17771a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17771a, this.f17772b, this.f17773c, this.f17774d});
    }

    public boolean isOther() {
        return this.f17771a == Tag.OTHER;
    }

    public boolean isRelinquishFolderMembershipError() {
        return this.f17771a == Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR;
    }

    public boolean isRemoveFolderMemberError() {
        return this.f17771a == Tag.REMOVE_FOLDER_MEMBER_ERROR;
    }

    public boolean isUnshareFolderError() {
        return this.f17771a == Tag.UNSHARE_FOLDER_ERROR;
    }

    public Tag tag() {
        return this.f17771a;
    }

    public String toString() {
        return C2850b.f17776b.serialize((C2850b) this, false);
    }

    public String toStringMultiline() {
        return C2850b.f17776b.serialize((C2850b) this, true);
    }
}
