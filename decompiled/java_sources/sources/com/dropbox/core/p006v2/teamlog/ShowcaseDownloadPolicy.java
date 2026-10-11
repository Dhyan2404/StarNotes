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
public enum ShowcaseDownloadPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseDownloadPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4173a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20449a;

        static {
            int[] iArr = new int[ShowcaseDownloadPolicy.values().length];
            f20449a = iArr;
            try {
                iArr[ShowcaseDownloadPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20449a[ShowcaseDownloadPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseDownloadPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4174b extends UnionSerializer<ShowcaseDownloadPolicy> {

        /* renamed from: b */
        public static final C4174b f20450b = new C4174b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseDownloadPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ShowcaseDownloadPolicy showcaseDownloadPolicy = "disabled".equals(readTag) ? ShowcaseDownloadPolicy.DISABLED : "enabled".equals(readTag) ? ShowcaseDownloadPolicy.ENABLED : ShowcaseDownloadPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return showcaseDownloadPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseDownloadPolicy showcaseDownloadPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4173a.f20449a[showcaseDownloadPolicy.ordinal()];
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
