package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AccountState;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class AccountLockOrUnlockedDetails {
    protected final AccountState newValue;
    protected final AccountState previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountLockOrUnlockedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3344a extends StructSerializer<AccountLockOrUnlockedDetails> {

        /* renamed from: b */
        public static final C3344a f18716b = new C3344a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountLockOrUnlockedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AccountState accountState = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            AccountState accountState2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    accountState = AccountState.C3347b.f18719b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    accountState2 = AccountState.C3347b.f18719b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accountState == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (accountState2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            AccountLockOrUnlockedDetails accountLockOrUnlockedDetails = new AccountLockOrUnlockedDetails(accountState, accountState2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(accountLockOrUnlockedDetails, accountLockOrUnlockedDetails.toStringMultiline());
            return accountLockOrUnlockedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountLockOrUnlockedDetails accountLockOrUnlockedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            AccountState.C3347b c3347b = AccountState.C3347b.f18719b;
            c3347b.serialize(accountLockOrUnlockedDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c3347b.serialize(accountLockOrUnlockedDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AccountLockOrUnlockedDetails(AccountState accountState, AccountState accountState2) {
        if (accountState == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = accountState;
        if (accountState2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = accountState2;
    }

    public boolean equals(Object obj) {
        AccountState accountState;
        AccountState accountState2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AccountLockOrUnlockedDetails accountLockOrUnlockedDetails = (AccountLockOrUnlockedDetails) obj;
        AccountState accountState3 = this.previousValue;
        AccountState accountState4 = accountLockOrUnlockedDetails.previousValue;
        return (accountState3 == accountState4 || accountState3.equals(accountState4)) && ((accountState = this.newValue) == (accountState2 = accountLockOrUnlockedDetails.newValue) || accountState.equals(accountState2));
    }

    public AccountState getNewValue() {
        return this.newValue;
    }

    public AccountState getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C3344a.f18716b.serialize((C3344a) this, false);
    }

    public String toStringMultiline() {
        return C3344a.f18716b.serialize((C3344a) this, true);
    }
}
