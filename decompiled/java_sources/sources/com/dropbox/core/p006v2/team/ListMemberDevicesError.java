package com.dropbox.core.p006v2.team;

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
public enum ListMemberDevicesError {
    MEMBER_NOT_FOUND,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ListMemberDevicesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3121a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18302a;

        static {
            int[] iArr = new int[ListMemberDevicesError.values().length];
            f18302a = iArr;
            try {
                iArr[ListMemberDevicesError.MEMBER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ListMemberDevicesError$b */
    /* loaded from: classes4.dex */
    public static class C3122b extends UnionSerializer<ListMemberDevicesError> {

        /* renamed from: b */
        public static final C3122b f18303b = new C3122b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMemberDevicesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListMemberDevicesError listMemberDevicesError = "member_not_found".equals(readTag) ? ListMemberDevicesError.MEMBER_NOT_FOUND : ListMemberDevicesError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listMemberDevicesError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMemberDevicesError listMemberDevicesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3121a.f18302a[listMemberDevicesError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("member_not_found");
            }
        }
    }
}
