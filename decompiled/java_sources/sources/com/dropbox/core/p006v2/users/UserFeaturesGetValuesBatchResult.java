package com.dropbox.core.p006v2.users;

import androidx.lifecycle.SavedStateHandle;
import com.dropbox.core.p006v2.users.UserFeatureValue;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class UserFeaturesGetValuesBatchResult {
    protected final List<UserFeatureValue> values;

    /* renamed from: com.dropbox.core.v2.users.UserFeaturesGetValuesBatchResult$a */
    /* loaded from: classes4.dex */
    public static class C4452a extends StructSerializer<UserFeaturesGetValuesBatchResult> {

        /* renamed from: b */
        public static final C4452a f20761b = new C4452a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserFeaturesGetValuesBatchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
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
                if (SavedStateHandle.f7922f.equals(currentName)) {
                    list = (List) StoneSerializers.list(UserFeatureValue.C4449b.f20758b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"values\" missing.");
            }
            UserFeaturesGetValuesBatchResult userFeaturesGetValuesBatchResult = new UserFeaturesGetValuesBatchResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userFeaturesGetValuesBatchResult, userFeaturesGetValuesBatchResult.toStringMultiline());
            return userFeaturesGetValuesBatchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserFeaturesGetValuesBatchResult userFeaturesGetValuesBatchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(SavedStateHandle.f7922f);
            StoneSerializers.list(UserFeatureValue.C4449b.f20758b).serialize((StoneSerializer) userFeaturesGetValuesBatchResult.values, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserFeaturesGetValuesBatchResult(List<UserFeatureValue> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'values' is null");
        }
        Iterator<UserFeatureValue> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'values' is null");
            }
        }
        this.values = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UserFeatureValue> list = this.values;
        List<UserFeatureValue> list2 = ((UserFeaturesGetValuesBatchResult) obj).values;
        return list == list2 || list.equals(list2);
    }

    public List<UserFeatureValue> getValues() {
        return this.values;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.values});
    }

    public String toString() {
        return C4452a.f20761b.serialize((C4452a) this, false);
    }

    public String toStringMultiline() {
        return C4452a.f20761b.serialize((C4452a) this, true);
    }
}
