package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AccountCapturePolicy;
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
public class AccountCaptureChangePolicyDetails {
    protected final AccountCapturePolicy newValue;
    protected final AccountCapturePolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCaptureChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3332a extends StructSerializer<AccountCaptureChangePolicyDetails> {

        /* renamed from: b */
        public static final C3332a f18704b = new C3332a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountCaptureChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AccountCapturePolicy accountCapturePolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            AccountCapturePolicy accountCapturePolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    accountCapturePolicy = AccountCapturePolicy.C3341b.f18713b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    accountCapturePolicy2 = (AccountCapturePolicy) StoneSerializers.nullable(AccountCapturePolicy.C3341b.f18713b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accountCapturePolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetails = new AccountCaptureChangePolicyDetails(accountCapturePolicy, accountCapturePolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(accountCaptureChangePolicyDetails, accountCaptureChangePolicyDetails.toStringMultiline());
            return accountCaptureChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            AccountCapturePolicy.C3341b c3341b = AccountCapturePolicy.C3341b.f18713b;
            c3341b.serialize(accountCaptureChangePolicyDetails.newValue, jsonGenerator);
            if (accountCaptureChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3341b).serialize((StoneSerializer) accountCaptureChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AccountCaptureChangePolicyDetails(AccountCapturePolicy accountCapturePolicy, AccountCapturePolicy accountCapturePolicy2) {
        if (accountCapturePolicy != null) {
            this.newValue = accountCapturePolicy;
            this.previousValue = accountCapturePolicy2;
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
        AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetails = (AccountCaptureChangePolicyDetails) obj;
        AccountCapturePolicy accountCapturePolicy = this.newValue;
        AccountCapturePolicy accountCapturePolicy2 = accountCaptureChangePolicyDetails.newValue;
        if (accountCapturePolicy == accountCapturePolicy2 || accountCapturePolicy.equals(accountCapturePolicy2)) {
            AccountCapturePolicy accountCapturePolicy3 = this.previousValue;
            AccountCapturePolicy accountCapturePolicy4 = accountCaptureChangePolicyDetails.previousValue;
            if (accountCapturePolicy3 == accountCapturePolicy4) {
                return true;
            }
            if (accountCapturePolicy3 != null && accountCapturePolicy3.equals(accountCapturePolicy4)) {
                return true;
            }
        }
        return false;
    }

    public AccountCapturePolicy getNewValue() {
        return this.newValue;
    }

    public AccountCapturePolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3332a.f18704b.serialize((C3332a) this, false);
    }

    public String toStringMultiline() {
        return C3332a.f18704b.serialize((C3332a) this, true);
    }

    public AccountCaptureChangePolicyDetails(AccountCapturePolicy accountCapturePolicy) {
        this(accountCapturePolicy, null);
    }
}
