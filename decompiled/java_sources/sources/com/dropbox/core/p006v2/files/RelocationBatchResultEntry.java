package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Metadata;
import com.dropbox.core.p006v2.files.RelocationBatchErrorEntry;
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
public final class RelocationBatchResultEntry {
    public static final RelocationBatchResultEntry OTHER = new RelocationBatchResultEntry().m10974c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17326a;

    /* renamed from: b */
    public Metadata f17327b;

    /* renamed from: c */
    public RelocationBatchErrorEntry f17328c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        FAILURE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchResultEntry$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2621a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17329a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17329a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17329a[Tag.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17329a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchResultEntry$b */
    /* loaded from: classes4.dex */
    public static class C2622b extends UnionSerializer<RelocationBatchResultEntry> {

        /* renamed from: b */
        public static final C2622b f17330b = new C2622b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationBatchResultEntry deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelocationBatchResultEntry relocationBatchResultEntry;
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
                StoneSerializer.expectField(FirebaseAnalytics.Param.SUCCESS, jsonParser);
                relocationBatchResultEntry = RelocationBatchResultEntry.success(Metadata.C2596a.f17264b.deserialize(jsonParser));
            } else if ("failure".equals(readTag)) {
                StoneSerializer.expectField("failure", jsonParser);
                relocationBatchResultEntry = RelocationBatchResultEntry.failure(RelocationBatchErrorEntry.C2614b.f17313b.deserialize(jsonParser));
            } else {
                relocationBatchResultEntry = RelocationBatchResultEntry.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return relocationBatchResultEntry;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationBatchResultEntry relocationBatchResultEntry, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2621a.f17329a[relocationBatchResultEntry.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.SUCCESS);
                Metadata.C2596a.f17264b.serialize((Metadata.C2596a) relocationBatchResultEntry.f17327b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("failure", jsonGenerator);
            jsonGenerator.writeFieldName("failure");
            RelocationBatchErrorEntry.C2614b.f17313b.serialize(relocationBatchResultEntry.f17328c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static RelocationBatchResultEntry failure(RelocationBatchErrorEntry relocationBatchErrorEntry) {
        if (relocationBatchErrorEntry != null) {
            return new RelocationBatchResultEntry().m10975d(Tag.FAILURE, relocationBatchErrorEntry);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RelocationBatchResultEntry success(Metadata metadata) {
        if (metadata != null) {
            return new RelocationBatchResultEntry().m10976e(Tag.SUCCESS, metadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final RelocationBatchResultEntry m10974c(Tag tag) {
        RelocationBatchResultEntry relocationBatchResultEntry = new RelocationBatchResultEntry();
        relocationBatchResultEntry.f17326a = tag;
        return relocationBatchResultEntry;
    }

    /* renamed from: d */
    public final RelocationBatchResultEntry m10975d(Tag tag, RelocationBatchErrorEntry relocationBatchErrorEntry) {
        RelocationBatchResultEntry relocationBatchResultEntry = new RelocationBatchResultEntry();
        relocationBatchResultEntry.f17326a = tag;
        relocationBatchResultEntry.f17328c = relocationBatchErrorEntry;
        return relocationBatchResultEntry;
    }

    /* renamed from: e */
    public final RelocationBatchResultEntry m10976e(Tag tag, Metadata metadata) {
        RelocationBatchResultEntry relocationBatchResultEntry = new RelocationBatchResultEntry();
        relocationBatchResultEntry.f17326a = tag;
        relocationBatchResultEntry.f17327b = metadata;
        return relocationBatchResultEntry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationBatchResultEntry)) {
            return false;
        }
        RelocationBatchResultEntry relocationBatchResultEntry = (RelocationBatchResultEntry) obj;
        Tag tag = this.f17326a;
        if (tag != relocationBatchResultEntry.f17326a) {
            return false;
        }
        int i = C2621a.f17329a[tag.ordinal()];
        if (i == 1) {
            Metadata metadata = this.f17327b;
            Metadata metadata2 = relocationBatchResultEntry.f17327b;
            return metadata == metadata2 || metadata.equals(metadata2);
        }
        if (i != 2) {
            return i == 3;
        }
        RelocationBatchErrorEntry relocationBatchErrorEntry = this.f17328c;
        RelocationBatchErrorEntry relocationBatchErrorEntry2 = relocationBatchResultEntry.f17328c;
        return relocationBatchErrorEntry == relocationBatchErrorEntry2 || relocationBatchErrorEntry.equals(relocationBatchErrorEntry2);
    }

    public RelocationBatchErrorEntry getFailureValue() {
        if (this.f17326a == Tag.FAILURE) {
            return this.f17328c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this.f17326a.name());
    }

    public Metadata getSuccessValue() {
        if (this.f17326a == Tag.SUCCESS) {
            return this.f17327b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f17326a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17326a, this.f17327b, this.f17328c});
    }

    public boolean isFailure() {
        return this.f17326a == Tag.FAILURE;
    }

    public boolean isOther() {
        return this.f17326a == Tag.OTHER;
    }

    public boolean isSuccess() {
        return this.f17326a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f17326a;
    }

    public String toString() {
        return C2622b.f17330b.serialize((C2622b) this, false);
    }

    public String toStringMultiline() {
        return C2622b.f17330b.serialize((C2622b) this, true);
    }
}
