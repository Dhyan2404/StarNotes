package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceManager;
import androidx.preference.SwitchPreference;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class v6l {

    /* renamed from: e */
    public static final Class<?>[] f87194e = {Context.class, AttributeSet.class};

    /* renamed from: f */
    public static final HashMap<String, Constructor> f87195f = new HashMap<>();

    /* renamed from: g */
    public static final String f87196g = "intent";

    /* renamed from: h */
    public static final String f87197h = "extra";

    /* renamed from: a */
    public final Context f87198a;

    /* renamed from: b */
    public final Object[] f87199b = new Object[2];

    /* renamed from: c */
    public PreferenceManager f87200c;

    /* renamed from: d */
    public String[] f87201d;

    public v6l(Context context, PreferenceManager preferenceManager) {
        this.f87198a = context;
        m57747g(preferenceManager);
    }

    /* renamed from: l */
    public static void m57740l(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        }
    }

    /* renamed from: a */
    public final Preference m57741a(@NonNull String str, @Nullable String[] strArr, AttributeSet attributeSet) throws ClassNotFoundException, InflateException {
        Class<?> cls;
        Constructor<?> constructor = f87195f.get(str);
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.f87198a.getClassLoader();
                    if (strArr != null && strArr.length != 0) {
                        cls = null;
                        ClassNotFoundException e = null;
                        for (String str2 : strArr) {
                            try {
                                cls = Class.forName(str2 + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e2) {
                                e = e2;
                            }
                        }
                        if (cls == null) {
                            if (e != null) {
                                throw e;
                            }
                            throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                        }
                        constructor = cls.getConstructor(f87194e);
                        constructor.setAccessible(true);
                        f87195f.put(str, constructor);
                    }
                    cls = Class.forName(str, false, classLoader);
                    constructor = cls.getConstructor(f87194e);
                    constructor.setAccessible(true);
                    f87195f.put(str, constructor);
                } catch (ClassNotFoundException e3) {
                    throw e3;
                }
            } catch (Exception e4) {
                InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                inflateException.initCause(e4);
                throw inflateException;
            }
        }
        Object[] objArr = this.f87199b;
        objArr[1] = attributeSet;
        return (Preference) constructor.newInstance(objArr);
    }

    /* renamed from: b */
    public final Preference m57742b(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? m57748h(str, attributeSet) : m57741a(str, null, attributeSet);
        } catch (InflateException e) {
            throw e;
        } catch (ClassNotFoundException e2) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e2);
            throw inflateException;
        } catch (Exception e3) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e3);
            throw inflateException2;
        }
    }

    /* renamed from: c */
    public Context m57743c() {
        return this.f87198a;
    }

    /* renamed from: d */
    public String[] m57744d() {
        return this.f87201d;
    }

    /* renamed from: e */
    public Preference m57745e(int i, @Nullable PreferenceGroup preferenceGroup) {
        XmlResourceParser xml = m57743c().getResources().getXml(i);
        try {
            return m57746f(xml, preferenceGroup);
        } finally {
            xml.close();
        }
    }

    /* renamed from: f */
    public Preference m57746f(XmlPullParser xmlPullParser, @Nullable PreferenceGroup preferenceGroup) {
        int next;
        PreferenceGroup m57749i;
        synchronized (this.f87199b) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.f87199b[0] = this.f87198a;
            do {
                try {
                    next = xmlPullParser.next();
                    if (next == 2) {
                        break;
                    }
                } catch (InflateException e) {
                    throw e;
                } catch (IOException e2) {
                    InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e2.getMessage());
                    inflateException.initCause(e2);
                    throw inflateException;
                } catch (XmlPullParserException e3) {
                    InflateException inflateException2 = new InflateException(e3.getMessage());
                    inflateException2.initCause(e3);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
            m57749i = m57749i(preferenceGroup, (PreferenceGroup) m57742b(xmlPullParser.getName(), asAttributeSet));
            m57750j(xmlPullParser, m57749i, asAttributeSet);
        }
        return m57749i;
    }

    /* renamed from: g */
    public final void m57747g(PreferenceManager preferenceManager) {
        this.f87200c = preferenceManager;
        m57751k(new String[]{Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."});
    }

    /* renamed from: h */
    public Preference m57748h(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return m57741a(str, this.f87201d, attributeSet);
    }

    @NonNull
    /* renamed from: i */
    public final PreferenceGroup m57749i(PreferenceGroup preferenceGroup, @NonNull PreferenceGroup preferenceGroup2) {
        if (preferenceGroup != null) {
            return preferenceGroup;
        }
        preferenceGroup2.onAttachedToHierarchy(this.f87200c);
        return preferenceGroup2;
    }

    /* renamed from: j */
    public final void m57750j(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (f87196g.equals(name)) {
                    try {
                        preference.setIntent(Intent.parseIntent(m57743c().getResources(), xmlPullParser, attributeSet));
                    } catch (IOException e) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    m57743c().getResources().parseBundleExtra("extra", attributeSet, preference.getExtras());
                    try {
                        m57740l(xmlPullParser);
                    } catch (IOException e2) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e2);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference m57742b = m57742b(name, attributeSet);
                    ((PreferenceGroup) preference).addItemFromInflater(m57742b);
                    m57750j(xmlPullParser, m57742b, attributeSet);
                }
            }
        }
    }

    /* renamed from: k */
    public void m57751k(String[] strArr) {
        this.f87201d = strArr;
    }
}
