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
public enum LinkAccessLevel {
    VIEWER,
    EDITOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.LinkAccessLevel$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2853a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17781a;

        static {
            int[] iArr = new int[LinkAccessLevel.values().length];
            f17781a = iArr;
            try {
                iArr[LinkAccessLevel.VIEWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17781a[LinkAccessLevel.EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkAccessLevel$b */
    /* loaded from: classes4.dex */
    public static class C2854b extends UnionSerializer<LinkAccessLevel> {

        /* renamed from: b */
        public static final C2854b f17782b = new C2854b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkAccessLevel deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            LinkAccessLevel linkAccessLevel = "viewer".equals(readTag) ? LinkAccessLevel.VIEWER : "editor".equals(readTag) ? LinkAccessLevel.EDITOR : LinkAccessLevel.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return linkAccessLevel;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkAccessLevel linkAccessLevel, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2853a.f17781a[linkAccessLevel.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("viewer");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("editor");
            }
        }
    }
}
