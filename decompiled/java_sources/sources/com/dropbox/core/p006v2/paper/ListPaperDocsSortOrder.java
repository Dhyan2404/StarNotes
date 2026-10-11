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
public enum ListPaperDocsSortOrder {
    ASCENDING,
    DESCENDING,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.ListPaperDocsSortOrder$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2751a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17589a;

        static {
            int[] iArr = new int[ListPaperDocsSortOrder.values().length];
            f17589a = iArr;
            try {
                iArr[ListPaperDocsSortOrder.ASCENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17589a[ListPaperDocsSortOrder.DESCENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ListPaperDocsSortOrder$b */
    /* loaded from: classes4.dex */
    public static class C2752b extends UnionSerializer<ListPaperDocsSortOrder> {

        /* renamed from: b */
        public static final C2752b f17590b = new C2752b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListPaperDocsSortOrder deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListPaperDocsSortOrder listPaperDocsSortOrder = Constants.ATTRVAL_ORDER_ASCENDING.equals(readTag) ? ListPaperDocsSortOrder.ASCENDING : Constants.ATTRVAL_ORDER_DESCENDING.equals(readTag) ? ListPaperDocsSortOrder.DESCENDING : ListPaperDocsSortOrder.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listPaperDocsSortOrder;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListPaperDocsSortOrder listPaperDocsSortOrder, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2751a.f17589a[listPaperDocsSortOrder.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_ORDER_ASCENDING);
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(Constants.ATTRVAL_ORDER_DESCENDING);
            }
        }
    }
}
