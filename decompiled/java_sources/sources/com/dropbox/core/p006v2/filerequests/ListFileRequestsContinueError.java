package com.dropbox.core.p006v2.filerequests;

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
public enum ListFileRequestsContinueError {
    DISABLED_FOR_TEAM,
    OTHER,
    INVALID_CURSOR;

    /* renamed from: com.dropbox.core.v2.filerequests.ListFileRequestsContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2477a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17002a;

        static {
            int[] iArr = new int[ListFileRequestsContinueError.values().length];
            f17002a = iArr;
            try {
                iArr[ListFileRequestsContinueError.DISABLED_FOR_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17002a[ListFileRequestsContinueError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17002a[ListFileRequestsContinueError.INVALID_CURSOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.ListFileRequestsContinueError$b */
    /* loaded from: classes4.dex */
    public static class C2478b extends UnionSerializer<ListFileRequestsContinueError> {

        /* renamed from: b */
        public static final C2478b f17003b = new C2478b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileRequestsContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFileRequestsContinueError listFileRequestsContinueError;
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
            if ("disabled_for_team".equals(readTag)) {
                listFileRequestsContinueError = ListFileRequestsContinueError.DISABLED_FOR_TEAM;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                listFileRequestsContinueError = ListFileRequestsContinueError.OTHER;
            } else {
                if (!"invalid_cursor".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                listFileRequestsContinueError = ListFileRequestsContinueError.INVALID_CURSOR;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFileRequestsContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileRequestsContinueError listFileRequestsContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2477a.f17002a[listFileRequestsContinueError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled_for_team");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("invalid_cursor");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + listFileRequestsContinueError);
            }
        }
    }
}
