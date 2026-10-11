package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum SearchMatchType {
    FILENAME,
    CONTENT,
    BOTH;

    /* renamed from: com.dropbox.core.v2.files.SearchMatchType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2648a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17390a;

        static {
            int[] iArr = new int[SearchMatchType.values().length];
            f17390a = iArr;
            try {
                iArr[SearchMatchType.FILENAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17390a[SearchMatchType.CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17390a[SearchMatchType.BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SearchMatchType$b */
    /* loaded from: classes4.dex */
    public static class C2649b extends UnionSerializer<SearchMatchType> {

        /* renamed from: b */
        public static final C2649b f17391b = new C2649b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchMatchType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SearchMatchType searchMatchType;
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
            if (BreakpointSQLiteKey.FILENAME.equals(readTag)) {
                searchMatchType = SearchMatchType.FILENAME;
            } else if ("content".equals(readTag)) {
                searchMatchType = SearchMatchType.CONTENT;
            } else {
                if (!"both".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                searchMatchType = SearchMatchType.BOTH;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return searchMatchType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchMatchType searchMatchType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2648a.f17390a[searchMatchType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(BreakpointSQLiteKey.FILENAME);
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("content");
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("both");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + searchMatchType);
            }
        }
    }
}
