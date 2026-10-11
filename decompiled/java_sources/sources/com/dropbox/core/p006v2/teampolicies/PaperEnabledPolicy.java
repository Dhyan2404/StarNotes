package com.dropbox.core.p006v2.teampolicies;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.firebase.ktx.BuildConfig;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum PaperEnabledPolicy {
    DISABLED,
    ENABLED,
    UNSPECIFIED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PaperEnabledPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperEnabledPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PaperEnabledPolicy paperEnabledPolicy;
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
                    paperEnabledPolicy = PaperEnabledPolicy.DISABLED;
                } else if ("enabled".equals(readTag)) {
                    paperEnabledPolicy = PaperEnabledPolicy.ENABLED;
                } else if (BuildConfig.VERSION_NAME.equals(readTag)) {
                    paperEnabledPolicy = PaperEnabledPolicy.UNSPECIFIED;
                } else {
                    paperEnabledPolicy = PaperEnabledPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return paperEnabledPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperEnabledPolicy paperEnabledPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4419a.f20714a[paperEnabledPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("enabled");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(BuildConfig.VERSION_NAME);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.PaperEnabledPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4419a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20714a;

        static {
            int[] iArr = new int[PaperEnabledPolicy.values().length];
            f20714a = iArr;
            try {
                iArr[PaperEnabledPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20714a[PaperEnabledPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20714a[PaperEnabledPolicy.UNSPECIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
