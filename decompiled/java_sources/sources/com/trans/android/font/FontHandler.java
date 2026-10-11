package com.trans.android.font;

import android.graphics.Typeface;
import android.util.LruCache;
import com.onyx.common.util.ArrayUtils;
import com.onyx.common.util.CollectionUtils;
import com.onyx.common.util.FileUtils;
import com.onyx.common.util.JLog;
import com.onyx.common.util.StringUtils;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.trans.android.font.FontHandler;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.poi.hssf.usermodel.HSSFFont;

/* loaded from: classes10.dex */
public class FontHandler {
    private static final String FONT_REGULAR = "Regular";
    private static final String FONT_SERIF = "Serif";
    public static final String OTF = "otf";
    public static final String SYSTEM_FONTS_PATH = "/system/fonts/";
    private static final String TAG = "FontHandler";
    public static final String TTC = "ttc";
    public static final String TTF = "ttf";
    public static final String WIN_FONTS_PATH = "/sdcard/fonts/";
    private Map<String, List<HBTypeface>> defTypefaces;
    private static final String FONT_ONYX_CUSTOM_EN = "OnyxCustomFont-EN";
    private static final String FONT_ROBOTO = "Roboto";
    private static final String FONT_SYMBOLS = "Symbols";
    private static List<String> defaultEnglishFontList = Arrays.asList(FONT_ONYX_CUSTOM_EN, FONT_ROBOTO, "Serif", FONT_SYMBOLS);
    private static final String FONT_ONYX_CUSTOM_ZH = "OnyxCustomFont-ZH";
    private static final String FONT_ONYX_CUSTOM = "OnyxCustomFont";
    private static final String FONT_CJK = "CJK";
    private static List<String> defaultChineseFontList = Arrays.asList(FONT_ONYX_CUSTOM_ZH, FONT_ONYX_CUSTOM, FONT_CJK);
    private final LruCache<String, Typeface> TYPEFACE_CACHE = new LruCache<>(8);
    private final LruCache<String, HBTypeface> HB_TYPEFACE_CACHE = new LruCache<String, HBTypeface>(8) { // from class: com.trans.android.font.FontHandler.1
        @Override // android.util.LruCache
        public void entryRemoved(boolean z, String str, HBTypeface hBTypeface, HBTypeface hBTypeface2) {
            if (hBTypeface != null) {
                hBTypeface.dispose();
            }
        }
    };

    private void addSymbolPathList(Map<String, List<String>> map, List<String> list) {
        for (String str : list) {
            if (FileUtils.fileCanRead(str) && StringUtils.containsIgnoreCase(FileUtils.getBaseName(str), FONT_SYMBOLS)) {
                CollectionUtils.ensureList((Map<String, List<V>>) map, "en").add(str);
            }
        }
    }

    private HBTypeface createTypeface(String str) {
        try {
            return new HBTypeface(new File(str));
        } catch (Exception e) {
            JLog.m41644e(TAG, e, str, new Object[0]);
            return null;
        }
    }

    private String findDefaultFontPath(List<String> list, List<String> list2) {
        if (CollectionUtils.isNullOrEmpty(list2)) {
            return "";
        }
        for (String str : list) {
            for (String str2 : list2) {
                if (StringUtils.containsIgnoreCase(FileUtils.getBaseName(str2), str)) {
                    return str2;
                }
            }
        }
        return list2.get(0);
    }

