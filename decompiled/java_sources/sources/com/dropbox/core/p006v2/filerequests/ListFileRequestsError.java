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
public enum ListFileRequestsError {
    DISABLED_FOR_TEAM,
    OTHER;

    /* renamed from: com.dropbox.core.v2.filerequests.ListFileRequestsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2479a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17004a;

        static {
            int[] iArr = new int[ListFileRequestsError.values().length];
            f17004a = iArr;
            try {
                iArr[ListFileRequestsError.DISABLED_FOR_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17004a[ListFileRequestsError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.ListFileRequestsError$b */
    /* loaded from: classes4.dex */
    public static class C2480b extends UnionSerializer<ListFileRequestsError> {

        /* renamed from: b */
        public static final C2480b f17005b = new C2480b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileRequestsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFileRequestsError listFileRequestsError;
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
                listFileRequestsError = ListFileRequestsError.DISABLED_FOR_TEAM;
            } else {
                if (!Constants.ATTRVAL_OTHER.equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                listFileRequestsError = ListFileRequestsError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFileRequestsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileRequestsError listFileRequestsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2479a.f17004a[listFileRequestsError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled_for_team");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + listFileRequestsError);
            }
        }
    }
}
