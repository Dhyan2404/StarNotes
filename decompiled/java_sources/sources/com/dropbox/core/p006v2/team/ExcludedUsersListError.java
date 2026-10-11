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
public enum ExcludedUsersListError {
    LIST_ERROR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ExcludedUsersListError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3035a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18157a;

        static {
            int[] iArr = new int[ExcludedUsersListError.values().length];
            f18157a = iArr;
            try {
                iArr[ExcludedUsersListError.LIST_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ExcludedUsersListError$b */
    /* loaded from: classes4.dex */
    public static class C3036b extends UnionSerializer<ExcludedUsersListError> {

        /* renamed from: b */
        public static final C3036b f18158b = new C3036b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExcludedUsersListError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ExcludedUsersListError excludedUsersListError = "list_error".equals(readTag) ? ExcludedUsersListError.LIST_ERROR : ExcludedUsersListError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return excludedUsersListError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExcludedUsersListError excludedUsersListError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3035a.f18157a[excludedUsersListError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("list_error");
            }
        }
    }
}
