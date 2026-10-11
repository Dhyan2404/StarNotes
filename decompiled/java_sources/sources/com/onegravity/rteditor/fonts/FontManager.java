package com.onegravity.rteditor.fonts;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import androidx.annotation.WorkerThread;
import com.onegravity.rteditor.fonts.FontManager;
import com.onegravity.rteditor.utils.io.FilenameUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.sunia.HTREnginev2.AbstractC14500uf;
import com.sunia.HTREnginev2.u7n;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.function.Function;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes7.dex */
public class FontManager {
    public static final String DEFAULT_FONT_NAME = "default";

    /* renamed from: a */
    public static final String[] f40371a = {"/system/fonts", "/system/font", "/data/fonts"};

    /* renamed from: b */
    public static final Map<String, String> f40372b = new TreeMap();

    /* renamed from: c */
    public static final Map<String, String> f40373c = new TreeMap();

    /* renamed from: d */
    public static final Map<String, String> f40374d = new TreeMap();

    /* renamed from: e */
    public static final Map<String, List<String>> f40375e = new TreeMap();

    /* renamed from: f */
    public static final Map<String, String> f40376f = new TreeMap();

    /* renamed from: g */
    public static final RTTypefaceSet f40377g = new RTTypefaceSet() { // from class: com.onegravity.rteditor.fonts.FontManager.1
        @Override // com.onegravity.rteditor.fonts.RTTypefaceSet
        public boolean contains(String str) {
            return get(str) != null;
        }

        @Override // com.onegravity.rteditor.fonts.RTTypefaceSet
        public RTTypeface get(String str) {
            Iterator<RTTypeface> it2 = iterator();
            while (it2.hasNext()) {
                RTTypeface next = it2.next();
                if (next.getName().equals(str)) {
                    return next;
                }
            }
            return null;
        }
    };

    public static void addFontFace(String str, String str2, Typeface typeface) {
        RTTypeface typeface2 = getTypeface(str);
        if (typeface2 != null) {
            f40377g.remove(typeface2);
        }
        f40377g.add(new RTTypeface(str, typeface).setFontPath(str2));
    }

    /* renamed from: c */
    public static Map<String, String> m31669c(Context context) {
        Map<String, String> map;
        Map<String, String> map2 = f40372b;
        synchronized (map2) {
            if (map2.isEmpty()) {
                AssetManager assets = context.getResources().getAssets();
                Collection<String> m57616a = AbstractC14500uf.m57616a(context);
                if (m57616a == null || m57616a.isEmpty()) {
                    m57616a = m31673g(context.getResources());
                }
                for (String str : m57616a) {
                    if (str.toLowerCase(Locale.getDefault()).endsWith("ttf")) {
                        String m57546a = u7n.m57546a(assets, str);
                        if (m57546a == null) {
                            m57546a = getFileName(str);
                        }
                        f40372b.put(m57546a, str);
                    }
                }
            }
            map = f40372b;
        }
        return map;
    }

    /* renamed from: d */
    public static Map<String, String> m31670d() {
        Map<String, String> map;
        File[] listFiles;
        synchronized (f40374d) {
            for (String str : f40371a) {
                File file = new File(str);
                if (file.exists() && (listFiles = file.listFiles()) != null) {
                    for (File file2 : listFiles) {
                        String absolutePath = file2.getAbsolutePath();
                        Map<String, String> map2 = f40373c;
                        if (!map2.containsKey(absolutePath)) {
                            String m57547b = u7n.m57547b(file2.getAbsolutePath());
                            if (m57547b == null) {
                                m57547b = getFileName(absolutePath);
                            }
                            map2.put(absolutePath, m57547b);
                            f40374d.put(m57547b, absolutePath);
                        }
                    }
                }
            }
            map = f40374d;
        }
        return map;
    }

    /* renamed from: e */
    public static /* synthetic */ List m31671e(String str) {
        return new ArrayList();
    }

