package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AccountCaptureNotificationType;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class AccountCaptureNotificationEmailsSentDetails {
    protected final String domainName;
    protected final AccountCaptureNotificationType notificationType;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCaptureNotificationEmailsSentDetails$a */
    /* loaded from: classes4.dex */
    public static class C3336a extends StructSerializer<AccountCaptureNotificationEmailsSentDetails> {

        /* renamed from: b */
        public static final C3336a f18708b = new C3336a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountCaptureNotificationEmailsSentDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            AccountCaptureNotificationType accountCaptureNotificationType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("domain_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("notification_type".equals(currentName)) {
                    accountCaptureNotificationType = (AccountCaptureNotificationType) StoneSerializers.nullable(AccountCaptureNotificationType.C3339b.f18711b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"domain_name\" missing.");
            }
            AccountCaptureNotificationEmailsSentDetails accountCaptureNotificationEmailsSentDetails = new AccountCaptureNotificationEmailsSentDetails(str2, accountCaptureNotificationType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(accountCaptureNotificationEmailsSentDetails, accountCaptureNotificationEmailsSentDetails.toStringMultiline());
            return accountCaptureNotificationEmailsSentDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountCaptureNotificationEmailsSentDetails accountCaptureNotificationEmailsSentDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("domain_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) accountCaptureNotificationEmailsSentDetails.domainName, jsonGenerator);
            if (accountCaptureNotificationEmailsSentDetails.notificationType != null) {
                jsonGenerator.writeFieldName("notification_type");
                StoneSerializers.nullable(AccountCaptureNotificationType.C3339b.f18711b).serialize((StoneSerializer) accountCaptureNotificationEmailsSentDetails.notificationType, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AccountCaptureNotificationEmailsSentDetails(String str, AccountCaptureNotificationType accountCaptureNotificationType) {
        if (str != null) {
            this.domainName = str;
            this.notificationType = accountCaptureNotificationType;
            return;
        }
        throw new IllegalArgumentException("Required value for 'domainName' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AccountCaptureNotificationEmailsSentDetails accountCaptureNotificationEmailsSentDetails = (AccountCaptureNotificationEmailsSentDetails) obj;
        String str = this.domainName;
        String str2 = accountCaptureNotificationEmailsSentDetails.domainName;
        if (str == str2 || str.equals(str2)) {
            AccountCaptureNotificationType accountCaptureNotificationType = this.notificationType;
            AccountCaptureNotificationType accountCaptureNotificationType2 = accountCaptureNotificationEmailsSentDetails.notificationType;
            if (accountCaptureNotificationType == accountCaptureNotificationType2) {
                return true;
            }
            if (accountCaptureNotificationType != null && accountCaptureNotificationType.equals(accountCaptureNotificationType2)) {
                return true;
            }
        }
        return false;
    }

    public String getDomainName() {
        return this.domainName;
    }

    public AccountCaptureNotificationType getNotificationType() {
        return this.notificationType;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainName, this.notificationType});
    }

    public String toString() {
        return C3336a.f18708b.serialize((C3336a) this, false);
    }

    public String toStringMultiline() {
        return C3336a.f18708b.serialize((C3336a) this, true);
    }

    public AccountCaptureNotificationEmailsSentDetails(String str) {
        this(str, null);
    }
}
