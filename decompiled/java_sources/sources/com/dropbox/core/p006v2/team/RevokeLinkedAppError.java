package com.dropbox.core.p006v2.team;

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
public enum RevokeLinkedAppError {
    APP_NOT_FOUND,
    MEMBER_NOT_FOUND,
    APP_FOLDER_REMOVAL_NOT_SUPPORTED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.RevokeLinkedAppError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3207a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18459a;

        static {
            int[] iArr = new int[RevokeLinkedAppError.values().length];
            f18459a = iArr;
            try {
                iArr[RevokeLinkedAppError.APP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18459a[RevokeLinkedAppError.MEMBER_NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18459a[RevokeLinkedAppError.APP_FOLDER_REMOVAL_NOT_SUPPORTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.RevokeLinkedAppError$b */
    /* loaded from: classes4.dex */
    public static class C3208b extends UnionSerializer<RevokeLinkedAppError> {

        /* renamed from: b */
        public static final C3208b f18460b = new C3208b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeLinkedAppError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            RevokeLinkedAppError revokeLinkedAppError = "app_not_found".equals(readTag) ? RevokeLinkedAppError.APP_NOT_FOUND : "member_not_found".equals(readTag) ? RevokeLinkedAppError.MEMBER_NOT_FOUND : "app_folder_removal_not_supported".equals(readTag) ? RevokeLinkedAppError.APP_FOLDER_REMOVAL_NOT_SUPPORTED : RevokeLinkedAppError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return revokeLinkedAppError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeLinkedAppError revokeLinkedAppError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3207a.f18459a[revokeLinkedAppError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("app_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("member_not_found");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("app_folder_removal_not_supported");
            }
        }
    }
}
