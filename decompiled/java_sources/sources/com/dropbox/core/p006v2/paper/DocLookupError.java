package com.dropbox.core.p006v2.paper;

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
public enum DocLookupError {
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    DOC_NOT_FOUND;

    /* renamed from: com.dropbox.core.v2.paper.DocLookupError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2732a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17552a;

        static {
            int[] iArr = new int[DocLookupError.values().length];
            f17552a = iArr;
            try {
                iArr[DocLookupError.INSUFFICIENT_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17552a[DocLookupError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17552a[DocLookupError.DOC_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.DocLookupError$b */
    /* loaded from: classes4.dex */
    public static class C2733b extends UnionSerializer<DocLookupError> {

        /* renamed from: b */
        public static final C2733b f17553b = new C2733b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DocLookupError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DocLookupError docLookupError;
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
            if ("insufficient_permissions".equals(readTag)) {
                docLookupError = DocLookupError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                docLookupError = DocLookupError.OTHER;
            } else {
                if (!"doc_not_found".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                docLookupError = DocLookupError.DOC_NOT_FOUND;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return docLookupError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DocLookupError docLookupError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2732a.f17552a[docLookupError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("insufficient_permissions");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("doc_not_found");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + docLookupError);
            }
        }
    }
}