    @WorkerThread
    public static List<String> ensureLoadCustomFonts(String str) {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        RTTypefaceSet rTTypefaceSet = f40377g;
        if (!rTTypefaceSet.contains("default")) {
            addFontFace("default", "", Typeface.DEFAULT);
            arrayList.add("default");
        }
        if (f40375e.containsKey(str) && !rTTypefaceSet.isEmpty()) {
            return arrayList;
        }
        File file = new File(str);
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return arrayList;
        }
        for (File file2 : listFiles) {
            String absolutePath = file2.getAbsolutePath();
            FontUtils fontUtils = FontUtils.INSTANCE;
            if (fontUtils.isFontFile(absolutePath)) {
                Typeface loadTypefaceFromFile = fontUtils.loadTypefaceFromFile(absolutePath);
                Map<String, String> map = f40376f;
                if (!map.containsValue(absolutePath)) {
                    String fontName = fontUtils.loadFontInfo(file2).getFontName();
                    if (fontName == null) {
                        fontName = getFileName(absolutePath);
                    } else {
                        addFontFace(absolutePath, loadTypefaceFromFile);
                    }
                    addFontFace(fontName, absolutePath, loadTypefaceFromFile);
                    map.put(fontName, absolutePath);
                    f40375e.computeIfAbsent(str, new Function() { // from class: com.sunia.HTREnginev2.srg
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            List m31671e;
                            m31671e = FontManager.m31671e((String) obj);
                            return m31671e;
                        }
                    }).add(fontName);
                    arrayList.add(fontName);
                }
            } else {
                Debug.INSTANCE.m32059w(FontManager.class, "invalid font file: " + file2.getAbsolutePath(), new Object[0]);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static /* synthetic */ void m31672f(Context context) {
        synchronized (f40372b) {
            m31669c(context);
        }
        synchronized (f40374d) {
            m31670d();
        }
    }

    /* renamed from: g */
    public static Collection<String> m31673g(Resources resources) {
        ArrayList arrayList = new ArrayList();
        m31674h(resources.getAssets(), arrayList, "", 0);
        return arrayList;
    }

    public static String getFileName(String str) {
        return FilenameUtils.getBaseName(str).replace(File.pathSeparator, "").replaceAll(" ", "").replaceAll("\\ ", "");
    }

    public static SortedSet<RTTypeface> getFonts(Context context) {
        Map<String, String> m31669c = m31669c(context);
        AssetManager assets = context.getResources().getAssets();
        for (String str : m31669c.keySet()) {
            String str2 = m31669c.get(str);
            RTTypefaceSet rTTypefaceSet = f40377g;
            if (!rTTypefaceSet.contains(str)) {
                try {
                    rTTypefaceSet.add(new RTTypeface(str, Typeface.createFromAsset(assets, str2)));
                } catch (Exception unused) {
                }
            }
        }
        Map<String, String> m31670d = m31670d();
        for (String str3 : m31670d.keySet()) {
            String str4 = m31670d.get(str3);
            RTTypefaceSet rTTypefaceSet2 = f40377g;
            if (!rTTypefaceSet2.contains(str3)) {
                try {
                    rTTypefaceSet2.add(new RTTypeface(str3, Typeface.createFromFile(str4)));
                } catch (Exception unused2) {
                }
            }
        }
        return f40377g;
    }

    public static Typeface getTypeFaceByCustomFontPath(String str) {
        String str2 = "";
        for (Map.Entry<String, String> entry : f40376f.entrySet()) {
            if (StringUtils.equals(str, entry.getValue())) {
                str2 = entry.getKey();
            }
        }
        RTTypeface typeface = getTypeface(str2);
        if (typeface == null) {
            typeface = getTypeface(getFileName(str));
        }
        if (typeface == null) {
            return null;
        }
        return typeface.getTypeface();
    }

    public static RTTypeface getTypeface(String str) {
        return f40377g.get(str);
    }

    /* renamed from: h */
    public static void m31674h(AssetManager assetManager, Collection<String> collection, String str, int i) {
        if (i >= 8) {
            return;
        }
        try {
            String[] list = assetManager.list(str);
            if (list == null || list.length <= 0) {
                if (str.endsWith("ttf")) {
                    collection.add(str);
                    return;
                }
                return;
            }
            for (String str2 : list) {
                i++;
                m31674h(assetManager, collection, ("".equals(str) ? "" : str + File.separator) + str2, i);
            }
        } catch (IOException unused) {
        }
    }

    public static void preLoadFonts(final Context context) {
        new Thread(new Runnable() { // from class: com.sunia.HTREnginev2.trg
            @Override // java.lang.Runnable
            public final void run() {
                FontManager.m31672f(context);
            }
        }).start();
    }

    public static void addFontFace(String str, Typeface typeface) {
        addFontFace(getFileName(str), str, typeface);
    }
}
