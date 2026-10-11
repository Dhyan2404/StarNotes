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
public enum PaperDocPermissionLevel {
    EDIT,
    VIEW_AND_COMMENT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.PaperDocPermissionLevel$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2764a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17606a;

        static {
            int[] iArr = new int[PaperDocPermissionLevel.values().length];
            f17606a = iArr;
            try {
                iArr[PaperDocPermissionLevel.EDIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17606a[PaperDocPermissionLevel.VIEW_AND_COMMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.PaperDocPermissionLevel$b */
    /* loaded from: classes4.dex */
    public static class C2765b extends UnionSerializer<PaperDocPermissionLevel> {

        /* renamed from: b */
        public static final C2765b f17607b = new C2765b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocPermissionLevel deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PaperDocPermissionLevel paperDocPermissionLevel = "edit".equals(readTag) ? PaperDocPermissionLevel.EDIT : "view_and_comment".equals(readTag) ? PaperDocPermissionLevel.VIEW_AND_COMMENT : PaperDocPermissionLevel.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperDocPermissionLevel;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocPermissionLevel paperDocPermissionLevel, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2764a.f17606a[paperDocPermissionLevel.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("edit");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("view_and_comment");
            }
        }
    }
}
