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
public enum ListPaperDocsFilterBy {
    DOCS_ACCESSED,
    DOCS_CREATED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.ListPaperDocsFilterBy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2746a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17584a;

        static {
            int[] iArr = new int[ListPaperDocsFilterBy.values().length];
            f17584a = iArr;
            try {
                iArr[ListPaperDocsFilterBy.DOCS_ACCESSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17584a[ListPaperDocsFilterBy.DOCS_CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ListPaperDocsFilterBy$b */
    /* loaded from: classes4.dex */
    public static class C2747b extends UnionSerializer<ListPaperDocsFilterBy> {

        /* renamed from: b */
        public static final C2747b f17585b = new C2747b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListPaperDocsFilterBy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListPaperDocsFilterBy listPaperDocsFilterBy = "docs_accessed".equals(readTag) ? ListPaperDocsFilterBy.DOCS_ACCESSED : "docs_created".equals(readTag) ? ListPaperDocsFilterBy.DOCS_CREATED : ListPaperDocsFilterBy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listPaperDocsFilterBy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListPaperDocsFilterBy listPaperDocsFilterBy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2746a.f17584a[listPaperDocsFilterBy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("docs_accessed");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("docs_created");
            }
        }
    }
}
