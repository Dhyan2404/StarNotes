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
public enum PropertyType {
    STRING,
    OTHER;

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertyType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2448a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16942a;

        static {
            int[] iArr = new int[PropertyType.values().length];
            f16942a = iArr;
            try {
                iArr[PropertyType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertyType$b */
    /* loaded from: classes4.dex */
    public static class C2449b extends UnionSerializer<PropertyType> {

        /* renamed from: b */
        public static final C2449b f16943b = new C2449b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertyType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PropertyType propertyType = "string".equals(readTag) ? PropertyType.STRING : PropertyType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return propertyType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertyType propertyType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2448a.f16942a[propertyType.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("string");
            }
        }
    }
}
