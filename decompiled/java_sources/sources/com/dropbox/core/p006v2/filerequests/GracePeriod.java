package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum GracePeriod {
    ONE_DAY,
    TWO_DAYS,
    SEVEN_DAYS,
    THIRTY_DAYS,
    ALWAYS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.filerequests.GracePeriod$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2475a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17000a;

        static {
            int[] iArr = new int[GracePeriod.values().length];
            f17000a = iArr;
            try {
                iArr[GracePeriod.ONE_DAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17000a[GracePeriod.TWO_DAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17000a[GracePeriod.SEVEN_DAYS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17000a[GracePeriod.THIRTY_DAYS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17000a[GracePeriod.ALWAYS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.GracePeriod$b */
    /* loaded from: classes4.dex */
    public static class C2476b extends UnionSerializer<GracePeriod> {

        /* renamed from: b */
        public static final C2476b f17001b = new C2476b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GracePeriod deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GracePeriod gracePeriod = "one_day".equals(readTag) ? GracePeriod.ONE_DAY : "two_days".equals(readTag) ? GracePeriod.TWO_DAYS : "seven_days".equals(readTag) ? GracePeriod.SEVEN_DAYS : "thirty_days".equals(readTag) ? GracePeriod.THIRTY_DAYS : NotificationDisplayHandler.STRATEGY_ALWAYS.equals(readTag) ? GracePeriod.ALWAYS : GracePeriod.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return gracePeriod;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GracePeriod gracePeriod, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2475a.f17000a[gracePeriod.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("one_day");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("two_days");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("seven_days");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("thirty_days");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(NotificationDisplayHandler.STRATEGY_ALWAYS);
            }
        }
    }
}
