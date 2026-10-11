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
public enum PlacementRestriction {
    AUSTRALIA_ONLY,
    EUROPE_ONLY,
    JAPAN_ONLY,
    NONE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.PlacementRestriction$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3963a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20239a;

        static {
            int[] iArr = new int[PlacementRestriction.values().length];
            f20239a = iArr;
            try {
                iArr[PlacementRestriction.AUSTRALIA_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20239a[PlacementRestriction.EUROPE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20239a[PlacementRestriction.JAPAN_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20239a[PlacementRestriction.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.PlacementRestriction$b */
    /* loaded from: classes4.dex */
    public static class C3964b extends UnionSerializer<PlacementRestriction> {

        /* renamed from: b */
        public static final C3964b f20240b = new C3964b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlacementRestriction deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PlacementRestriction placementRestriction = "australia_only".equals(readTag) ? PlacementRestriction.AUSTRALIA_ONLY : "europe_only".equals(readTag) ? PlacementRestriction.EUROPE_ONLY : "japan_only".equals(readTag) ? PlacementRestriction.JAPAN_ONLY : "none".equals(readTag) ? PlacementRestriction.NONE : PlacementRestriction.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return placementRestriction;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PlacementRestriction placementRestriction, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3963a.f20239a[placementRestriction.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("australia_only");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("europe_only");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("japan_only");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("none");
            }
        }
    }
}
