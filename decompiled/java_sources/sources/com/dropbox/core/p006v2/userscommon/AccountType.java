package com.dropbox.core.p006v2.userscommon;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum AccountType {
    BASIC,
    PRO,
    BUSINESS;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<AccountType> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccountType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AccountType accountType;
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
                if ("basic".equals(readTag)) {
                    accountType = AccountType.BASIC;
                } else if ("pro".equals(readTag)) {
                    accountType = AccountType.PRO;
                } else if ("business".equals(readTag)) {
                    accountType = AccountType.BUSINESS;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return accountType;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccountType accountType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4454a.f20764a[accountType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("basic");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("pro");
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("business");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + accountType);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.userscommon.AccountType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4454a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20764a;

        static {
            int[] iArr = new int[AccountType.values().length];
            f20764a = iArr;
            try {
                iArr[AccountType.BASIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20764a[AccountType.PRO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20764a[AccountType.BUSINESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
