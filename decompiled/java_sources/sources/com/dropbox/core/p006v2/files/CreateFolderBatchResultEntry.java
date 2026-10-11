package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.CreateFolderEntryError;
import com.dropbox.core.p006v2.files.CreateFolderEntryResult;
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
public final class CreateFolderBatchResultEntry {

    /* renamed from: a */
    public Tag f17071a;

    /* renamed from: b */
    public CreateFolderEntryResult f17072b;

    /* renamed from: c */
    public CreateFolderEntryError f17073c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        FAILURE
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchResultEntry$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2505a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17074a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17074a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17074a[Tag.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchResultEntry$b */
    /* loaded from: classes4.dex */
    public static class C2506b extends UnionSerializer<CreateFolderBatchResultEntry> {

        /* renamed from: b */
        public static final C2506b f17075b = new C2506b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFolderBatchResultEntry deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            CreateFolderBatchResultEntry failure;
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
                failure = CreateFolderBatchResultEntry.success(CreateFolderEntryResult.C2509a.f17080b.deserialize(jsonParser, true));
            } else {
                if (!"failure".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failure", jsonParser);
                failure = CreateFolderBatchResultEntry.failure(CreateFolderEntryError.C2508b.f17079b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failure;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFolderBatchResultEntry createFolderBatchResultEntry, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2505a.f17074a[createFolderBatchResultEntry.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                CreateFolderEntryResult.C2509a.f17080b.serialize(createFolderBatchResultEntry.f17072b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + createFolderBatchResultEntry.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failure", jsonGenerator);
            jsonGenerator.writeFieldName("failure");
            CreateFolderEntryError.C2508b.f17079b.serialize(createFolderBatchResultEntry.f17073c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static CreateFolderBatchResultEntry failure(CreateFolderEntryError createFolderEntryError) {
        if (createFolderEntryError != null) {
            return new CreateFolderBatchResultEntry().m10605d(Tag.FAILURE, createFolderEntryError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static CreateFolderBatchResultEntry success(CreateFolderEntryResult createFolderEntryResult) {
        if (createFolderEntryResult != null) {
            return new CreateFolderBatchResultEntry().m10606e(Tag.SUCCESS, createFolderEntryResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final CreateFolderBatchResultEntry m10604c(Tag tag) {
        CreateFolderBatchResultEntry createFolderBatchResultEntry = new CreateFolderBatchResultEntry();
        createFolderBatchResultEntry.f17071a = tag;
        return createFolderBatchResultEntry;
    }

    /* renamed from: d */
    public final CreateFolderBatchResultEntry m10605d(Tag tag, CreateFolderEntryError createFolderEntryError) {
        CreateFolderBatchResultEntry createFolderBatchResultEntry = new CreateFolderBatchResultEntry();
        createFolderBatchResultEntry.f17071a = tag;
        createFolderBatchResultEntry.f17073c = createFolderEntryError;
        return createFolderBatchResultEntry;
    }

    /* renamed from: e */
    public final CreateFolderBatchResultEntry m10606e(Tag tag, CreateFolderEntryResult createFolderEntryResult) {
        CreateFolderBatchResultEntry createFolderBatchResultEntry = new CreateFolderBatchResultEntry();
        createFolderBatchResultEntry.f17071a = tag;
        createFolderBatchResultEntry.f17072b = createFolderEntryResult;
        return createFolderBatchResultEntry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateFolderBatchResultEntry)) {
            return false;
        }
        CreateFolderBatchResultEntry createFolderBatchResultEntry = (CreateFolderBatchResultEntry) obj;
        Tag tag = this.f17071a;
        if (tag != createFolderBatchResultEntry.f17071a) {
            return false;
        }
        int i = C2505a.f17074a[tag.ordinal()];
        if (i == 1) {
            CreateFolderEntryResult createFolderEntryResult = this.f17072b;
            CreateFolderEntryResult createFolderEntryResult2 = createFolderBatchResultEntry.f17072b;
            return createFolderEntryResult == createFolderEntryResult2 || createFolderEntryResult.equals(createFolderEntryResult2);
        }
        if (i != 2) {
            return false;
        }
        CreateFolderEntryError createFolderEntryError = this.f17073c;
        CreateFolderEntryError createFolderEntryError2 = createFolderBatchResultEntry.f17073c;
        return createFolderEntryError == createFolderEntryError2 || createFolderEntryError.equals(createFolderEntryError2);
    }

    public CreateFolderEntryError getFailureValue() {
        if (this.f17071a == Tag.FAILURE) {
            return this.f17073c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this.f17071a.name());
    }

    public CreateFolderEntryResult getSuccessValue() {
        if (this.f17071a == Tag.SUCCESS) {
            return this.f17072b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f17071a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17071a, this.f17072b, this.f17073c});
    }

    public boolean isFailure() {
        return this.f17071a == Tag.FAILURE;
    }

    public boolean isSuccess() {
        return this.f17071a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f17071a;
    }

    public String toString() {
        return C2506b.f17075b.serialize((C2506b) this, false);
    }

    public String toStringMultiline() {
        return C2506b.f17075b.serialize((C2506b) this, true);
    }
}
