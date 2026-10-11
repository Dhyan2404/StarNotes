package com.tencent.beacon.event.p076c;

import android.os.Build;
import android.text.TextUtils;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.tencent.beacon.base.net.RequestType;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.base.net.p066b.C14933b;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import com.tencent.beacon.event.EventBean;
import com.tencent.beacon.event.open.EventType;
import com.tencent.beacon.module.BeaconModule;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.pack.EventRecordV2;
import com.tencent.beacon.pack.RequestPackageV2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Pattern;
import org.apache.xmlbeans.impl.common.NameUtil;

/* renamed from: com.tencent.beacon.event.c.d */
/* loaded from: classes10.dex */
public final class C14991d {

    /* renamed from: a */
    private static final Pattern f93051a = Pattern.compile("rqd_.*");

    /* renamed from: b */
    private static final Pattern f93052b = Pattern.compile("A[0-9]{1,3}");

    /* renamed from: c */
    private static final Random f93053c = new Random();

    /* renamed from: a */
    public static boolean m59557a(int i) {
        return i != 0;
    }

    /* renamed from: b */
    private static EventRecordV2 m59558b(EventBean eventBean) {
        if (eventBean == null) {
            return null;
        }
        EventRecordV2 eventRecordV2 = new EventRecordV2();
        eventRecordV2.appKey = eventBean.getAppKey();
        eventRecordV2.apn = eventBean.getApn() != null ? eventBean.getApn() : "";
        eventRecordV2.srcIp = eventBean.getSrcIp() != null ? eventBean.getSrcIp() : "";
        eventRecordV2.eventCode = eventBean.getEventCode();
        eventRecordV2.valueType = eventBean.getValueType();
        eventRecordV2.mapValue = eventBean.getEventValue();
        eventRecordV2.byteValue = eventBean.getByteValue();
        eventRecordV2.eventTime = eventBean.getEventTime();
        eventRecordV2.eventResult = eventBean.getEventResult();
        eventRecordV2.eventType = eventBean.getEventType();
        eventRecordV2.reserved = eventBean.getReserved();
        return eventRecordV2;
    }

    /* renamed from: c */
    public static String m59560c(String str) {
        return (str == null || str.length() == 0) ? "" : str;
    }

    /* renamed from: d */
    public static String m59561d(String str) {
        return (str == null || str.length() == 0) ? "DefaultPageID" : str.length() > 50 ? str.substring(0, 50) : str;
    }

    /* renamed from: e */
    public static String m59562e(String str) {
        if (str == null || str.length() == 0) {
            return "10000";
        }
        String trim = str.replace('|', NameUtil.USCORE).trim();
        if (m59564g(trim)) {
            if (trim.length() < 5) {
                C14954c.m59403e("[core] userID length should < 5!", new Object[0]);
            }
            return trim.length() > 128 ? trim.substring(0, 128) : trim;
        }
        C14954c.m59403e("[core] userID should be ASCII code in 32-126! userID:" + str, new Object[0]);
        return "10000";
    }

    /* renamed from: f */
    public static BeaconModule m59563f(String str) throws Exception {
        return (BeaconModule) Class.forName(str).newInstance();
    }

    /* renamed from: g */
    private static boolean m59564g(String str) {
        int length = str.length();
        boolean z = true;
        while (true) {
            length--;
            if (length < 0) {
                return z;
            }
            char charAt = str.charAt(length);
            if (charAt < ' ' || charAt >= 127) {
                z = false;
            }
        }
    }

    /* renamed from: a */
    public static String m59554a(String str) {
        if (str != null && str.trim().length() != 0) {
            if (m59564g(str.trim())) {
                String trim = str.trim();
                return trim.length() > 16 ? trim.substring(0, 16) : trim;
            }
            C14954c.m59403e("[core] channelID should be Numeric! channelID:" + str, new Object[0]);
        }
        return "unknown";
    }

