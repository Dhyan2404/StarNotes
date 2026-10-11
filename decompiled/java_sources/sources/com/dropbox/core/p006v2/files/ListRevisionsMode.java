package com.dropbox.core.p006v2.files;

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
public enum ListRevisionsMode {
    PATH,
    ID,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.ListRevisionsMode$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2581a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17239a;

        static {
            int[] iArr = new int[ListRevisionsMode.values().length];
            f17239a = iArr;
            try {
                iArr[ListRevisionsMode.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17239a[ListRevisionsMode.ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ListRevisionsMode$b */
    /* loaded from: classes4.dex */
    public static class C2582b extends UnionSerializer<ListRevisionsMode> {

        /* renamed from: b */
        public static final C2582b f17240b = new C2582b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListRevisionsMode deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListRevisionsMode listRevisionsMode = "path".equals(readTag) ? ListRevisionsMode.PATH : "id".equals(readTag) ? ListRevisionsMode.ID : ListRevisionsMode.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listRevisionsMode;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListRevisionsMode listRevisionsMode, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2581a.f17239a[listRevisionsMode.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("path");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("id");
            }
        }
    }
}
