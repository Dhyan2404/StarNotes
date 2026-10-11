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
public enum SyncSettingArg {
    DEFAULT,
    NOT_SYNCED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<SyncSettingArg> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public SyncSettingArg deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SyncSettingArg syncSettingArg;
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
                    syncSettingArg = SyncSettingArg.DEFAULT;
                } else if ("not_synced".equals(readTag)) {
                    syncSettingArg = SyncSettingArg.NOT_SYNCED;
                } else {
                    syncSettingArg = SyncSettingArg.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return syncSettingArg;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SyncSettingArg syncSettingArg, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2663a.f17411a[syncSettingArg.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("default");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("not_synced");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SyncSettingArg$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2663a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17411a;

        static {
            int[] iArr = new int[SyncSettingArg.values().length];
            f17411a = iArr;
            try {
                iArr[SyncSettingArg.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17411a[SyncSettingArg.NOT_SYNCED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
