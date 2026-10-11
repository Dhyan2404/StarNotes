package com.dropbox.core.p006v2.team;

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
public enum ListMembersAppsError {
    RESET,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ListMembersAppsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3124a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18305a;

        static {
            int[] iArr = new int[ListMembersAppsError.values().length];
            f18305a = iArr;
            try {
                iArr[ListMembersAppsError.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ListMembersAppsError$b */
    /* loaded from: classes4.dex */
    public static class C3125b extends UnionSerializer<ListMembersAppsError> {

        /* renamed from: b */
        public static final C3125b f18306b = new C3125b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMembersAppsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListMembersAppsError listMembersAppsError = Constants.RESET.equals(readTag) ? ListMembersAppsError.RESET : ListMembersAppsError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listMembersAppsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMembersAppsError listMembersAppsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3124a.f18305a[listMembersAppsError.ordinal()] != 1) {
                jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(Constants.RESET);
            }
        }
    }
}
