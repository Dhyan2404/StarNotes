package com.dropbox.core.p006v2.files;

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

/* loaded from: classes4.dex */
public enum GetThumbnailBatchError {
    TOO_MANY_FILES,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.GetThumbnailBatchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2560a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17186a;

        static {
            int[] iArr = new int[GetThumbnailBatchError.values().length];
            f17186a = iArr;
            try {
                iArr[GetThumbnailBatchError.TOO_MANY_FILES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.GetThumbnailBatchError$b */
    /* loaded from: classes4.dex */
    public static class C2561b extends UnionSerializer<GetThumbnailBatchError> {

        /* renamed from: b */
        public static final C2561b f17187b = new C2561b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetThumbnailBatchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GetThumbnailBatchError getThumbnailBatchError = "too_many_files".equals(readTag) ? GetThumbnailBatchError.TOO_MANY_FILES : GetThumbnailBatchError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getThumbnailBatchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetThumbnailBatchError getThumbnailBatchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2560a.f17186a[getThumbnailBatchError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }
}
