package com.dropbox.core.p006v2.users;

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
public enum GetAccountError {
    NO_ACCOUNT,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<GetAccountError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetAccountError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetAccountError getAccountError;
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
                if ("no_account".equals(readTag)) {
                    getAccountError = GetAccountError.NO_ACCOUNT;
                } else {
                    getAccountError = GetAccountError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return getAccountError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetAccountError getAccountError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C4438a.f20738a[getAccountError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("no_account");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.users.GetAccountError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4438a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20738a;

        static {
            int[] iArr = new int[GetAccountError.values().length];
            f20738a = iArr;
            try {
                iArr[GetAccountError.NO_ACCOUNT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }
}
