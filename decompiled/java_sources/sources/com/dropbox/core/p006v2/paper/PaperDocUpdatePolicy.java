package com.dropbox.core.p006v2.paper;

import com.alibaba.sdk.android.oss.common.RequestParameters;
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
public enum PaperDocUpdatePolicy {
    APPEND,
    PREPEND,
    OVERWRITE_ALL,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.PaperDocUpdatePolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2768a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17610a;

        static {
            int[] iArr = new int[PaperDocUpdatePolicy.values().length];
            f17610a = iArr;
            try {
                iArr[PaperDocUpdatePolicy.APPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17610a[PaperDocUpdatePolicy.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17610a[PaperDocUpdatePolicy.OVERWRITE_ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.PaperDocUpdatePolicy$b */
    /* loaded from: classes4.dex */
    public static class C2769b extends UnionSerializer<PaperDocUpdatePolicy> {

        /* renamed from: b */
        public static final C2769b f17611b = new C2769b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocUpdatePolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PaperDocUpdatePolicy paperDocUpdatePolicy = RequestParameters.SUBRESOURCE_APPEND.equals(readTag) ? PaperDocUpdatePolicy.APPEND : "prepend".equals(readTag) ? PaperDocUpdatePolicy.PREPEND : "overwrite_all".equals(readTag) ? PaperDocUpdatePolicy.OVERWRITE_ALL : PaperDocUpdatePolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperDocUpdatePolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocUpdatePolicy paperDocUpdatePolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2768a.f17610a[paperDocUpdatePolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(RequestParameters.SUBRESOURCE_APPEND);
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("prepend");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("overwrite_all");
            }
        }
    }
}
