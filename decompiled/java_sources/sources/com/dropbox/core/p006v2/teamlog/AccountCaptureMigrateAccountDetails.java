package com.dropbox.core.p006v2.teamlog;

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
public class AccountCaptureMigrateAccountDetails {
    protected final String domainName;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountCaptureMigrateAccountDetails$a */
    /* loaded from: classes4.dex */
    public static class C3334a extends StructSerializer<AccountCaptureMigrateAccountDetails> {

        /* renamed from: b */
        public static final C3334a f18706b = new C3334a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountCaptureMigrateAccountDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("domain_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"domain_name\" missing.");
            }
            AccountCaptureMigrateAccountDetails accountCaptureMigrateAccountDetails = new AccountCaptureMigrateAccountDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(accountCaptureMigrateAccountDetails, accountCaptureMigrateAccountDetails.toStringMultiline());
            return accountCaptureMigrateAccountDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountCaptureMigrateAccountDetails accountCaptureMigrateAccountDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("domain_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) accountCaptureMigrateAccountDetails.domainName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AccountCaptureMigrateAccountDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'domainName' is null");
        }
        this.domainName = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.domainName;
        String str2 = ((AccountCaptureMigrateAccountDetails) obj).domainName;
        return str == str2 || str.equals(str2);
    }

    public String getDomainName() {
        return this.domainName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainName});
    }

    public String toString() {
        return C3334a.f18706b.serialize((C3334a) this, false);
    }

    public String toStringMultiline() {
        return C3334a.f18706b.serialize((C3334a) this, true);
    }
}
