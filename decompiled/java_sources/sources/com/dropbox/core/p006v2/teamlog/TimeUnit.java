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
public enum TimeUnit {
    MILLISECONDS,
    SECONDS,
    MINUTES,
    HOURS,
    DAYS,
    WEEKS,
    MONTHS,
    YEARS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.TimeUnit$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4378a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20666a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f20666a = iArr;
            try {
                iArr[TimeUnit.MILLISECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20666a[TimeUnit.SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20666a[TimeUnit.MINUTES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20666a[TimeUnit.HOURS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20666a[TimeUnit.DAYS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20666a[TimeUnit.WEEKS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f20666a[TimeUnit.MONTHS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f20666a[TimeUnit.YEARS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TimeUnit$b */
    /* loaded from: classes4.dex */
    public static class C4379b extends UnionSerializer<TimeUnit> {

        /* renamed from: b */
        public static final C4379b f20667b = new C4379b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TimeUnit deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TimeUnit timeUnit = "milliseconds".equals(readTag) ? TimeUnit.MILLISECONDS : "seconds".equals(readTag) ? TimeUnit.SECONDS : "minutes".equals(readTag) ? TimeUnit.MINUTES : "hours".equals(readTag) ? TimeUnit.HOURS : "days".equals(readTag) ? TimeUnit.DAYS : "weeks".equals(readTag) ? TimeUnit.WEEKS : "months".equals(readTag) ? TimeUnit.MONTHS : "years".equals(readTag) ? TimeUnit.YEARS : TimeUnit.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return timeUnit;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TimeUnit timeUnit, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C4378a.f20666a[timeUnit.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("milliseconds");
                    return;
                case 2:
                    jsonGenerator.writeString("seconds");
                    return;
                case 3:
                    jsonGenerator.writeString("minutes");
                    return;
                case 4:
                    jsonGenerator.writeString("hours");
                    return;
                case 5:
                    jsonGenerator.writeString("days");
                    return;
                case 6:
                    jsonGenerator.writeString("weeks");
                    return;
                case 7:
                    jsonGenerator.writeString("months");
                    return;
                case 8:
                    jsonGenerator.writeString("years");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
