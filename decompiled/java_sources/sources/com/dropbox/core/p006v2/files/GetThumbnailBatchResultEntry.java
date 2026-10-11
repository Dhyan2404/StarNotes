package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.GetThumbnailBatchResultData;
import com.dropbox.core.p006v2.files.ThumbnailError;
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
public final class GetThumbnailBatchResultEntry {
    public static final GetThumbnailBatchResultEntry OTHER = new GetThumbnailBatchResultEntry().m10801c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17190a;

    /* renamed from: b */
    public GetThumbnailBatchResultData f17191b;

    /* renamed from: c */
    public ThumbnailError f17192c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        FAILURE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.GetThumbnailBatchResultEntry$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2564a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17193a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17193a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17193a[Tag.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17193a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.GetThumbnailBatchResultEntry$b */
    /* loaded from: classes4.dex */
    public static class C2565b extends UnionSerializer<GetThumbnailBatchResultEntry> {

        /* renamed from: b */
        public static final C2565b f17194b = new C2565b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetThumbnailBatchResultEntry deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetThumbnailBatchResultEntry getThumbnailBatchResultEntry;
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
                getThumbnailBatchResultEntry = GetThumbnailBatchResultEntry.success(GetThumbnailBatchResultData.C2563a.f17189b.deserialize(jsonParser, true));
            } else if ("failure".equals(readTag)) {
                StoneSerializer.expectField("failure", jsonParser);
                getThumbnailBatchResultEntry = GetThumbnailBatchResultEntry.failure(ThumbnailError.C2667b.f17419b.deserialize(jsonParser));
            } else {
                getThumbnailBatchResultEntry = GetThumbnailBatchResultEntry.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getThumbnailBatchResultEntry;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetThumbnailBatchResultEntry getThumbnailBatchResultEntry, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2564a.f17193a[getThumbnailBatchResultEntry.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                GetThumbnailBatchResultData.C2563a.f17189b.serialize(getThumbnailBatchResultEntry.f17191b, jsonGenerator, true);
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
            ThumbnailError.C2667b.f17419b.serialize(getThumbnailBatchResultEntry.f17192c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GetThumbnailBatchResultEntry failure(ThumbnailError thumbnailError) {
        if (thumbnailError != null) {
            return new GetThumbnailBatchResultEntry().m10802d(Tag.FAILURE, thumbnailError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static GetThumbnailBatchResultEntry success(GetThumbnailBatchResultData getThumbnailBatchResultData) {
        if (getThumbnailBatchResultData != null) {
            return new GetThumbnailBatchResultEntry().m10803e(Tag.SUCCESS, getThumbnailBatchResultData);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final GetThumbnailBatchResultEntry m10801c(Tag tag) {
        GetThumbnailBatchResultEntry getThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
        getThumbnailBatchResultEntry.f17190a = tag;
        return getThumbnailBatchResultEntry;
    }

    /* renamed from: d */
    public final GetThumbnailBatchResultEntry m10802d(Tag tag, ThumbnailError thumbnailError) {
        GetThumbnailBatchResultEntry getThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
        getThumbnailBatchResultEntry.f17190a = tag;
        getThumbnailBatchResultEntry.f17192c = thumbnailError;
        return getThumbnailBatchResultEntry;
    }

    /* renamed from: e */
    public final GetThumbnailBatchResultEntry m10803e(Tag tag, GetThumbnailBatchResultData getThumbnailBatchResultData) {
        GetThumbnailBatchResultEntry getThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
        getThumbnailBatchResultEntry.f17190a = tag;
        getThumbnailBatchResultEntry.f17191b = getThumbnailBatchResultData;
        return getThumbnailBatchResultEntry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetThumbnailBatchResultEntry)) {
            return false;
        }
        GetThumbnailBatchResultEntry getThumbnailBatchResultEntry = (GetThumbnailBatchResultEntry) obj;
        Tag tag = this.f17190a;
        if (tag != getThumbnailBatchResultEntry.f17190a) {
            return false;
        }
        int i = C2564a.f17193a[tag.ordinal()];
        if (i == 1) {
            GetThumbnailBatchResultData getThumbnailBatchResultData = this.f17191b;
            GetThumbnailBatchResultData getThumbnailBatchResultData2 = getThumbnailBatchResultEntry.f17191b;
            return getThumbnailBatchResultData == getThumbnailBatchResultData2 || getThumbnailBatchResultData.equals(getThumbnailBatchResultData2);
        }
        if (i != 2) {
            return i == 3;
        }
        ThumbnailError thumbnailError = this.f17192c;
        ThumbnailError thumbnailError2 = getThumbnailBatchResultEntry.f17192c;
        return thumbnailError == thumbnailError2 || thumbnailError.equals(thumbnailError2);
    }

    public ThumbnailError getFailureValue() {
        if (this.f17190a == Tag.FAILURE) {
            return this.f17192c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this.f17190a.name());
    }

    public GetThumbnailBatchResultData getSuccessValue() {
        if (this.f17190a == Tag.SUCCESS) {
            return this.f17191b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f17190a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17190a, this.f17191b, this.f17192c});
    }

    public boolean isFailure() {
        return this.f17190a == Tag.FAILURE;
    }

    public boolean isOther() {
        return this.f17190a == Tag.OTHER;
    }

    public boolean isSuccess() {
        return this.f17190a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f17190a;
    }

    public String toString() {
        return C2565b.f17194b.serialize((C2565b) this, false);
    }

    public String toStringMultiline() {
        return C2565b.f17194b.serialize((C2565b) this, true);
    }
}