    /* renamed from: a */
    public static RequestPackageV2 m59552a(EventBean eventBean) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(eventBean);
        return m59553a(arrayList);
    }

    /* renamed from: a */
    public static RequestPackageV2 m59553a(List<EventBean> list) {
        RequestPackageV2 requestPackageV2 = new RequestPackageV2();
        requestPackageV2.appVersion = C14887b.m58972a();
        requestPackageV2.common = m59555a();
        ArrayList<EventRecordV2> arrayList = new ArrayList<>();
        Iterator<EventBean> it2 = list.iterator();
        while (it2.hasNext()) {
            EventRecordV2 m59558b = m59558b(it2.next());
            if (m59558b != null) {
                arrayList.add(m59558b);
            }
        }
        requestPackageV2.events = arrayList;
        C14888c m58989c = C14888c.m58989c();
        requestPackageV2.mainAppKey = m58989c.m59002e();
        requestPackageV2.model = C14891f.m59045e().m59059h();
        requestPackageV2.osVersion = C14890e.m59012l().m59038t();
        requestPackageV2.packageName = C14887b.m58977b();
        requestPackageV2.platformId = m58989c.m59004g();
        requestPackageV2.sdkId = m58989c.m59005h();
        requestPackageV2.sdkVersion = m58989c.m59006i();
        requestPackageV2.reserved = "";
        return requestPackageV2;
    }

    /* renamed from: b */
    public static String m59559b(String str) {
        if (TextUtils.isEmpty(str)) {
            if (C14959h.f92918a.get()) {
                C14882j.m58961e().m58953a("101", "eventCode == null");
                C14959h.m59413a("eventCode == null");
            }
            return "";
        }
        String trim = str.replace('|', NameUtil.USCORE).trim();
        if (m59564g(trim)) {
            if (trim.length() <= 128) {
                return trim;
            }
            String str2 = str + " length > 128.";
            C14882j.m58961e().m58953a("101", str2);
            C14959h.m59413a(str2);
            return trim.substring(0, 128);
        }
        String str3 = str + " is not ASCII";
        C14882j.m58961e().m58953a("101", str3);
        C14959h.m59413a(str3);
        return "";
    }

    /* renamed from: a */
    private static Map<String, String> m59555a() {
        HashMap hashMap = new HashMap();
        C14890e m59012l = C14890e.m59012l();
        C14888c m58989c = C14888c.m58989c();
        hashMap.put("A31", "" + m59012l.m59034p());
        hashMap.put("A67", C14887b.m58979c(m58989c.m58997b()));
        hashMap.put("A76", C14887b.m58980d());
        hashMap.put("A89", m59012l.m59019a(m58989c.m58997b()));
        hashMap.put("A52", String.valueOf(m59012l.m59044z()));
        hashMap.put("A58", m59012l.m59031m() ? "Y" : "N");
        hashMap.put("A12", m59012l.m59032n());
        hashMap.put("A17", m59012l.m59040v());
        hashMap.put("A159", m59012l.m59018F());
        hashMap.put("A9", Build.BRAND);
        hashMap.put("A158", m59012l.m59023d());
        C14891f m59045e = C14891f.m59045e();
        if (!TextUtils.isEmpty(m59045e.m59059h())) {
            hashMap.put("A10", m59045e.m59059h());
        }
        if (!TextUtils.isEmpty(m59045e.m59048b())) {
            hashMap.put("A2", "" + m59045e.m59048b());
        }
        if (!TextUtils.isEmpty(m59045e.m59052d())) {
            hashMap.put("A4", m59045e.m59052d());
        }
        if (!TextUtils.isEmpty(m59045e.m59055f())) {
            hashMap.put("A6", m59045e.m59055f());
        }
        if (!TextUtils.isEmpty(m59045e.m59046a())) {
            hashMap.put("A7", m59045e.m59046a());
        }
        if (!TextUtils.isEmpty(m59045e.m59063j())) {
            hashMap.put("A20", m59045e.m59063j());
        }
        if (!TextUtils.isEmpty(m59045e.m59065k())) {
            hashMap.put("A69", m59045e.m59065k());
        }
        if (!TextUtils.isEmpty(m59045e.m59061i())) {
            hashMap.put("A144", m59045e.m59061i());
        }
        return hashMap;
    }

    /* renamed from: a */
    public static int m59550a(EventType eventType) {
        int i = C14990c.f93050a[eventType.ordinal()];
        if (i == 3 || i == 4) {
            return 1;
        }
        if (i != 5) {
            return i != 6 ? 0 : 2;
        }
        return 3;
    }

    /* renamed from: a */
    public static JceRequestEntity m59551a(List<EventBean> list, boolean z) {
        return JceRequestEntity.builder().m59334a(RequestType.EVENT).m59333a(z ? 2 : 1).m59342b(C14933b.m59280a(false)).m59337a(C14933b.m59280a(true), 8081).m59336a(C14888c.m58989c().m59002e()).m59338a("version", WechatLoadWebWidget.ACTION_SYMBOL_REPLACE).m59335a(m59553a(list)).m59340a();
    }

    /* renamed from: a */
    public static void m59556a(String str, Map<String, String> map) {
        if (C14953b.m59366a(1) && !f93051a.matcher(str).matches()) {
            StringBuilder sb = new StringBuilder();
            for (String str2 : map.keySet()) {
                if (f93052b.matcher(str2).matches()) {
                    sb.append(str2);
                    sb.append(" ");
                }
            }
            if (sb.length() == 0) {
                return;
            }
            String format = String.format("use Axx for key, eventCode is %s, key is %s.", str, sb.toString());
            C14954c.m59395b(format, new Object[0]);
            C14882j.m58961e().m58953a("106", format);
        }
    }
}
