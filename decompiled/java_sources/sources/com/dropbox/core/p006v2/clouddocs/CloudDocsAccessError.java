package com.dropbox.core.p006v2.clouddocs;

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
public enum CloudDocsAccessError {
    INVALID_DOC_ID,
    NOT_FOUND,
    PERMISSION_DENIED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.clouddocs.CloudDocsAccessError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2385a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16828a;

        static {
            int[] iArr = new int[CloudDocsAccessError.values().length];
            f16828a = iArr;
            try {
                iArr[CloudDocsAccessError.INVALID_DOC_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16828a[CloudDocsAccessError.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16828a[CloudDocsAccessError.PERMISSION_DENIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.CloudDocsAccessError$b */
    /* loaded from: classes4.dex */
    public static class C2386b extends UnionSerializer<CloudDocsAccessError> {

        /* renamed from: b */
        public static final C2386b f16829b = new C2386b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CloudDocsAccessError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            CloudDocsAccessError cloudDocsAccessError = "invalid_doc_id".equals(readTag) ? CloudDocsAccessError.INVALID_DOC_ID : "not_found".equals(readTag) ? CloudDocsAccessError.NOT_FOUND : "permission_denied".equals(readTag) ? CloudDocsAccessError.PERMISSION_DENIED : CloudDocsAccessError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return cloudDocsAccessError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CloudDocsAccessError cloudDocsAccessError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2385a.f16828a[cloudDocsAccessError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_doc_id");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("not_found");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("permission_denied");
            }
        }
    }
}
