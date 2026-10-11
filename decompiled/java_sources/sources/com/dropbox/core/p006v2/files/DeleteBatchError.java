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
public enum DeleteBatchError {
    TOO_MANY_WRITE_OPERATIONS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.DeleteBatchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2514a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17093a;

        static {
            int[] iArr = new int[DeleteBatchError.values().length];
            f17093a = iArr;
            try {
                iArr[DeleteBatchError.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteBatchError$b */
    /* loaded from: classes4.dex */
    public static class C2515b extends UnionSerializer<DeleteBatchError> {

        /* renamed from: b */
        public static final C2515b f17094b = new C2515b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteBatchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            DeleteBatchError deleteBatchError = "too_many_write_operations".equals(readTag) ? DeleteBatchError.TOO_MANY_WRITE_OPERATIONS : DeleteBatchError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deleteBatchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteBatchError deleteBatchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2514a.f17093a[deleteBatchError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_write_operations");
            }
        }
    }
}
