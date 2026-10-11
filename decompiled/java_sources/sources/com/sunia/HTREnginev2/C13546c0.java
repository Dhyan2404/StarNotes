package com.sunia.HTREnginev2;

import com.google.gson.Gson;
import com.google.gson.stream.JsonWriter;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.sunia.HTREnginev2.c0 */
/* loaded from: classes10.dex */
public class C13546c0 {

    /* renamed from: a */
    public static final Map<String, String> f66309a = new HashMap();

    /* renamed from: b */
    public static final Gson f66310b = new Gson();

    /* renamed from: a */
    public static String m53376a(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                m53377a(abstractC14807f, jsonWriter);
                jsonWriter.close();
            } finally {
            }
        } catch (Exception e) {
            LogUtil.m57654e("JsonConverter", "Cannot encode" + LogUtil.getStackTraceString(e));
        }
        return stringWriter.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static void m53378b(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, Map<C14219p1, Integer> map, JsonWriter jsonWriter) {
        jsonWriter.beginObject();
        jsonWriter.name("type");
        jsonWriter.value(abstractC14807f.mo54389j());
        if (abstractC14807f instanceof InterfaceC13597d0) {
            jsonWriter.name("transcription").value(((InterfaceC13597d0) abstractC14807f).mo53565a());
        }
        List mo58831f = abstractC14807f.mo58831f();
        if (!mo58831f.isEmpty()) {
            jsonWriter.name(Constants.ELEMNAME_CHILDREN_STRING);
            jsonWriter.beginArray();
            Iterator it2 = mo58831f.iterator();
            while (it2.hasNext()) {
                m53378b((AbstractC14807f) it2.next(), map, jsonWriter);
            }
            jsonWriter.endArray();
        }
        List<C14219p1> mo58830d = abstractC14807f.mo58830d();
        if (!mo58830d.isEmpty()) {
            jsonWriter.name("traceIndices");
            jsonWriter.beginArray();
            Iterator<C14219p1> it3 = mo58830d.iterator();
            while (it3.hasNext()) {
                jsonWriter.value(((Integer) C13962k0.m55096a(map, it3.next(), -1)).intValue());
            }
            jsonWriter.endArray();
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static void m53377a(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, JsonWriter jsonWriter) {
        List<C14219p1> mo58838i = abstractC14807f.mo58838i();
        IdentityHashMap identityHashMap = new IdentityHashMap(mo58838i.size() * 2);
        jsonWriter.beginObject();
        jsonWriter.name("traces");
        jsonWriter.beginArray();
        Iterator<C14219p1> it2 = mo58838i.iterator();
        int i = 0;
        while (it2.hasNext()) {
            identityHashMap.put(it2.next(), Integer.valueOf(i));
            i++;
        }
        jsonWriter.endArray();
        jsonWriter.name(gon.f71305w);
        m53378b(abstractC14807f, identityHashMap, jsonWriter);
        jsonWriter.endObject();
    }
}
