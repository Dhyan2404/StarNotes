package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum DeviceUnlinkPolicy {
    REMOVE,
    KEEP,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceUnlinkPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3452a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18845a;

        static {
            int[] iArr = new int[DeviceUnlinkPolicy.values().length];
            f18845a = iArr;
            try {
                iArr[DeviceUnlinkPolicy.REMOVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18845a[DeviceUnlinkPolicy.KEEP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceUnlinkPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3453b extends UnionSerializer<DeviceUnlinkPolicy> {

        /* renamed from: b */
        public static final C3453b f18846b = new C3453b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceUnlinkPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            DeviceUnlinkPolicy deviceUnlinkPolicy = SyncConstant.SYNC_ACTION_REMOVE.equals(readTag) ? DeviceUnlinkPolicy.REMOVE : "keep".equals(readTag) ? DeviceUnlinkPolicy.KEEP : DeviceUnlinkPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deviceUnlinkPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceUnlinkPolicy deviceUnlinkPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3452a.f18845a[deviceUnlinkPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(SyncConstant.SYNC_ACTION_REMOVE);
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("keep");
            }
        }
    }
}
