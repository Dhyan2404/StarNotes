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
public enum CreateFileRequestError {
    DISABLED_FOR_TEAM,
    OTHER,
    NOT_FOUND,
    NOT_A_FOLDER,
    APP_LACKS_ACCESS,
    NO_PERMISSION,
    EMAIL_UNVERIFIED,
    VALIDATION_ERROR,
    INVALID_LOCATION,
    RATE_LIMIT;

    /* renamed from: com.dropbox.core.v2.filerequests.CreateFileRequestError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2463a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16985a;

        static {
            int[] iArr = new int[CreateFileRequestError.values().length];
            f16985a = iArr;
            try {
                iArr[CreateFileRequestError.DISABLED_FOR_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16985a[CreateFileRequestError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16985a[CreateFileRequestError.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16985a[CreateFileRequestError.NOT_A_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16985a[CreateFileRequestError.APP_LACKS_ACCESS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16985a[CreateFileRequestError.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16985a[CreateFileRequestError.EMAIL_UNVERIFIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16985a[CreateFileRequestError.VALIDATION_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16985a[CreateFileRequestError.INVALID_LOCATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16985a[CreateFileRequestError.RATE_LIMIT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.CreateFileRequestError$b */
    /* loaded from: classes4.dex */
    public static class C2464b extends UnionSerializer<CreateFileRequestError> {

        /* renamed from: b */
        public static final C2464b f16986b = new C2464b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFileRequestError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            CreateFileRequestError createFileRequestError;
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
                createFileRequestError = CreateFileRequestError.DISABLED_FOR_TEAM;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                createFileRequestError = CreateFileRequestError.OTHER;
            } else if ("not_found".equals(readTag)) {
                createFileRequestError = CreateFileRequestError.NOT_FOUND;
            } else if ("not_a_folder".equals(readTag)) {
                createFileRequestError = CreateFileRequestError.NOT_A_FOLDER;
            } else if ("app_lacks_access".equals(readTag)) {
                createFileRequestError = CreateFileRequestError.APP_LACKS_ACCESS;
            } else if ("no_permission".equals(readTag)) {
                createFileRequestError = CreateFileRequestError.NO_PERMISSION;
            } else if ("email_unverified".equals(readTag)) {
                createFileRequestError = CreateFileRequestError.EMAIL_UNVERIFIED;
            } else if ("validation_error".equals(readTag)) {
                createFileRequestError = CreateFileRequestError.VALIDATION_ERROR;
            } else if ("invalid_location".equals(readTag)) {
                createFileRequestError = CreateFileRequestError.INVALID_LOCATION;
            } else {
                if (!"rate_limit".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                createFileRequestError = CreateFileRequestError.RATE_LIMIT;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return createFileRequestError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFileRequestError createFileRequestError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2463a.f16985a[createFileRequestError.ordinal()]) {
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
                    jsonGenerator.writeString("invalid_location");
                    return;
                case 10:
                    jsonGenerator.writeString("rate_limit");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + createFileRequestError);
            }
        }
    }
}
