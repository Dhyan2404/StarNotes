package com.dropbox.core.p006v2.fileproperties;

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
public enum LookUpPropertiesError {
    PROPERTY_GROUP_NOT_FOUND,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<LookUpPropertiesError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public LookUpPropertiesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LookUpPropertiesError lookUpPropertiesError;
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
                if ("property_group_not_found".equals(readTag)) {
                    lookUpPropertiesError = LookUpPropertiesError.PROPERTY_GROUP_NOT_FOUND;
                } else {
                    lookUpPropertiesError = LookUpPropertiesError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return lookUpPropertiesError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LookUpPropertiesError lookUpPropertiesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2431a.f16916a[lookUpPropertiesError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("property_group_not_found");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.LookUpPropertiesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2431a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16916a;

        static {
            int[] iArr = new int[LookUpPropertiesError.values().length];
            f16916a = iArr;
            try {
                iArr[LookUpPropertiesError.PROPERTY_GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }
}
