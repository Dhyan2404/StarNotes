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
public enum SecondaryMailsPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SecondaryMailsPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3989a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20265a;

        static {
            int[] iArr = new int[SecondaryMailsPolicy.values().length];
            f20265a = iArr;
            try {
                iArr[SecondaryMailsPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20265a[SecondaryMailsPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SecondaryMailsPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3990b extends UnionSerializer<SecondaryMailsPolicy> {

        /* renamed from: b */
        public static final C3990b f20266b = new C3990b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SecondaryMailsPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SecondaryMailsPolicy secondaryMailsPolicy = "disabled".equals(readTag) ? SecondaryMailsPolicy.DISABLED : "enabled".equals(readTag) ? SecondaryMailsPolicy.ENABLED : SecondaryMailsPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return secondaryMailsPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SecondaryMailsPolicy secondaryMailsPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3989a.f20265a[secondaryMailsPolicy.ordinal()];
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
