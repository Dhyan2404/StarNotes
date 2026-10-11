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
public enum AccessLevel {
    OWNER,
    EDITOR,
    VIEWER,
    VIEWER_NO_COMMENT,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<AccessLevel> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccessLevel deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AccessLevel accessLevel;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("owner".equals(readTag)) {
                    accessLevel = AccessLevel.OWNER;
                } else if ("editor".equals(readTag)) {
                    accessLevel = AccessLevel.EDITOR;
                } else if ("viewer".equals(readTag)) {
                    accessLevel = AccessLevel.VIEWER;
                } else if ("viewer_no_comment".equals(readTag)) {
                    accessLevel = AccessLevel.VIEWER_NO_COMMENT;
                } else {
                    accessLevel = AccessLevel.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return accessLevel;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccessLevel accessLevel, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2795a.f17653a[accessLevel.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("owner");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("editor");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("viewer");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("viewer_no_comment");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.AccessLevel$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2795a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17653a;

        static {
            int[] iArr = new int[AccessLevel.values().length];
            f17653a = iArr;
            try {
                iArr[AccessLevel.OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17653a[AccessLevel.EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17653a[AccessLevel.VIEWER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17653a[AccessLevel.VIEWER_NO_COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }
}
