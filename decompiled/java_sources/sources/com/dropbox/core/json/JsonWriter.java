package com.dropbox.core.json;

import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* loaded from: classes4.dex */
public abstract class JsonWriter<T> {

    /* renamed from: b */
    public static final String f16593b = "yyyy-MM-dd'T'HH:mm:ss'Z'";

    /* renamed from: a */
    public static final TimeZone f16592a = TimeZone.getTimeZone("UTC");

    /* renamed from: c */
    public static final String[] f16594c = {null, "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};

    /* renamed from: d */
    public static final String[] f16595d = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", null};

    /* renamed from: a */
    public static String m10087a(String str, int i) {
        while (str.length() < i) {
            str = "0" + str;
        }
        return str;
    }

    public static String formatDate(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        simpleDateFormat.setTimeZone(f16592a);
        return simpleDateFormat.format(date);
    }

    public abstract void write(T t, JsonGenerator jsonGenerator) throws IOException;

    public void write(T t, JsonGenerator jsonGenerator, int i) throws IOException {
        write(t, jsonGenerator);
    }

    public final void writeDate(Date date, JsonGenerator jsonGenerator) throws IOException {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(JsonDateReader.UTC);
        gregorianCalendar.setTime(date);
        String num = Integer.toString(gregorianCalendar.get(1));
        String str = f16595d[gregorianCalendar.get(2)];
        String m10087a = m10087a(Integer.toString(gregorianCalendar.get(5)), 2);
        String m10087a2 = m10087a(Integer.toString(gregorianCalendar.get(11)), 2);
        String m10087a3 = m10087a(Integer.toString(gregorianCalendar.get(12)), 2);
        String m10087a4 = m10087a(Integer.toString(gregorianCalendar.get(13)), 2);
        jsonGenerator.writeString(f16594c[gregorianCalendar.get(7)] + ", " + m10087a + " " + str + " " + num + " " + m10087a2 + ":" + m10087a3 + ":" + m10087a4 + " +0000");
    }

    public final void writeDateIso(Date date, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeString(formatDate(date));
    }

    public void writeFields(T t, JsonGenerator jsonGenerator) throws IOException {
    }

    public final void writeToFile(T t, File file, boolean z) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            writeToStream(t, fileOutputStream, z);
        } finally {
            fileOutputStream.close();
        }
    }

    public final void writeToStream(T t, OutputStream outputStream, boolean z) throws IOException {
        JsonGenerator createGenerator = JsonReader.f16588a.createGenerator(outputStream);
        if (z) {
            createGenerator = createGenerator.useDefaultPrettyPrinter();
        }
        try {
            write(t, createGenerator);
        } finally {
            createGenerator.flush();
        }
    }

    public final String writeToString(T t, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            JsonGenerator createGenerator = JsonReader.f16588a.createGenerator(byteArrayOutputStream);
            if (z) {
                createGenerator = createGenerator.useDefaultPrettyPrinter();
            }
            try {
                write(t, createGenerator);
                createGenerator.flush();
                return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
            } catch (Throwable th) {
                createGenerator.flush();
                throw th;
            }
        } catch (IOException e) {
            throw LangUtil.mkAssert("Impossible", e);
        }
    }

    public final void writeToFile(T t, File file) throws IOException {
        writeToFile((JsonWriter<T>) t, file, true);
    }

    public final void writeToFile(T t, String str, boolean z) throws IOException {
        writeToFile((JsonWriter<T>) t, new File(str), z);
    }

    public final void writeToStream(T t, OutputStream outputStream) throws IOException {
        writeToStream(t, outputStream, true);
    }

    public final void writeToFile(T t, String str) throws IOException {
        writeToFile((JsonWriter<T>) t, str, true);
    }

    public final String writeToString(T t) {
        return writeToString(t, true);
    }
}
