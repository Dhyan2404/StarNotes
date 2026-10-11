package com.dropbox.core.p006v2.paper;

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
public enum UserOnPaperDocFilter {
    VISITED,
    SHARED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.UserOnPaperDocFilter$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2780a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17625a;

        static {
            int[] iArr = new int[UserOnPaperDocFilter.values().length];
            f17625a = iArr;
            try {
                iArr[UserOnPaperDocFilter.VISITED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17625a[UserOnPaperDocFilter.SHARED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.UserOnPaperDocFilter$b */
    /* loaded from: classes4.dex */
    public static class C2781b extends UnionSerializer<UserOnPaperDocFilter> {

        /* renamed from: b */
        public static final C2781b f17626b = new C2781b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserOnPaperDocFilter deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            UserOnPaperDocFilter userOnPaperDocFilter = "visited".equals(readTag) ? UserOnPaperDocFilter.VISITED : "shared".equals(readTag) ? UserOnPaperDocFilter.SHARED : UserOnPaperDocFilter.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userOnPaperDocFilter;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserOnPaperDocFilter userOnPaperDocFilter, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2780a.f17625a[userOnPaperDocFilter.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("visited");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("shared");
            }
        }
    }
}
