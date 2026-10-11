package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum DesktopPlatform {
    WINDOWS,
    MAC,
    LINUX,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<DesktopPlatform> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public DesktopPlatform deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DesktopPlatform desktopPlatform;
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
                if ("windows".equals(readTag)) {
                    desktopPlatform = DesktopPlatform.WINDOWS;
                } else if (CloudStorageConstants.MAC_TAG.equals(readTag)) {
                    desktopPlatform = DesktopPlatform.MAC;
                } else if ("linux".equals(readTag)) {
                    desktopPlatform = DesktopPlatform.LINUX;
                } else {
                    desktopPlatform = DesktopPlatform.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return desktopPlatform;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DesktopPlatform desktopPlatform, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3029a.f18145a[desktopPlatform.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("windows");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(CloudStorageConstants.MAC_TAG);
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("linux");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.DesktopPlatform$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3029a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18145a;

        static {
            int[] iArr = new int[DesktopPlatform.values().length];
            f18145a = iArr;
            try {
                iArr[DesktopPlatform.WINDOWS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18145a[DesktopPlatform.MAC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18145a[DesktopPlatform.LINUX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
