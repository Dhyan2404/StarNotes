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
public enum ListMemberAppsError {
    MEMBER_NOT_FOUND,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ListMemberAppsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3117a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18294a;

        static {
            int[] iArr = new int[ListMemberAppsError.values().length];
            f18294a = iArr;
            try {
                iArr[ListMemberAppsError.MEMBER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ListMemberAppsError$b */
    /* loaded from: classes4.dex */
    public static class C3118b extends UnionSerializer<ListMemberAppsError> {

        /* renamed from: b */
        public static final C3118b f18295b = new C3118b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMemberAppsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListMemberAppsError listMemberAppsError = "member_not_found".equals(readTag) ? ListMemberAppsError.MEMBER_NOT_FOUND : ListMemberAppsError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listMemberAppsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMemberAppsError listMemberAppsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3117a.f18294a[listMemberAppsError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("member_not_found");
            }
        }
    }
}
