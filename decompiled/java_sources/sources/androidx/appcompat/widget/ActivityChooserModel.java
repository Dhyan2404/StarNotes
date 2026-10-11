package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class ActivityChooserModel extends DataSetObservable {

    /* renamed from: A */
    public static final Object f1423A = new Object();

    /* renamed from: B */
    public static final Map<String, ActivityChooserModel> f1424B = new HashMap();

    /* renamed from: n */
    public static final boolean f1425n = false;

    /* renamed from: o */
    public static final String f1426o = "ActivityChooserModel";

    /* renamed from: p */
    public static final String f1427p = "historical-records";

    /* renamed from: q */
    public static final String f1428q = "historical-record";

    /* renamed from: r */
    public static final String f1429r = "activity";

    /* renamed from: s */
    public static final String f1430s = "time";

    /* renamed from: t */
    public static final String f1431t = "weight";

    /* renamed from: u */
    public static final String f1432u = "activity_choser_model_history.xml";

    /* renamed from: v */
    public static final int f1433v = 50;

    /* renamed from: w */
    public static final int f1434w = 5;

    /* renamed from: x */
    public static final float f1435x = 1.0f;

    /* renamed from: y */
    public static final String f1436y = ".xml";

    /* renamed from: z */
    public static final int f1437z = -1;

    /* renamed from: d */
    public final Context f1441d;

    /* renamed from: e */
    public final String f1442e;

    /* renamed from: f */
    public Intent f1443f;

    /* renamed from: m */
    public OnChooseActivityListener f1450m;

    /* renamed from: a */
    public final Object f1438a = new Object();

    /* renamed from: b */
    public final List<ActivityResolveInfo> f1439b = new ArrayList();

    /* renamed from: c */
    public final List<HistoricalRecord> f1440c = new ArrayList();

    /* renamed from: g */
    public ActivitySorter f1444g = new C0219a();

    /* renamed from: h */
    public int f1445h = 50;

    /* renamed from: i */
    public boolean f1446i = true;

    /* renamed from: j */
    public boolean f1447j = false;

    /* renamed from: k */
    public boolean f1448k = true;

    /* renamed from: l */
    public boolean f1449l = false;

    /* loaded from: classes3.dex */
    public interface ActivityChooserModelClient {
        void setActivityChooserModel(ActivityChooserModel activityChooserModel);
    }

    /* loaded from: classes3.dex */
    public static final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        public final ResolveInfo resolveInfo;
        public float weight;

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.resolveInfo = resolveInfo;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && ActivityResolveInfo.class == obj.getClass() && Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityResolveInfo) obj).weight);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public String toString() {
            return IteratorUtils.f104923a + "resolveInfo:" + this.resolveInfo.toString() + "; weight:" + new BigDecimal(this.weight) + IteratorUtils.f104924b;
        }

        @Override // java.lang.Comparable
        public int compareTo(ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.weight) - Float.floatToIntBits(this.weight);
        }
    }

    /* loaded from: classes3.dex */
    public interface ActivitySorter {
        void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    /* loaded from: classes3.dex */
    public static final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || HistoricalRecord.class != obj.getClass()) {
                return false;
            }
            HistoricalRecord historicalRecord = (HistoricalRecord) obj;
            ComponentName componentName = this.activity;
            if (componentName == null) {
                if (historicalRecord.activity != null) {
                    return false;
                }
            } else if (!componentName.equals(historicalRecord.activity)) {
                return false;
            }
            return this.time == historicalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(historicalRecord.weight);
        }

        public int hashCode() {
            ComponentName componentName = this.activity;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.time;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.weight);
        }

        public String toString() {
            return IteratorUtils.f104923a + "; activity:" + this.activity + "; time:" + this.time + "; weight:" + new BigDecimal(this.weight) + IteratorUtils.f104924b;
        }

        public HistoricalRecord(ComponentName componentName, long j, float f) {
            this.activity = componentName;
            this.time = j;
            this.weight = f;
        }
    }

    /* loaded from: classes3.dex */
    public interface OnChooseActivityListener {
        boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent);
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserModel$a */
    /* loaded from: classes3.dex */
    public static final class C0219a implements ActivitySorter {

        /* renamed from: b */
        public static final float f1451b = 0.95f;

        /* renamed from: a */
        public final Map<ComponentName, ActivityResolveInfo> f1452a = new HashMap();

        @Override // androidx.appcompat.widget.ActivityChooserModel.ActivitySorter
        public void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2) {
            Map<ComponentName, ActivityResolveInfo> map = this.f1452a;
            map.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ActivityResolveInfo activityResolveInfo = list.get(i);
                activityResolveInfo.weight = 0.0f;
                ActivityInfo activityInfo = activityResolveInfo.resolveInfo.activityInfo;
                map.put(new ComponentName(activityInfo.packageName, activityInfo.name), activityResolveInfo);
            }
            float f = 1.0f;
            for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                HistoricalRecord historicalRecord = list2.get(size2);
                ActivityResolveInfo activityResolveInfo2 = map.get(historicalRecord.activity);
                if (activityResolveInfo2 != null) {
                    activityResolveInfo2.weight += historicalRecord.weight * f;
                    f *= 0.95f;
                }
            }
            Collections.sort(list);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserModel$b */
    /* loaded from: classes3.dex */
    public final class AsyncTaskC0220b extends AsyncTask<Object, Void, Void> {
        public AsyncTaskC0220b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x006b, code lost:
        
            if (r15 != null) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x00d3, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
        
            r15.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
        
            if (r15 == null) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d0, code lost:
        
            if (r15 == null) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
        
            if (r15 == null) goto L30;
         */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.Object... r15) {
            /*
                Method dump skipped, instructions count: 244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserModel.AsyncTaskC0220b.doInBackground(java.lang.Object[]):java.lang.Void");
        }
    }

    public ActivityChooserModel(Context context, String str) {
        this.f1441d = context.getApplicationContext();
        if (TextUtils.isEmpty(str) || str.endsWith(f1436y)) {
            this.f1442e = str;
            return;
        }
        this.f1442e = str + f1436y;
    }

    /* renamed from: d */
    public static ActivityChooserModel m680d(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (f1423A) {
            Map<String, ActivityChooserModel> map = f1424B;
            activityChooserModel = map.get(str);
            if (activityChooserModel == null) {
                activityChooserModel = new ActivityChooserModel(context, str);
                map.put(str, activityChooserModel);
            }
        }
        return activityChooserModel;
    }

    /* renamed from: a */
    public final boolean m681a(HistoricalRecord historicalRecord) {
        boolean add = this.f1440c.add(historicalRecord);
        if (add) {
            this.f1448k = true;
            m693n();
            m692m();
            m701v();
            notifyChanged();
        }
        return add;
    }

    /* renamed from: b */
    public Intent m682b(int i) {
        synchronized (this.f1438a) {
            if (this.f1443f == null) {
                return null;
            }
            m683c();
            ActivityInfo activityInfo = this.f1439b.get(i).resolveInfo.activityInfo;
            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            Intent intent = new Intent(this.f1443f);
            intent.setComponent(componentName);
            if (this.f1450m != null) {
                if (this.f1450m.onChooseActivity(this, new Intent(intent))) {
                    return null;
                }
            }
            m681a(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    /* renamed from: c */
    public final void m683c() {
        boolean m691l = m691l() | m694o();
        m693n();
        if (m691l) {
            m701v();
            notifyChanged();
        }
    }

    /* renamed from: e */
    public ResolveInfo m684e(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f1438a) {
            m683c();
            resolveInfo = this.f1439b.get(i).resolveInfo;
        }
        return resolveInfo;
    }

    /* renamed from: f */
    public int m685f() {
        int size;
        synchronized (this.f1438a) {
            m683c();
            size = this.f1439b.size();
        }
        return size;
    }

    /* renamed from: g */
    public int m686g(ResolveInfo resolveInfo) {
        synchronized (this.f1438a) {
            m683c();
            List<ActivityResolveInfo> list = this.f1439b;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).resolveInfo == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: h */
    public ResolveInfo m687h() {
        synchronized (this.f1438a) {
            m683c();
            if (this.f1439b.isEmpty()) {
                return null;
            }
            return this.f1439b.get(0).resolveInfo;
        }
    }

    /* renamed from: i */
    public int m688i() {
        int i;
        synchronized (this.f1438a) {
            i = this.f1445h;
        }
        return i;
    }

    /* renamed from: j */
    public int m689j() {
        int size;
        synchronized (this.f1438a) {
            m683c();
            size = this.f1440c.size();
        }
        return size;
    }

    /* renamed from: k */
    public Intent m690k() {
        Intent intent;
        synchronized (this.f1438a) {
            intent = this.f1443f;
        }
        return intent;
    }

    /* renamed from: l */
    public final boolean m691l() {
        if (!this.f1449l || this.f1443f == null) {
            return false;
        }
        this.f1449l = false;
        this.f1439b.clear();
        List<ResolveInfo> queryIntentActivities = this.f1441d.getPackageManager().queryIntentActivities(this.f1443f, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.f1439b.add(new ActivityResolveInfo(queryIntentActivities.get(i)));
        }
        return true;
    }

    /* renamed from: m */
    public final void m692m() {
        if (!this.f1447j) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (this.f1448k) {
            this.f1448k = false;
            if (TextUtils.isEmpty(this.f1442e)) {
                return;
            }
            new AsyncTaskC0220b().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f1440c), this.f1442e);
        }
    }

    /* renamed from: n */
    public final void m693n() {
        int size = this.f1440c.size() - this.f1445h;
        if (size <= 0) {
            return;
        }
        this.f1448k = true;
        for (int i = 0; i < size; i++) {
            this.f1440c.remove(0);
        }
    }

    /* renamed from: o */
    public final boolean m694o() {
        if (!this.f1446i || !this.f1448k || TextUtils.isEmpty(this.f1442e)) {
            return false;
        }
        this.f1446i = false;
        this.f1447j = true;
        m695p();
        return true;
    }

    /* renamed from: p */
    public final void m695p() {
        XmlPullParser newPullParser;
        try {
            FileInputStream openFileInput = this.f1441d.openFileInput(this.f1442e);
            try {
                try {
                    try {
                        newPullParser = Xml.newPullParser();
                        newPullParser.setInput(openFileInput, "UTF-8");
                        for (int i = 0; i != 1 && i != 2; i = newPullParser.next()) {
                        }
                    } catch (IOException e) {
                        Log.e(f1426o, "Error reading historical recrod file: " + this.f1442e, e);
                        if (openFileInput == null) {
                            return;
                        }
                    }
                } catch (XmlPullParserException e2) {
                    Log.e(f1426o, "Error reading historical recrod file: " + this.f1442e, e2);
                    if (openFileInput == null) {
                        return;
                    }
                }
                if (!f1427p.equals(newPullParser.getName())) {
                    throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                }
                List<HistoricalRecord> list = this.f1440c;
                list.clear();
                while (true) {
                    int next = newPullParser.next();
                    if (next == 1) {
                        if (openFileInput == null) {
                            return;
                        }
                    } else if (next != 3 && next != 4) {
                        if (!f1428q.equals(newPullParser.getName())) {
                            throw new XmlPullParserException("Share records file not well-formed.");
                        }
                        list.add(new HistoricalRecord(newPullParser.getAttributeValue(null, f1429r), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, "weight"))));
                    }
                }
                try {
                    openFileInput.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException unused3) {
        }
    }

    /* renamed from: q */
    public void m696q(ActivitySorter activitySorter) {
        synchronized (this.f1438a) {
            if (this.f1444g == activitySorter) {
                return;
            }
            this.f1444g = activitySorter;
            if (m701v()) {
                notifyChanged();
            }
        }
    }

    /* renamed from: r */
    public void m697r(int i) {
        synchronized (this.f1438a) {
            m683c();
            ActivityResolveInfo activityResolveInfo = this.f1439b.get(i);
            ActivityResolveInfo activityResolveInfo2 = this.f1439b.get(0);
            float f = activityResolveInfo2 != null ? (activityResolveInfo2.weight - activityResolveInfo.weight) + 5.0f : 1.0f;
            ActivityInfo activityInfo = activityResolveInfo.resolveInfo.activityInfo;
            m681a(new HistoricalRecord(new ComponentName(activityInfo.packageName, activityInfo.name), System.currentTimeMillis(), f));
        }
    }

    /* renamed from: s */
    public void m698s(int i) {
        synchronized (this.f1438a) {
            if (this.f1445h == i) {
                return;
            }
            this.f1445h = i;
            m693n();
            if (m701v()) {
                notifyChanged();
            }
        }
    }

    /* renamed from: t */
    public void m699t(Intent intent) {
        synchronized (this.f1438a) {
            if (this.f1443f == intent) {
                return;
            }
            this.f1443f = intent;
            this.f1449l = true;
            m683c();
        }
    }

    /* renamed from: u */
    public void m700u(OnChooseActivityListener onChooseActivityListener) {
        synchronized (this.f1438a) {
            this.f1450m = onChooseActivityListener;
        }
    }

    /* renamed from: v */
    public final boolean m701v() {
        if (this.f1444g == null || this.f1443f == null || this.f1439b.isEmpty() || this.f1440c.isEmpty()) {
            return false;
        }
        this.f1444g.sort(this.f1443f, this.f1439b, Collections.unmodifiableList(this.f1440c));
        return true;
    }
}
