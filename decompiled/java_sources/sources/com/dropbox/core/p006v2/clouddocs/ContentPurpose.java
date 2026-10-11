package com.dropbox.core.p006v2.clouddocs;

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
public enum ContentPurpose {
    SEARCH,
    PREVIEW,
    OTHER;

    /* renamed from: com.dropbox.core.v2.clouddocs.ContentPurpose$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2388a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16831a;

        static {
            int[] iArr = new int[ContentPurpose.values().length];
            f16831a = iArr;
            try {
                iArr[ContentPurpose.SEARCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16831a[ContentPurpose.PREVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.ContentPurpose$b */
    /* loaded from: classes4.dex */
    public static class C2389b extends UnionSerializer<ContentPurpose> {

        /* renamed from: b */
        public static final C2389b f16832b = new C2389b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ContentPurpose deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ContentPurpose contentPurpose = "search".equals(readTag) ? ContentPurpose.SEARCH : "preview".equals(readTag) ? ContentPurpose.PREVIEW : ContentPurpose.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return contentPurpose;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ContentPurpose contentPurpose, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2388a.f16831a[contentPurpose.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("search");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("preview");
            }
        }
    }
}
