package androidx.core.content.pm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class ShortcutXmlParser {

    /* renamed from: a */
    public static final String f5327a = "ShortcutXmlParser";

    /* renamed from: b */
    public static final String f5328b = "android.app.shortcuts";

    /* renamed from: c */
    public static final String f5329c = "shortcut";

    /* renamed from: d */
    public static final String f5330d = "shortcutId";

    /* renamed from: e */
    public static volatile ArrayList<String> f5331e;

    /* renamed from: f */
    public static final Object f5332f = new Object();

    /* renamed from: a */
    public static String m2834a(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str);
        return attributeValue == null ? xmlPullParser.getAttributeValue(null, str) : attributeValue;
    }

    @NonNull
    /* renamed from: b */
    public static XmlResourceParser m2835b(Context context, ActivityInfo activityInfo) {
        XmlResourceParser loadXmlMetaData = activityInfo.loadXmlMetaData(context.getPackageManager(), f5328b);
        if (loadXmlMetaData != null) {
            return loadXmlMetaData;
        }
        throw new IllegalArgumentException("Failed to open android.app.shortcuts meta-data resource of " + activityInfo.name);
    }

    @NonNull
    /* renamed from: c */
    public static Set<String> m2836c(@NonNull Context context) {
        HashSet hashSet = new HashSet();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 128);
        if (queryIntentActivities != null && queryIntentActivities.size() != 0) {
            try {
                Iterator<ResolveInfo> it2 = queryIntentActivities.iterator();
                while (it2.hasNext()) {
                    ActivityInfo activityInfo = it2.next().activityInfo;
                    Bundle bundle = activityInfo.metaData;
                    if (bundle != null && bundle.containsKey(f5328b)) {
                        XmlResourceParser m2835b = m2835b(context, activityInfo);
                        try {
                            hashSet.addAll(parseShortcutIds(m2835b));
                            if (m2835b != null) {
                                m2835b.close();
                            }
                        } finally {
                        }
                    }
                }
            } catch (Exception e) {
                Log.e(f5327a, "Failed to parse the Xml resource: ", e);
            }
        }
        return hashSet;
    }

    @NonNull
    @WorkerThread
    public static List<String> getShortcutIds(@NonNull Context context) {
        if (f5331e == null) {
            synchronized (f5332f) {
                if (f5331e == null) {
                    f5331e = new ArrayList<>();
                    f5331e.addAll(m2836c(context));
                }
            }
        }
        return f5331e;
    }

    @NonNull
    @VisibleForTesting
    public static List<String> parseShortcutIds(@NonNull XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String m2834a;
        ArrayList arrayList = new ArrayList(1);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= 0)) {
                break;
            }
            int depth = xmlPullParser.getDepth();
            String name = xmlPullParser.getName();
            if (next == 2 && depth == 2 && f5329c.equals(name) && (m2834a = m2834a(xmlPullParser, f5330d)) != null) {
                arrayList.add(m2834a);
            }
        }
        return arrayList;
    }
}
