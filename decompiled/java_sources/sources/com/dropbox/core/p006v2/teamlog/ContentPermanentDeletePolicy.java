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
public enum ContentPermanentDeletePolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.ContentPermanentDeletePolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3400a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18787a;

        static {
            int[] iArr = new int[ContentPermanentDeletePolicy.values().length];
            f18787a = iArr;
            try {
                iArr[ContentPermanentDeletePolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18787a[ContentPermanentDeletePolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ContentPermanentDeletePolicy$b */
    /* loaded from: classes4.dex */
    public static class C3401b extends UnionSerializer<ContentPermanentDeletePolicy> {

        /* renamed from: b */
        public static final C3401b f18788b = new C3401b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ContentPermanentDeletePolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ContentPermanentDeletePolicy contentPermanentDeletePolicy = "disabled".equals(readTag) ? ContentPermanentDeletePolicy.DISABLED : "enabled".equals(readTag) ? ContentPermanentDeletePolicy.ENABLED : ContentPermanentDeletePolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return contentPermanentDeletePolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ContentPermanentDeletePolicy contentPermanentDeletePolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3400a.f18787a[contentPermanentDeletePolicy.ordinal()];
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
