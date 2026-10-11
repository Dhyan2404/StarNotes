package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.DeleteBatchResultData;
import com.dropbox.core.p006v2.files.DeleteError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
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
public final class DeleteBatchResultEntry {

    /* renamed from: a */
    public Tag f17107a;

    /* renamed from: b */
    public DeleteBatchResultData f17108b;

    /* renamed from: c */
    public DeleteError f17109c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        FAILURE
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteBatchResultEntry$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2522a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17110a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17110a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17110a[Tag.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteBatchResultEntry$b */
    /* loaded from: classes4.dex */
    public static class C2523b extends UnionSerializer<DeleteBatchResultEntry> {

        /* renamed from: b */
        public static final C2523b f17111b = new C2523b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteBatchResultEntry deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DeleteBatchResultEntry failure;
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
                failure = DeleteBatchResultEntry.success(DeleteBatchResultData.C2521a.f17106b.deserialize(jsonParser, true));
            } else {
                if (!"failure".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failure", jsonParser);
                failure = DeleteBatchResultEntry.failure(DeleteError.C2525b.f17116b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failure;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteBatchResultEntry deleteBatchResultEntry, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2522a.f17110a[deleteBatchResultEntry.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                DeleteBatchResultData.C2521a.f17106b.serialize(deleteBatchResultEntry.f17108b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + deleteBatchResultEntry.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failure", jsonGenerator);
            jsonGenerator.writeFieldName("failure");
            DeleteError.C2525b.f17116b.serialize(deleteBatchResultEntry.f17109c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static DeleteBatchResultEntry failure(DeleteError deleteError) {
        if (deleteError != null) {
            return new DeleteBatchResultEntry().m10710d(Tag.FAILURE, deleteError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static DeleteBatchResultEntry success(DeleteBatchResultData deleteBatchResultData) {
        if (deleteBatchResultData != null) {
            return new DeleteBatchResultEntry().m10711e(Tag.SUCCESS, deleteBatchResultData);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final DeleteBatchResultEntry m10709c(Tag tag) {
        DeleteBatchResultEntry deleteBatchResultEntry = new DeleteBatchResultEntry();
        deleteBatchResultEntry.f17107a = tag;
        return deleteBatchResultEntry;
    }

    /* renamed from: d */
    public final DeleteBatchResultEntry m10710d(Tag tag, DeleteError deleteError) {
        DeleteBatchResultEntry deleteBatchResultEntry = new DeleteBatchResultEntry();
        deleteBatchResultEntry.f17107a = tag;
        deleteBatchResultEntry.f17109c = deleteError;
        return deleteBatchResultEntry;
    }

    /* renamed from: e */
    public final DeleteBatchResultEntry m10711e(Tag tag, DeleteBatchResultData deleteBatchResultData) {
        DeleteBatchResultEntry deleteBatchResultEntry = new DeleteBatchResultEntry();
        deleteBatchResultEntry.f17107a = tag;
        deleteBatchResultEntry.f17108b = deleteBatchResultData;
        return deleteBatchResultEntry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteBatchResultEntry)) {
            return false;
        }
        DeleteBatchResultEntry deleteBatchResultEntry = (DeleteBatchResultEntry) obj;
        Tag tag = this.f17107a;
        if (tag != deleteBatchResultEntry.f17107a) {
            return false;
        }
        int i = C2522a.f17110a[tag.ordinal()];
        if (i == 1) {
            DeleteBatchResultData deleteBatchResultData = this.f17108b;
            DeleteBatchResultData deleteBatchResultData2 = deleteBatchResultEntry.f17108b;
            return deleteBatchResultData == deleteBatchResultData2 || deleteBatchResultData.equals(deleteBatchResultData2);
        }
        if (i != 2) {
            return false;
        }
        DeleteError deleteError = this.f17109c;
        DeleteError deleteError2 = deleteBatchResultEntry.f17109c;
        return deleteError == deleteError2 || deleteError.equals(deleteError2);
    }

    public DeleteError getFailureValue() {
        if (this.f17107a == Tag.FAILURE) {
            return this.f17109c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this.f17107a.name());
    }

    public DeleteBatchResultData getSuccessValue() {
        if (this.f17107a == Tag.SUCCESS) {
            return this.f17108b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f17107a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17107a, this.f17108b, this.f17109c});
    }

    public boolean isFailure() {
        return this.f17107a == Tag.FAILURE;
    }

    public boolean isSuccess() {
        return this.f17107a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f17107a;
    }

    public String toString() {
        return C2523b.f17111b.serialize((C2523b) this, false);
    }

    public String toStringMultiline() {
        return C2523b.f17111b.serialize((C2523b) this, true);
    }
}
