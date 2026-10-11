package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum ListFolderLongpollError {
    RESET,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.ListFolderLongpollError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2574a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17224a;

        static {
            int[] iArr = new int[ListFolderLongpollError.values().length];
            f17224a = iArr;
            try {
                iArr[ListFolderLongpollError.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ListFolderLongpollError$b */
    /* loaded from: classes4.dex */
    public static class C2575b extends UnionSerializer<ListFolderLongpollError> {

        /* renamed from: b */
        public static final C2575b f17225b = new C2575b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderLongpollError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListFolderLongpollError listFolderLongpollError = Constants.RESET.equals(readTag) ? ListFolderLongpollError.RESET : ListFolderLongpollError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFolderLongpollError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderLongpollError listFolderLongpollError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2574a.f17224a[listFolderLongpollError.ordinal()] != 1) {
                jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(Constants.RESET);
            }
        }
    }
}
