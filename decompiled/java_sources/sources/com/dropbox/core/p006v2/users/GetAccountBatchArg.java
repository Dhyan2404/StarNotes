package com.dropbox.core.p006v2.users;

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
import java.util.List;

/* loaded from: classes4.dex */
public class GetAccountBatchArg {
    protected final List<String> accountIds;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<GetAccountBatchArg> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetAccountBatchArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("account_ids".equals(currentName)) {
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (list != null) {
                    GetAccountBatchArg getAccountBatchArg = new GetAccountBatchArg(list);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(getAccountBatchArg, getAccountBatchArg.toStringMultiline());
                    return getAccountBatchArg;
                }
                throw new JsonParseException(jsonParser, "Required field \"account_ids\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetAccountBatchArg getAccountBatchArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("account_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) getAccountBatchArg.accountIds, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetAccountBatchArg(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'accountIds' is null");
        }
        if (list.size() < 1) {
            throw new IllegalArgumentException("List 'accountIds' has fewer than 1 items");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'accountIds' is null");
            }
            if (str.length() < 40) {
                throw new IllegalArgumentException("Stringan item in list 'accountIds' is shorter than 40");
            }
            if (str.length() > 40) {
                throw new IllegalArgumentException("Stringan item in list 'accountIds' is longer than 40");
            }
        }
        this.accountIds = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<String> list = this.accountIds;
        List<String> list2 = ((GetAccountBatchArg) obj).accountIds;
        return list == list2 || list.equals(list2);
    }

    public List<String> getAccountIds() {
        return this.accountIds;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accountIds});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
