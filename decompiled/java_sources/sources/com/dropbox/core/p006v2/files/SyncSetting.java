package com.dropbox.core.p006v2.files;

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
public enum SyncSetting {
    DEFAULT,
    NOT_SYNCED,
    NOT_SYNCED_INACTIVE,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<SyncSetting> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public SyncSetting deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SyncSetting syncSetting;
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
                if ("default".equals(readTag)) {
                    syncSetting = SyncSetting.DEFAULT;
                } else if ("not_synced".equals(readTag)) {
                    syncSetting = SyncSetting.NOT_SYNCED;
                } else if ("not_synced_inactive".equals(readTag)) {
                    syncSetting = SyncSetting.NOT_SYNCED_INACTIVE;
                } else {
                    syncSetting = SyncSetting.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return syncSetting;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SyncSetting syncSetting, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2662a.f17410a[syncSetting.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("default");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("not_synced");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("not_synced_inactive");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SyncSetting$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2662a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17410a;

        static {
            int[] iArr = new int[SyncSetting.values().length];
            f17410a = iArr;
            try {
                iArr[SyncSetting.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17410a[SyncSetting.NOT_SYNCED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17410a[SyncSetting.NOT_SYNCED_INACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