    private void initDefaultTypefaceMap(Map<String, List<HBTypeface>> map) {
        for (Map.Entry<String, List<String>> entry : loadDefaultFontPaths().entrySet()) {
            Iterator<String> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                HBTypeface createTypeface = createTypeface(it2.next());
                if (createTypeface != null) {
                    CollectionUtils.ensureList((Map<String, List<V>>) map, entry.getKey()).add(createTypeface);
                }
            }
        }
        Comparator comparator = new Comparator() { // from class: com.sunia.HTREnginev2.zpg
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$initDefaultTypefaceMap$0;
                lambda$initDefaultTypefaceMap$0 = FontHandler.lambda$initDefaultTypefaceMap$0((HBTypeface) obj, (HBTypeface) obj2);
                return lambda$initDefaultTypefaceMap$0;
            }
        };
        Iterator<List<HBTypeface>> it3 = map.values().iterator();
        while (it3.hasNext()) {
            Collections.sort(it3.next(), comparator);
        }
    }

    private boolean isDefaultFont(List<String> list, String str) {
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (StringUtils.containsIgnoreCase(str, it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isFontFile(String str) {
        return isTtfFile(str) || isTtcFile(str) || isOtfFIle(str);
    }

    private boolean isNormalFont(String str) {
        return StringUtils.containsIgnoreCase(str, FONT_REGULAR);
    }

    public static boolean isOtfFIle(String str) {
        return StringUtils.equalsIgnoreCase(FileUtils.getExtension(str), "otf");
    }

    public static boolean isSystemFont(String str) {
        return StringUtils.startsWith(str, "/system/fonts/");
    }

    public static boolean isTtcFile(String str) {
        return StringUtils.equalsIgnoreCase(FileUtils.getExtension(str), "ttc");
    }

    public static boolean isTtfFile(String str) {
        return StringUtils.equalsIgnoreCase(FileUtils.getExtension(str), "ttf");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$initDefaultTypefaceMap$0(HBTypeface hBTypeface, HBTypeface hBTypeface2) {
        return hBTypeface.getWeight() == hBTypeface2.getWeight() ? hBTypeface.getSlope().compareTo(hBTypeface2.getSlope()) : hBTypeface.getWeight().compareTo(hBTypeface2.getWeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$loadSystemFontFiles$1(File file) {
        return FileUtils.fileCanRead(file.getAbsolutePath()) && file.isFile() && isFontFile(file.getAbsolutePath());
    }

    private Map<String, List<String>> loadDefaultFontPaths() {
        if (!FileUtils.fileCanRead("/system/fonts/")) {
            JLog.m41651w(TAG, "/system/fonts/, cannot read!", new Object[0]);
            return new HashMap();
        }
        File[] loadSystemFontFiles = loadSystemFontFiles();
        if (ArrayUtils.isNullOrEmpty(loadSystemFontFiles)) {
            JLog.m41651w(TAG, "font file not found!", new Object[0]);
            return new HashMap();
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (File file : loadSystemFontFiles) {
            String fileBaseName = FileUtils.getFileBaseName(file.getName());
            if (isNormalFont(fileBaseName)) {
                if (isDefaultFont(defaultEnglishFontList, fileBaseName)) {
                    arrayList2.add(file.getAbsolutePath());
                } else if (isDefaultFont(defaultChineseFontList, fileBaseName)) {
                    arrayList.add(file.getAbsolutePath());
                }
            }
        }
        String findDefaultFontPath = findDefaultFontPath(defaultEnglishFontList, arrayList2);
        if (FileUtils.fileCanRead(findDefaultFontPath)) {
            CollectionUtils.ensureList(hashMap, "en").add(findDefaultFontPath);
        }
        addSymbolPathList(hashMap, arrayList2);
        String findDefaultFontPath2 = findDefaultFontPath(defaultChineseFontList, arrayList);
        if (FileUtils.fileCanRead(findDefaultFontPath2)) {
            CollectionUtils.ensureList(hashMap, Lang.f93893CN).add(findDefaultFontPath2);
        }
        if (CollectionUtils.isNullOrEmpty(hashMap)) {
            String absolutePath = loadSystemFontFiles[0].getAbsolutePath();
            JLog.m41651w(TAG, "default config font not found, use first system font as default font. path = " + absolutePath, new Object[0]);
            CollectionUtils.ensureList(hashMap, "en").add(absolutePath);
        }
        return hashMap;
    }

    private File[] loadSystemFontFiles() {
        return new File("/system/fonts/").listFiles(new FileFilter() { // from class: com.sunia.HTREnginev2.ypg
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                boolean lambda$loadSystemFontFiles$1;
                lambda$loadSystemFontFiles$1 = FontHandler.lambda$loadSystemFontFiles$1(file);
                return lambda$loadSystemFontFiles$1;
            }
        });
    }

    public Map<String, List<HBTypeface>> getDefTypefaces() {
        if (this.defTypefaces == null) {
            HashMap hashMap = new HashMap();
            this.defTypefaces = hashMap;
            initDefaultTypefaceMap(hashMap);
        }
        return this.defTypefaces;
    }

    public String[] getDefaultFont() {
        String[] strArr = {HSSFFont.FONT_ARIAL, "/sdcard/fonts/arial.ttf"};
        if (!FileUtils.fileCanRead(strArr[1])) {
            strArr[0] = null;
            strArr[1] = null;
            getDefaultFont(strArr);
        }
        return strArr;
    }

    public HBTypeface getHBTypeface(String str) {
        HBTypeface hBTypeface = this.HB_TYPEFACE_CACHE.get(str);
        if (hBTypeface != null) {
            return hBTypeface;
        }
        HBTypeface createTypeface = createTypeface(str);
        this.HB_TYPEFACE_CACHE.put(str, createTypeface);
        return createTypeface;
    }

    public Typeface getTypeface(String str) {
        Typeface typeface = this.TYPEFACE_CACHE.get(str);
        if (typeface != null) {
            return typeface;
        }
        Typeface createFromFile = Typeface.createFromFile(str);
        this.TYPEFACE_CACHE.put(str, createFromFile);
        return createFromFile;
    }

    public String getWinFontPath() {
        return WIN_FONTS_PATH;
    }

    public void release() {
        Map<String, List<HBTypeface>> map = this.defTypefaces;
        if (map != null) {
            Iterator<List<HBTypeface>> it2 = map.values().iterator();
            while (it2.hasNext()) {
                Iterator<HBTypeface> it3 = it2.next().iterator();
                while (it3.hasNext()) {
                    it3.next().dispose();
                }
            }
            this.defTypefaces.clear();
            this.defTypefaces = null;
        }
        this.TYPEFACE_CACHE.evictAll();
        this.HB_TYPEFACE_CACHE.evictAll();
    }

    private void getDefaultFont(String[] strArr) {
        HBTypeface hBTypeface;
        Map<String, List<HBTypeface>> defTypefaces = getDefTypefaces();
        List<HBTypeface> list = defTypefaces.get(Lang.f93893CN);
        if (list.isEmpty()) {
            Iterator<List<HBTypeface>> it2 = defTypefaces.values().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    hBTypeface = null;
                    break;
                }
                List<HBTypeface> next = it2.next();
                if (!next.isEmpty()) {
                    hBTypeface = next.get(0);
                    break;
                }
            }
        } else {
            hBTypeface = list.get(0);
        }
        if (hBTypeface != null) {
            strArr[0] = hBTypeface.getFullName();
            strArr[1] = hBTypeface.getFilePath();
        }
    }
}
