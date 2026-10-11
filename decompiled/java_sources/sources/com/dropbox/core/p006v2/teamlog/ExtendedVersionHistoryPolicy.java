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
public enum ExtendedVersionHistoryPolicy {
    EXPLICITLY_LIMITED,
    EXPLICITLY_UNLIMITED,
    IMPLICITLY_LIMITED,
    IMPLICITLY_UNLIMITED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.ExtendedVersionHistoryPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3518a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19770a;

        static {
            int[] iArr = new int[ExtendedVersionHistoryPolicy.values().length];
            f19770a = iArr;
            try {
                iArr[ExtendedVersionHistoryPolicy.EXPLICITLY_LIMITED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19770a[ExtendedVersionHistoryPolicy.EXPLICITLY_UNLIMITED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19770a[ExtendedVersionHistoryPolicy.IMPLICITLY_LIMITED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19770a[ExtendedVersionHistoryPolicy.IMPLICITLY_UNLIMITED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ExtendedVersionHistoryPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3519b extends UnionSerializer<ExtendedVersionHistoryPolicy> {

        /* renamed from: b */
        public static final C3519b f19771b = new C3519b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExtendedVersionHistoryPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy = "explicitly_limited".equals(readTag) ? ExtendedVersionHistoryPolicy.EXPLICITLY_LIMITED : "explicitly_unlimited".equals(readTag) ? ExtendedVersionHistoryPolicy.EXPLICITLY_UNLIMITED : "implicitly_limited".equals(readTag) ? ExtendedVersionHistoryPolicy.IMPLICITLY_LIMITED : "implicitly_unlimited".equals(readTag) ? ExtendedVersionHistoryPolicy.IMPLICITLY_UNLIMITED : ExtendedVersionHistoryPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return extendedVersionHistoryPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3518a.f19770a[extendedVersionHistoryPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("explicitly_limited");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("explicitly_unlimited");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("implicitly_limited");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("implicitly_unlimited");
            }
        }
    }
}
