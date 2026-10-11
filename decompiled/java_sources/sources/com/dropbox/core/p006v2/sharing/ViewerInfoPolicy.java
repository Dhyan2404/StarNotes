package com.dropbox.core.p006v2.sharing;

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
public enum ViewerInfoPolicy {
    ENABLED,
    DISABLED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<ViewerInfoPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public ViewerInfoPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ViewerInfoPolicy viewerInfoPolicy;
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
                if ("enabled".equals(readTag)) {
                    viewerInfoPolicy = ViewerInfoPolicy.ENABLED;
                } else if ("disabled".equals(readTag)) {
                    viewerInfoPolicy = ViewerInfoPolicy.DISABLED;
                } else {
                    viewerInfoPolicy = ViewerInfoPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return viewerInfoPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ViewerInfoPolicy viewerInfoPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2980a.f18032a[viewerInfoPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("enabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("disabled");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ViewerInfoPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2980a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18032a;

        static {
            int[] iArr = new int[ViewerInfoPolicy.values().length];
            f18032a = iArr;
            try {
                iArr[ViewerInfoPolicy.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18032a[ViewerInfoPolicy.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
