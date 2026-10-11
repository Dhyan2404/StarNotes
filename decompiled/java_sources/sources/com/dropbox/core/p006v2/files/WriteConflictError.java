package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum WriteConflictError {
    FILE,
    FOLDER,
    FILE_ANCESTOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.WriteConflictError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2699a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17479a;

        static {
            int[] iArr = new int[WriteConflictError.values().length];
            f17479a = iArr;
            try {
                iArr[WriteConflictError.FILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17479a[WriteConflictError.FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17479a[WriteConflictError.FILE_ANCESTOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.WriteConflictError$b */
    /* loaded from: classes4.dex */
    public static class C2700b extends UnionSerializer<WriteConflictError> {

        /* renamed from: b */
        public static final C2700b f17480b = new C2700b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WriteConflictError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            WriteConflictError writeConflictError = "file".equals(readTag) ? WriteConflictError.FILE : Constant.FOLDER.equals(readTag) ? WriteConflictError.FOLDER : "file_ancestor".equals(readTag) ? WriteConflictError.FILE_ANCESTOR : WriteConflictError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return writeConflictError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WriteConflictError writeConflictError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2699a.f17479a[writeConflictError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("file");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constant.FOLDER);
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("file_ancestor");
            }
        }
    }
}
