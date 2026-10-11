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
public enum AccountCaptureAvailability {
    UNAVAILABLE,
    AVAILABLE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCaptureAvailability$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3328a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18700a;

        static {
            int[] iArr = new int[AccountCaptureAvailability.values().length];
            f18700a = iArr;
            try {
                iArr[AccountCaptureAvailability.UNAVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18700a[AccountCaptureAvailability.AVAILABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCaptureAvailability$b */
    /* loaded from: classes4.dex */
    public static class C3329b extends UnionSerializer<AccountCaptureAvailability> {

        /* renamed from: b */
        public static final C3329b f18701b = new C3329b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountCaptureAvailability deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            AccountCaptureAvailability accountCaptureAvailability = "unavailable".equals(readTag) ? AccountCaptureAvailability.UNAVAILABLE : "available".equals(readTag) ? AccountCaptureAvailability.AVAILABLE : AccountCaptureAvailability.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return accountCaptureAvailability;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountCaptureAvailability accountCaptureAvailability, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3328a.f18700a[accountCaptureAvailability.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("unavailable");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("available");
            }
        }
    }
}
