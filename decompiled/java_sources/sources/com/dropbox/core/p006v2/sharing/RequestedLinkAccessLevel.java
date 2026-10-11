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
public enum RequestedLinkAccessLevel {
    VIEWER,
    EDITOR,
    MAX,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.RequestedLinkAccessLevel$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2918a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17915a;

        static {
            int[] iArr = new int[RequestedLinkAccessLevel.values().length];
            f17915a = iArr;
            try {
                iArr[RequestedLinkAccessLevel.VIEWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17915a[RequestedLinkAccessLevel.EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17915a[RequestedLinkAccessLevel.MAX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.RequestedLinkAccessLevel$b */
    /* loaded from: classes4.dex */
    public static class C2919b extends UnionSerializer<RequestedLinkAccessLevel> {

        /* renamed from: b */
        public static final C2919b f17916b = new C2919b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RequestedLinkAccessLevel deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            RequestedLinkAccessLevel requestedLinkAccessLevel = "viewer".equals(readTag) ? RequestedLinkAccessLevel.VIEWER : "editor".equals(readTag) ? RequestedLinkAccessLevel.EDITOR : "max".equals(readTag) ? RequestedLinkAccessLevel.MAX : RequestedLinkAccessLevel.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return requestedLinkAccessLevel;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RequestedLinkAccessLevel requestedLinkAccessLevel, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2918a.f17915a[requestedLinkAccessLevel.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("viewer");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("editor");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("max");
            }
        }
    }
}
