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
public enum PaperDocCreateError {
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    CONTENT_MALFORMED,
    FOLDER_NOT_FOUND,
    DOC_LENGTH_EXCEEDED,
    IMAGE_SIZE_EXCEEDED;

    /* renamed from: com.dropbox.core.v2.paper.PaperDocCreateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2760a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17602a;

        static {
            int[] iArr = new int[PaperDocCreateError.values().length];
            f17602a = iArr;
            try {
                iArr[PaperDocCreateError.INSUFFICIENT_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17602a[PaperDocCreateError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17602a[PaperDocCreateError.CONTENT_MALFORMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17602a[PaperDocCreateError.FOLDER_NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17602a[PaperDocCreateError.DOC_LENGTH_EXCEEDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17602a[PaperDocCreateError.IMAGE_SIZE_EXCEEDED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.PaperDocCreateError$b */
    /* loaded from: classes4.dex */
    public static class C2761b extends UnionSerializer<PaperDocCreateError> {

        /* renamed from: b */
        public static final C2761b f17603b = new C2761b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocCreateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PaperDocCreateError paperDocCreateError;
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
                paperDocCreateError = PaperDocCreateError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                paperDocCreateError = PaperDocCreateError.OTHER;
            } else if ("content_malformed".equals(readTag)) {
                paperDocCreateError = PaperDocCreateError.CONTENT_MALFORMED;
            } else if ("folder_not_found".equals(readTag)) {
                paperDocCreateError = PaperDocCreateError.FOLDER_NOT_FOUND;
            } else if ("doc_length_exceeded".equals(readTag)) {
                paperDocCreateError = PaperDocCreateError.DOC_LENGTH_EXCEEDED;
            } else {
                if (!"image_size_exceeded".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                paperDocCreateError = PaperDocCreateError.IMAGE_SIZE_EXCEEDED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperDocCreateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocCreateError paperDocCreateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2760a.f17602a[paperDocCreateError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("insufficient_permissions");
                    return;
                case 2:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 3:
                    jsonGenerator.writeString("content_malformed");
                    return;
                case 4:
                    jsonGenerator.writeString("folder_not_found");
                    return;
                case 5:
                    jsonGenerator.writeString("doc_length_exceeded");
                    return;
                case 6:
                    jsonGenerator.writeString("image_size_exceeded");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + paperDocCreateError);
            }
        }
    }
}
