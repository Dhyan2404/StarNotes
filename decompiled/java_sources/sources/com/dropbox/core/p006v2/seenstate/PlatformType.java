package com.dropbox.core.p006v2.seenstate;

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
public enum PlatformType {
    WEB,
    DESKTOP,
    MOBILE_IOS,
    MOBILE_ANDROID,
    API,
    UNKNOWN,
    MOBILE,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PlatformType> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PlatformType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PlatformType platformType;
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
                if ("web".equals(readTag)) {
                    platformType = PlatformType.WEB;
                } else if ("desktop".equals(readTag)) {
                    platformType = PlatformType.DESKTOP;
                } else if ("mobile_ios".equals(readTag)) {
                    platformType = PlatformType.MOBILE_IOS;
                } else if ("mobile_android".equals(readTag)) {
                    platformType = PlatformType.MOBILE_ANDROID;
                } else if ("api".equals(readTag)) {
                    platformType = PlatformType.API;
                } else if ("unknown".equals(readTag)) {
                    platformType = PlatformType.UNKNOWN;
                } else if ("mobile".equals(readTag)) {
                    platformType = PlatformType.MOBILE;
                } else {
                    platformType = PlatformType.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return platformType;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PlatformType platformType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2792a.f17650a[platformType.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("web");
                    return;
                case 2:
                    jsonGenerator.writeString("desktop");
                    return;
                case 3:
                    jsonGenerator.writeString("mobile_ios");
                    return;
                case 4:
                    jsonGenerator.writeString("mobile_android");
                    return;
                case 5:
                    jsonGenerator.writeString("api");
                    return;
                case 6:
                    jsonGenerator.writeString("unknown");
                    return;
                case 7:
                    jsonGenerator.writeString("mobile");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.seenstate.PlatformType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2792a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17650a;

        static {
            int[] iArr = new int[PlatformType.values().length];
            f17650a = iArr;
            try {
                iArr[PlatformType.WEB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17650a[PlatformType.DESKTOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17650a[PlatformType.MOBILE_IOS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17650a[PlatformType.MOBILE_ANDROID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17650a[PlatformType.API.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17650a[PlatformType.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17650a[PlatformType.MOBILE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }
}
