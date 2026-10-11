package com.dropbox.core.p006v2.teamlog;

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
public enum PaperAccessType {
    VIEWER,
    COMMENTER,
    EDITOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperAccessType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3834a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20107a;

        static {
            int[] iArr = new int[PaperAccessType.values().length];
            f20107a = iArr;
            try {
                iArr[PaperAccessType.VIEWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20107a[PaperAccessType.COMMENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20107a[PaperAccessType.EDITOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.PaperAccessType$b */
    /* loaded from: classes4.dex */
    public static class C3835b extends UnionSerializer<PaperAccessType> {

        /* renamed from: b */
        public static final C3835b f20108b = new C3835b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperAccessType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PaperAccessType paperAccessType = "viewer".equals(readTag) ? PaperAccessType.VIEWER : "commenter".equals(readTag) ? PaperAccessType.COMMENTER : "editor".equals(readTag) ? PaperAccessType.EDITOR : PaperAccessType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperAccessType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperAccessType paperAccessType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3834a.f20107a[paperAccessType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("viewer");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("commenter");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("editor");
            }
        }
    }
}
