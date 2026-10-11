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
public enum SearchMode {
    FILENAME,
    FILENAME_AND_CONTENT,
    DELETED_FILENAME;

    /* renamed from: com.dropbox.core.v2.files.SearchMode$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2651a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17393a;

        static {
            int[] iArr = new int[SearchMode.values().length];
            f17393a = iArr;
            try {
                iArr[SearchMode.FILENAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17393a[SearchMode.FILENAME_AND_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17393a[SearchMode.DELETED_FILENAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SearchMode$b */
    /* loaded from: classes4.dex */
    public static class C2652b extends UnionSerializer<SearchMode> {

        /* renamed from: b */
        public static final C2652b f17394b = new C2652b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchMode deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SearchMode searchMode;
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
                searchMode = SearchMode.FILENAME;
            } else if ("filename_and_content".equals(readTag)) {
                searchMode = SearchMode.FILENAME_AND_CONTENT;
            } else {
                if (!"deleted_filename".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                searchMode = SearchMode.DELETED_FILENAME;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return searchMode;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchMode searchMode, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2651a.f17393a[searchMode.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(BreakpointSQLiteKey.FILENAME);
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("filename_and_content");
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("deleted_filename");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + searchMode);
            }
        }
    }
}
