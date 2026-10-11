package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.DateTimeCodec;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.time.OffsetTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class gdk extends DateTimeCodec implements ObjectWriter {

    /* renamed from: b */
    public static final gdk f70938b = new gdk(null, null);

    public gdk(String str, Locale locale) {
        super(str, locale);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        JSONWriter.Context context = jSONWriter.context;
        OffsetTime offsetTime = (OffsetTime) obj;
        DateTimeFormatter dateFormatter = getDateFormatter();
        if (dateFormatter == null) {
            dateFormatter = context.getDateFormatter();
        }
        if (dateFormatter == null) {
            jSONWriter.writeOffsetTime(offsetTime);
        } else {
            jSONWriter.writeString(dateFormatter.format(offsetTime));
        }
    }
}
