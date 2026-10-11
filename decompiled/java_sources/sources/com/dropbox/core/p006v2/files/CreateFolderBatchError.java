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
public enum CreateFolderBatchError {
    TOO_MANY_FILES,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2498a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17058a;

        static {
            int[] iArr = new int[CreateFolderBatchError.values().length];
            f17058a = iArr;
            try {
                iArr[CreateFolderBatchError.TOO_MANY_FILES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchError$b */
    /* loaded from: classes4.dex */
    public static class C2499b extends UnionSerializer<CreateFolderBatchError> {

        /* renamed from: b */
        public static final C2499b f17059b = new C2499b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFolderBatchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            CreateFolderBatchError createFolderBatchError = "too_many_files".equals(readTag) ? CreateFolderBatchError.TOO_MANY_FILES : CreateFolderBatchError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return createFolderBatchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFolderBatchError createFolderBatchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2498a.f17058a[createFolderBatchError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }
}
