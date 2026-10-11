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
public enum AccountCaptureNotificationType {
    PROACTIVE_WARNING_NOTIFICATION,
    ACTIONABLE_NOTIFICATION,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCaptureNotificationType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3338a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18710a;

        static {
            int[] iArr = new int[AccountCaptureNotificationType.values().length];
            f18710a = iArr;
            try {
                iArr[AccountCaptureNotificationType.PROACTIVE_WARNING_NOTIFICATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18710a[AccountCaptureNotificationType.ACTIONABLE_NOTIFICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCaptureNotificationType$b */
    /* loaded from: classes4.dex */
    public static class C3339b extends UnionSerializer<AccountCaptureNotificationType> {

        /* renamed from: b */
        public static final C3339b f18711b = new C3339b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountCaptureNotificationType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            AccountCaptureNotificationType accountCaptureNotificationType = "proactive_warning_notification".equals(readTag) ? AccountCaptureNotificationType.PROACTIVE_WARNING_NOTIFICATION : "actionable_notification".equals(readTag) ? AccountCaptureNotificationType.ACTIONABLE_NOTIFICATION : AccountCaptureNotificationType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return accountCaptureNotificationType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountCaptureNotificationType accountCaptureNotificationType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3338a.f18710a[accountCaptureNotificationType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("proactive_warning_notification");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("actionable_notification");
            }
        }
    }
}
