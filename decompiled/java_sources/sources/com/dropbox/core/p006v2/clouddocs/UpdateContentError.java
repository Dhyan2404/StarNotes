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
public enum UpdateContentError {
    INVALID_DOC_ID,
    NOT_FOUND,
    PERMISSION_DENIED,
    OTHER,
    UPLOAD_SIZE_TOO_LARGE,
    CONFLICT,
    UNLOCKED;

    /* renamed from: com.dropbox.core.v2.clouddocs.UpdateContentError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2410a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16869a;

        static {
            int[] iArr = new int[UpdateContentError.values().length];
            f16869a = iArr;
            try {
                iArr[UpdateContentError.INVALID_DOC_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16869a[UpdateContentError.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16869a[UpdateContentError.PERMISSION_DENIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16869a[UpdateContentError.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16869a[UpdateContentError.UPLOAD_SIZE_TOO_LARGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16869a[UpdateContentError.CONFLICT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16869a[UpdateContentError.UNLOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.UpdateContentError$b */
    /* loaded from: classes4.dex */
    public static class C2411b extends UnionSerializer<UpdateContentError> {

        /* renamed from: b */
        public static final C2411b f16870b = new C2411b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UpdateContentError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UpdateContentError updateContentError;
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
            if ("invalid_doc_id".equals(readTag)) {
                updateContentError = UpdateContentError.INVALID_DOC_ID;
            } else if ("not_found".equals(readTag)) {
                updateContentError = UpdateContentError.NOT_FOUND;
            } else if ("permission_denied".equals(readTag)) {
                updateContentError = UpdateContentError.PERMISSION_DENIED;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                updateContentError = UpdateContentError.OTHER;
            } else if ("upload_size_too_large".equals(readTag)) {
                updateContentError = UpdateContentError.UPLOAD_SIZE_TOO_LARGE;
            } else if ("conflict".equals(readTag)) {
                updateContentError = UpdateContentError.CONFLICT;
            } else {
                if (!"unlocked".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                updateContentError = UpdateContentError.UNLOCKED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return updateContentError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UpdateContentError updateContentError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2410a.f16869a[updateContentError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("invalid_doc_id");
                    return;
                case 2:
                    jsonGenerator.writeString("not_found");
                    return;
                case 3:
                    jsonGenerator.writeString("permission_denied");
                    return;
                case 4:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 5:
                    jsonGenerator.writeString("upload_size_too_large");
                    return;
                case 6:
                    jsonGenerator.writeString("conflict");
                    return;
                case 7:
                    jsonGenerator.writeString("unlocked");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + updateContentError);
            }
        }
    }
}
