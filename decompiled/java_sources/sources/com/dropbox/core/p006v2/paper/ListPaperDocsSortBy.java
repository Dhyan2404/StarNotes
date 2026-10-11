package com.dropbox.core.p006v2.paper;

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
public enum ListPaperDocsSortBy {
    ACCESSED,
    MODIFIED,
    CREATED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.ListPaperDocsSortBy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2749a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17587a;

        static {
            int[] iArr = new int[ListPaperDocsSortBy.values().length];
            f17587a = iArr;
            try {
                iArr[ListPaperDocsSortBy.ACCESSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17587a[ListPaperDocsSortBy.MODIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17587a[ListPaperDocsSortBy.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ListPaperDocsSortBy$b */
    /* loaded from: classes4.dex */
    public static class C2750b extends UnionSerializer<ListPaperDocsSortBy> {

        /* renamed from: b */
        public static final C2750b f17588b = new C2750b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListPaperDocsSortBy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListPaperDocsSortBy listPaperDocsSortBy = "accessed".equals(readTag) ? ListPaperDocsSortBy.ACCESSED : "modified".equals(readTag) ? ListPaperDocsSortBy.MODIFIED : "created".equals(readTag) ? ListPaperDocsSortBy.CREATED : ListPaperDocsSortBy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listPaperDocsSortBy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListPaperDocsSortBy listPaperDocsSortBy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2749a.f17587a[listPaperDocsSortBy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("accessed");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("modified");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("created");
            }
        }
    }
}
