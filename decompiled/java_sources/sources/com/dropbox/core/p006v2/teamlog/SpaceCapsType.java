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
import kotlinx.coroutines.DebugKt;

/* loaded from: classes4.dex */
public enum SpaceCapsType {
    HARD,
    OFF,
    SOFT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SpaceCapsType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4233a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20509a;

        static {
            int[] iArr = new int[SpaceCapsType.values().length];
            f20509a = iArr;
            try {
                iArr[SpaceCapsType.HARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20509a[SpaceCapsType.OFF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20509a[SpaceCapsType.SOFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SpaceCapsType$b */
    /* loaded from: classes4.dex */
    public static class C4234b extends UnionSerializer<SpaceCapsType> {

        /* renamed from: b */
        public static final C4234b f20510b = new C4234b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpaceCapsType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SpaceCapsType spaceCapsType = "hard".equals(readTag) ? SpaceCapsType.HARD : DebugKt.DEBUG_PROPERTY_VALUE_OFF.equals(readTag) ? SpaceCapsType.OFF : "soft".equals(readTag) ? SpaceCapsType.SOFT : SpaceCapsType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return spaceCapsType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SpaceCapsType spaceCapsType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4233a.f20509a[spaceCapsType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("hard");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("soft");
            }
        }
    }
}
