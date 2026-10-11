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
public enum ListMembersDevicesError {
    RESET,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ListMembersDevicesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3128a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18313a;

        static {
            int[] iArr = new int[ListMembersDevicesError.values().length];
            f18313a = iArr;
            try {
                iArr[ListMembersDevicesError.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ListMembersDevicesError$b */
    /* loaded from: classes4.dex */
    public static class C3129b extends UnionSerializer<ListMembersDevicesError> {

        /* renamed from: b */
        public static final C3129b f18314b = new C3129b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMembersDevicesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListMembersDevicesError listMembersDevicesError = Constants.RESET.equals(readTag) ? ListMembersDevicesError.RESET : ListMembersDevicesError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listMembersDevicesError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMembersDevicesError listMembersDevicesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3128a.f18313a[listMembersDevicesError.ordinal()] != 1) {
                jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(Constants.RESET);
            }
        }
    }
}
