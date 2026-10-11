package com.dropbox.core.p006v2.account;

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
public enum SetProfilePhotoError {
    FILE_TYPE_ERROR,
    FILE_SIZE_ERROR,
    DIMENSION_ERROR,
    THUMBNAIL_ERROR,
    TRANSIENT_ERROR,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<SetProfilePhotoError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public SetProfilePhotoError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SetProfilePhotoError setProfilePhotoError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("file_type_error".equals(readTag)) {
                    setProfilePhotoError = SetProfilePhotoError.FILE_TYPE_ERROR;
                } else if ("file_size_error".equals(readTag)) {
                    setProfilePhotoError = SetProfilePhotoError.FILE_SIZE_ERROR;
                } else if ("dimension_error".equals(readTag)) {
                    setProfilePhotoError = SetProfilePhotoError.DIMENSION_ERROR;
                } else if ("thumbnail_error".equals(readTag)) {
                    setProfilePhotoError = SetProfilePhotoError.THUMBNAIL_ERROR;
                } else if ("transient_error".equals(readTag)) {
                    setProfilePhotoError = SetProfilePhotoError.TRANSIENT_ERROR;
                } else {
                    setProfilePhotoError = SetProfilePhotoError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return setProfilePhotoError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SetProfilePhotoError setProfilePhotoError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2367a.f16792a[setProfilePhotoError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("file_type_error");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("file_size_error");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("dimension_error");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("thumbnail_error");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("transient_error");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.account.SetProfilePhotoError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2367a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16792a;

        static {
            int[] iArr = new int[SetProfilePhotoError.values().length];
            f16792a = iArr;
            try {
                iArr[SetProfilePhotoError.FILE_TYPE_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16792a[SetProfilePhotoError.FILE_SIZE_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16792a[SetProfilePhotoError.DIMENSION_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16792a[SetProfilePhotoError.THUMBNAIL_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16792a[SetProfilePhotoError.TRANSIENT_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }
}
