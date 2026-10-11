package com.dropbox.core.p006v2.teampolicies;

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
public enum EmmState {
    DISABLED,
    OPTIONAL,
    REQUIRED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<EmmState> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public EmmState deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            EmmState emmState;
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
                if ("disabled".equals(readTag)) {
                    emmState = EmmState.DISABLED;
                } else if ("optional".equals(readTag)) {
                    emmState = EmmState.OPTIONAL;
                } else if ("required".equals(readTag)) {
                    emmState = EmmState.REQUIRED;
                } else {
                    emmState = EmmState.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return emmState;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(EmmState emmState, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4414a.f20709a[emmState.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("optional");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("required");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.EmmState$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4414a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20709a;

        static {
            int[] iArr = new int[EmmState.values().length];
            f20709a = iArr;
            try {
                iArr[EmmState.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20709a[EmmState.OPTIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20709a[EmmState.REQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
