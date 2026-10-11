package com.dropbox.core.p006v2.teamlog;

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
public enum AccountCapturePolicy {
    DISABLED,
    INVITED_USERS,
    ALL_USERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCapturePolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3340a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18712a;

        static {
            int[] iArr = new int[AccountCapturePolicy.values().length];
            f18712a = iArr;
            try {
                iArr[AccountCapturePolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18712a[AccountCapturePolicy.INVITED_USERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18712a[AccountCapturePolicy.ALL_USERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCapturePolicy$b */
    /* loaded from: classes4.dex */
    public static class C3341b extends UnionSerializer<AccountCapturePolicy> {

        /* renamed from: b */
        public static final C3341b f18713b = new C3341b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountCapturePolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            AccountCapturePolicy accountCapturePolicy = "disabled".equals(readTag) ? AccountCapturePolicy.DISABLED : "invited_users".equals(readTag) ? AccountCapturePolicy.INVITED_USERS : "all_users".equals(readTag) ? AccountCapturePolicy.ALL_USERS : AccountCapturePolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return accountCapturePolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountCapturePolicy accountCapturePolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3340a.f18712a[accountCapturePolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("invited_users");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("all_users");
            }
        }
    }
}
