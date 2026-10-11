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
public enum DeleteFileRequestError {
    DISABLED_FOR_TEAM,
    OTHER,
    NOT_FOUND,
    NOT_A_FOLDER,
    APP_LACKS_ACCESS,
    NO_PERMISSION,
    EMAIL_UNVERIFIED,
    VALIDATION_ERROR,
    FILE_REQUEST_OPEN;

    /* renamed from: com.dropbox.core.v2.filerequests.DeleteFileRequestError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2468a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16991a;

        static {
            int[] iArr = new int[DeleteFileRequestError.values().length];
            f16991a = iArr;
            try {
                iArr[DeleteFileRequestError.DISABLED_FOR_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16991a[DeleteFileRequestError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16991a[DeleteFileRequestError.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16991a[DeleteFileRequestError.NOT_A_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16991a[DeleteFileRequestError.APP_LACKS_ACCESS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16991a[DeleteFileRequestError.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16991a[DeleteFileRequestError.EMAIL_UNVERIFIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16991a[DeleteFileRequestError.VALIDATION_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16991a[DeleteFileRequestError.FILE_REQUEST_OPEN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.DeleteFileRequestError$b */
    /* loaded from: classes4.dex */
    public static class C2469b extends UnionSerializer<DeleteFileRequestError> {

        /* renamed from: b */
        public static final C2469b f16992b = new C2469b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteFileRequestError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DeleteFileRequestError deleteFileRequestError;
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
                deleteFileRequestError = DeleteFileRequestError.DISABLED_FOR_TEAM;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                deleteFileRequestError = DeleteFileRequestError.OTHER;
            } else if ("not_found".equals(readTag)) {
                deleteFileRequestError = DeleteFileRequestError.NOT_FOUND;
            } else if ("not_a_folder".equals(readTag)) {
                deleteFileRequestError = DeleteFileRequestError.NOT_A_FOLDER;
            } else if ("app_lacks_access".equals(readTag)) {
                deleteFileRequestError = DeleteFileRequestError.APP_LACKS_ACCESS;
            } else if ("no_permission".equals(readTag)) {
                deleteFileRequestError = DeleteFileRequestError.NO_PERMISSION;
            } else if ("email_unverified".equals(readTag)) {
                deleteFileRequestError = DeleteFileRequestError.EMAIL_UNVERIFIED;
            } else if ("validation_error".equals(readTag)) {
                deleteFileRequestError = DeleteFileRequestError.VALIDATION_ERROR;
            } else {
                if (!"file_request_open".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                deleteFileRequestError = DeleteFileRequestError.FILE_REQUEST_OPEN;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deleteFileRequestError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteFileRequestError deleteFileRequestError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2468a.f16991a[deleteFileRequestError.ordinal()]) {
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
                case 9:
                    jsonGenerator.writeString("file_request_open");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + deleteFileRequestError);
            }
        }
    }
}
