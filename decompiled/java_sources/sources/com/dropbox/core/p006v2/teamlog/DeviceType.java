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
public enum DeviceType {
    DESKTOP,
    MOBILE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3449a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18842a;

        static {
            int[] iArr = new int[DeviceType.values().length];
            f18842a = iArr;
            try {
                iArr[DeviceType.DESKTOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18842a[DeviceType.MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceType$b */
    /* loaded from: classes4.dex */
    public static class C3450b extends UnionSerializer<DeviceType> {

        /* renamed from: b */
        public static final C3450b f18843b = new C3450b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            DeviceType deviceType = "desktop".equals(readTag) ? DeviceType.DESKTOP : "mobile".equals(readTag) ? DeviceType.MOBILE : DeviceType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deviceType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceType deviceType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3449a.f18842a[deviceType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("desktop");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("mobile");
            }
        }
    }
}
