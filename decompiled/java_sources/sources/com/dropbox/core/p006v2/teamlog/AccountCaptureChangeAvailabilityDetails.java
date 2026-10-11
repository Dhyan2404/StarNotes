package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AccountCaptureAvailability;
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
public class AccountCaptureChangeAvailabilityDetails {
    protected final AccountCaptureAvailability newValue;
    protected final AccountCaptureAvailability previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCaptureChangeAvailabilityDetails$a */
    /* loaded from: classes4.dex */
    public static class C3330a extends StructSerializer<AccountCaptureChangeAvailabilityDetails> {

        /* renamed from: b */
        public static final C3330a f18702b = new C3330a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountCaptureChangeAvailabilityDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AccountCaptureAvailability accountCaptureAvailability = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            AccountCaptureAvailability accountCaptureAvailability2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    accountCaptureAvailability = AccountCaptureAvailability.C3329b.f18701b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    accountCaptureAvailability2 = (AccountCaptureAvailability) StoneSerializers.nullable(AccountCaptureAvailability.C3329b.f18701b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accountCaptureAvailability == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetails = new AccountCaptureChangeAvailabilityDetails(accountCaptureAvailability, accountCaptureAvailability2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(accountCaptureChangeAvailabilityDetails, accountCaptureChangeAvailabilityDetails.toStringMultiline());
            return accountCaptureChangeAvailabilityDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            AccountCaptureAvailability.C3329b c3329b = AccountCaptureAvailability.C3329b.f18701b;
            c3329b.serialize(accountCaptureChangeAvailabilityDetails.newValue, jsonGenerator);
            if (accountCaptureChangeAvailabilityDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3329b).serialize((StoneSerializer) accountCaptureChangeAvailabilityDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AccountCaptureChangeAvailabilityDetails(AccountCaptureAvailability accountCaptureAvailability, AccountCaptureAvailability accountCaptureAvailability2) {
        if (accountCaptureAvailability != null) {
            this.newValue = accountCaptureAvailability;
            this.previousValue = accountCaptureAvailability2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetails = (AccountCaptureChangeAvailabilityDetails) obj;
        AccountCaptureAvailability accountCaptureAvailability = this.newValue;
        AccountCaptureAvailability accountCaptureAvailability2 = accountCaptureChangeAvailabilityDetails.newValue;
        if (accountCaptureAvailability == accountCaptureAvailability2 || accountCaptureAvailability.equals(accountCaptureAvailability2)) {
            AccountCaptureAvailability accountCaptureAvailability3 = this.previousValue;
            AccountCaptureAvailability accountCaptureAvailability4 = accountCaptureChangeAvailabilityDetails.previousValue;
            if (accountCaptureAvailability3 == accountCaptureAvailability4) {
                return true;
            }
            if (accountCaptureAvailability3 != null && accountCaptureAvailability3.equals(accountCaptureAvailability4)) {
                return true;
            }
        }
        return false;
    }

    public AccountCaptureAvailability getNewValue() {
        return this.newValue;
    }

    public AccountCaptureAvailability getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3330a.f18702b.serialize((C3330a) this, false);
    }

    public String toStringMultiline() {
        return C3330a.f18702b.serialize((C3330a) this, true);
    }

    public AccountCaptureChangeAvailabilityDetails(AccountCaptureAvailability accountCaptureAvailability) {
        this(accountCaptureAvailability, null);
    }
}
