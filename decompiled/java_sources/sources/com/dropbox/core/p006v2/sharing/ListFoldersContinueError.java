package com.dropbox.core.p006v2.sharing;

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
public enum ListFoldersContinueError {
    INVALID_CURSOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.ListFoldersContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2884a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17846a;

        static {
            int[] iArr = new int[ListFoldersContinueError.values().length];
            f17846a = iArr;
            try {
                iArr[ListFoldersContinueError.INVALID_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFoldersContinueError$b */
    /* loaded from: classes4.dex */
    public static class C2885b extends UnionSerializer<ListFoldersContinueError> {

        /* renamed from: b */
        public static final C2885b f17847b = new C2885b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFoldersContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListFoldersContinueError listFoldersContinueError = "invalid_cursor".equals(readTag) ? ListFoldersContinueError.INVALID_CURSOR : ListFoldersContinueError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFoldersContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFoldersContinueError listFoldersContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2884a.f17846a[listFoldersContinueError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invalid_cursor");
            }
        }
    }
}
