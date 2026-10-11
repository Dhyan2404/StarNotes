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
public enum PaperDocUpdateError {
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    DOC_NOT_FOUND,
    CONTENT_MALFORMED,
    REVISION_MISMATCH,
    DOC_LENGTH_EXCEEDED,
    IMAGE_SIZE_EXCEEDED,
    DOC_ARCHIVED,
    DOC_DELETED;

    /* renamed from: com.dropbox.core.v2.paper.PaperDocUpdateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2766a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17608a;

        static {
            int[] iArr = new int[PaperDocUpdateError.values().length];
            f17608a = iArr;
            try {
                iArr[PaperDocUpdateError.INSUFFICIENT_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17608a[PaperDocUpdateError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17608a[PaperDocUpdateError.DOC_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17608a[PaperDocUpdateError.CONTENT_MALFORMED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17608a[PaperDocUpdateError.REVISION_MISMATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17608a[PaperDocUpdateError.DOC_LENGTH_EXCEEDED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17608a[PaperDocUpdateError.IMAGE_SIZE_EXCEEDED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17608a[PaperDocUpdateError.DOC_ARCHIVED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17608a[PaperDocUpdateError.DOC_DELETED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.PaperDocUpdateError$b */
    /* loaded from: classes4.dex */
    public static class C2767b extends UnionSerializer<PaperDocUpdateError> {

        /* renamed from: b */
        public static final C2767b f17609b = new C2767b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocUpdateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PaperDocUpdateError paperDocUpdateError;
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
                paperDocUpdateError = PaperDocUpdateError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                paperDocUpdateError = PaperDocUpdateError.OTHER;
            } else if ("doc_not_found".equals(readTag)) {
                paperDocUpdateError = PaperDocUpdateError.DOC_NOT_FOUND;
            } else if ("content_malformed".equals(readTag)) {
                paperDocUpdateError = PaperDocUpdateError.CONTENT_MALFORMED;
            } else if ("revision_mismatch".equals(readTag)) {
                paperDocUpdateError = PaperDocUpdateError.REVISION_MISMATCH;
            } else if ("doc_length_exceeded".equals(readTag)) {
                paperDocUpdateError = PaperDocUpdateError.DOC_LENGTH_EXCEEDED;
            } else if ("image_size_exceeded".equals(readTag)) {
                paperDocUpdateError = PaperDocUpdateError.IMAGE_SIZE_EXCEEDED;
            } else if ("doc_archived".equals(readTag)) {
                paperDocUpdateError = PaperDocUpdateError.DOC_ARCHIVED;
            } else {
                if (!"doc_deleted".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                paperDocUpdateError = PaperDocUpdateError.DOC_DELETED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperDocUpdateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocUpdateError paperDocUpdateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2766a.f17608a[paperDocUpdateError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("insufficient_permissions");
                    return;
                case 2:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 3:
                    jsonGenerator.writeString("doc_not_found");
                    return;
                case 4:
                    jsonGenerator.writeString("content_malformed");
                    return;
                case 5:
                    jsonGenerator.writeString("revision_mismatch");
                    return;
                case 6:
                    jsonGenerator.writeString("doc_length_exceeded");
                    return;
                case 7:
                    jsonGenerator.writeString("image_size_exceeded");
                    return;
                case 8:
                    jsonGenerator.writeString("doc_archived");
                    return;
                case 9:
                    jsonGenerator.writeString("doc_deleted");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + paperDocUpdateError);
            }
        }
    }
}
