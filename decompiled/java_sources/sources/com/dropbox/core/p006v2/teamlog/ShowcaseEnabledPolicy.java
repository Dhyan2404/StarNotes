package com.dropbox.core.p006v2.teamlog;

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
public enum ShowcaseEnabledPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseEnabledPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4179a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20455a;

        static {
            int[] iArr = new int[ShowcaseEnabledPolicy.values().length];
            f20455a = iArr;
            try {
                iArr[ShowcaseEnabledPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20455a[ShowcaseEnabledPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseEnabledPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4180b extends UnionSerializer<ShowcaseEnabledPolicy> {

        /* renamed from: b */
        public static final C4180b f20456b = new C4180b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseEnabledPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ShowcaseEnabledPolicy showcaseEnabledPolicy = "disabled".equals(readTag) ? ShowcaseEnabledPolicy.DISABLED : "enabled".equals(readTag) ? ShowcaseEnabledPolicy.ENABLED : ShowcaseEnabledPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return showcaseEnabledPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseEnabledPolicy showcaseEnabledPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4179a.f20455a[showcaseEnabledPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enabled");
            }
        }
    }
}
