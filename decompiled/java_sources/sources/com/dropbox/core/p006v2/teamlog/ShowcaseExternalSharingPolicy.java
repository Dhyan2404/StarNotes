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
public enum ShowcaseExternalSharingPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseExternalSharingPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4181a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20457a;

        static {
            int[] iArr = new int[ShowcaseExternalSharingPolicy.values().length];
            f20457a = iArr;
            try {
                iArr[ShowcaseExternalSharingPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20457a[ShowcaseExternalSharingPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseExternalSharingPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4182b extends UnionSerializer<ShowcaseExternalSharingPolicy> {

        /* renamed from: b */
        public static final C4182b f20458b = new C4182b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseExternalSharingPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy = "disabled".equals(readTag) ? ShowcaseExternalSharingPolicy.DISABLED : "enabled".equals(readTag) ? ShowcaseExternalSharingPolicy.ENABLED : ShowcaseExternalSharingPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return showcaseExternalSharingPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4181a.f20457a[showcaseExternalSharingPolicy.ordinal()];
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
