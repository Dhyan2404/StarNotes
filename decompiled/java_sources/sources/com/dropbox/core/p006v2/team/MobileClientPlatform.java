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
public enum MobileClientPlatform {
    IPHONE,
    IPAD,
    ANDROID,
    WINDOWS_PHONE,
    BLACKBERRY,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<MobileClientPlatform> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public MobileClientPlatform deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MobileClientPlatform mobileClientPlatform;
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
                if ("iphone".equals(readTag)) {
                    mobileClientPlatform = MobileClientPlatform.IPHONE;
                } else if ("ipad".equals(readTag)) {
                    mobileClientPlatform = MobileClientPlatform.IPAD;
                } else if ("android".equals(readTag)) {
                    mobileClientPlatform = MobileClientPlatform.ANDROID;
                } else if ("windows_phone".equals(readTag)) {
                    mobileClientPlatform = MobileClientPlatform.WINDOWS_PHONE;
                } else if ("blackberry".equals(readTag)) {
                    mobileClientPlatform = MobileClientPlatform.BLACKBERRY;
                } else {
                    mobileClientPlatform = MobileClientPlatform.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return mobileClientPlatform;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MobileClientPlatform mobileClientPlatform, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3183a.f18414a[mobileClientPlatform.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("iphone");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("ipad");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("android");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("windows_phone");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("blackberry");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MobileClientPlatform$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3183a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18414a;

        static {
            int[] iArr = new int[MobileClientPlatform.values().length];
            f18414a = iArr;
            try {
                iArr[MobileClientPlatform.IPHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18414a[MobileClientPlatform.IPAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18414a[MobileClientPlatform.ANDROID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18414a[MobileClientPlatform.WINDOWS_PHONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18414a[MobileClientPlatform.BLACKBERRY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }
}
