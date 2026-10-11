package com.dropbox.core.p006v2.users;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class GetAccountBatchError {
    public static final GetAccountBatchError OTHER = new GetAccountBatchError().m16865b(Tag.OTHER);

    /* renamed from: a */
    public Tag f20735a;

    /* renamed from: b */
    public String f20736b;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<GetAccountBatchError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetAccountBatchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetAccountBatchError getAccountBatchError;
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
                    StoneSerializer.expectField("no_account", jsonParser);
                    getAccountBatchError = GetAccountBatchError.noAccount(StoneSerializers.string().deserialize(jsonParser));
                } else {
                    getAccountBatchError = GetAccountBatchError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return getAccountBatchError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetAccountBatchError getAccountBatchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C4437a.f20737a[getAccountBatchError.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("no_account", jsonGenerator);
            jsonGenerator.writeFieldName("no_account");
            StoneSerializers.string().serialize((StoneSerializer<String>) getAccountBatchError.f20736b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        NO_ACCOUNT,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.users.GetAccountBatchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4437a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20737a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20737a = iArr;
            try {
                iArr[Tag.NO_ACCOUNT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20737a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static GetAccountBatchError noAccount(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 40) {
            throw new IllegalArgumentException("String is shorter than 40");
        }
        if (str.length() <= 40) {
            return new GetAccountBatchError().m16866c(Tag.NO_ACCOUNT, str);
        }
        throw new IllegalArgumentException("String is longer than 40");
    }

    /* renamed from: b */
    public final GetAccountBatchError m16865b(Tag tag) {
        GetAccountBatchError getAccountBatchError = new GetAccountBatchError();
        getAccountBatchError.f20735a = tag;
        return getAccountBatchError;
    }

    /* renamed from: c */
    public final GetAccountBatchError m16866c(Tag tag, String str) {
        GetAccountBatchError getAccountBatchError = new GetAccountBatchError();
        getAccountBatchError.f20735a = tag;
        getAccountBatchError.f20736b = str;
        return getAccountBatchError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetAccountBatchError)) {
            return false;
        }
        GetAccountBatchError getAccountBatchError = (GetAccountBatchError) obj;
        Tag tag = this.f20735a;
        if (tag != getAccountBatchError.f20735a) {
            return false;
        }
        int i = C4437a.f20737a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f20736b;
        String str2 = getAccountBatchError.f20736b;
        return str == str2 || str.equals(str2);
    }

    public String getNoAccountValue() {
        if (this.f20735a == Tag.NO_ACCOUNT) {
            return this.f20736b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_ACCOUNT, but was Tag." + this.f20735a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20735a, this.f20736b});
    }

    public boolean isNoAccount() {
        return this.f20735a == Tag.NO_ACCOUNT;
    }

    public boolean isOther() {
        return this.f20735a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f20735a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
