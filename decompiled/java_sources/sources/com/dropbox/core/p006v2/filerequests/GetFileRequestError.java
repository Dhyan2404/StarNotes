package com.dropbox.core.p006v2.filerequests;

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
public enum GetFileRequestError {
    DISABLED_FOR_TEAM,
    OTHER,
    NOT_FOUND,
    NOT_A_FOLDER,
    APP_LACKS_ACCESS,
    NO_PERMISSION,
    EMAIL_UNVERIFIED,
    VALIDATION_ERROR;

    /* renamed from: com.dropbox.core.v2.filerequests.GetFileRequestError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2473a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16998a;

        static {
            int[] iArr = new int[GetFileRequestError.values().length];
            f16998a = iArr;
            try {
                iArr[GetFileRequestError.DISABLED_FOR_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16998a[GetFileRequestError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16998a[GetFileRequestError.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16998a[GetFileRequestError.NOT_A_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16998a[GetFileRequestError.APP_LACKS_ACCESS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16998a[GetFileRequestError.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16998a[GetFileRequestError.EMAIL_UNVERIFIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16998a[GetFileRequestError.VALIDATION_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.GetFileRequestError$b */
    /* loaded from: classes4.dex */
    public static class C2474b extends UnionSerializer<GetFileRequestError> {

        /* renamed from: b */
        public static final C2474b f16999b = new C2474b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetFileRequestError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetFileRequestError getFileRequestError;
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
            if ("disabled_for_team".equals(readTag)) {
                getFileRequestError = GetFileRequestError.DISABLED_FOR_TEAM;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                getFileRequestError = GetFileRequestError.OTHER;
            } else if ("not_found".equals(readTag)) {
                getFileRequestError = GetFileRequestError.NOT_FOUND;
            } else if ("not_a_folder".equals(readTag)) {
                getFileRequestError = GetFileRequestError.NOT_A_FOLDER;
            } else if ("app_lacks_access".equals(readTag)) {
                getFileRequestError = GetFileRequestError.APP_LACKS_ACCESS;
            } else if ("no_permission".equals(readTag)) {
                getFileRequestError = GetFileRequestError.NO_PERMISSION;
            } else if ("email_unverified".equals(readTag)) {
                getFileRequestError = GetFileRequestError.EMAIL_UNVERIFIED;
            } else {
                if (!"validation_error".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                getFileRequestError = GetFileRequestError.VALIDATION_ERROR;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getFileRequestError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetFileRequestError getFileRequestError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2473a.f16998a[getFileRequestError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("disabled_for_team");
                    return;
                case 2:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 3:
                    jsonGenerator.writeString("not_found");
                    return;
                case 4:
                    jsonGenerator.writeString("not_a_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("app_lacks_access");
                    return;
                case 6:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 7:
                    jsonGenerator.writeString("email_unverified");
                    return;
                case 8:
                    jsonGenerator.writeString("validation_error");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + getFileRequestError);
            }
        }
    }
}
