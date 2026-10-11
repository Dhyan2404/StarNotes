package sun.awt;

import java.awt.FontFormatException;
import java.awt.GraphicsEnvironment;
import java.io.File;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.style.TextStyles;
import sun.font.SunFontManager;
import sun.font.TrueTypeFont;

/* loaded from: classes16.dex */
public final class Win32FontManager extends SunFontManager {
    private static TrueTypeFont eudcFont;
    static String fontsForPrinting;

    static {
        AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.awt.Win32FontManager.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                String access$000 = Win32FontManager.access$000();
                if (access$000 == null) {
                    return null;
                }
                try {
                    TrueTypeFont unused = Win32FontManager.eudcFont = new TrueTypeFont(access$000, null, 0, true, false);
                    return null;
                } catch (FontFormatException unused2) {
                    return null;
                }
            }
        });
        fontsForPrinting = null;
    }

    public Win32FontManager() {
        AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.awt.Win32FontManager.2
            @Override // java.security.PrivilegedAction
            public Object run() {
                Win32FontManager.this.registerJREFontsWithPlatform(SunFontManager.jreFontDirName);
                return null;
            }
        });
    }

    public static /* synthetic */ String access$000() {
        return getEUDCFontFile();
    }

    private static native void deRegisterFontWithPlatform(String str);

    private static native String getEUDCFontFile();

    private static native void populateFontFileNameMap0(HashMap<String, String> hashMap, HashMap<String, String> hashMap2, HashMap<String, ArrayList<String>> hashMap3, Locale locale);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void registerFontWithPlatform(String str);

    public static void registerJREFontsForPrinting() {
        synchronized (Win32FontManager.class) {
            GraphicsEnvironment.getLocalGraphicsEnvironment();
            final String str = fontsForPrinting;
            if (str == null) {
                return;
            }
            fontsForPrinting = null;
            AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.awt.Win32FontManager.4
                @Override // java.security.PrivilegedAction
                public Object run() {
                    File file = new File(str);
                    String[] list = file.list(SunFontManager.getInstance().getTrueTypeFilter());
                    if (list == null) {
                        return null;
                    }
                    for (String str2 : list) {
                        Win32FontManager.registerFontWithPlatform(new File(file, str2).getAbsolutePath());
                    }
                    return null;
                }
            });
        }
    }

    @Override // sun.font.SunFontManager
    public FontConfiguration createFontConfiguration() {
        WFontConfiguration wFontConfiguration = new WFontConfiguration(this);
        wFontConfiguration.init();
        return wFontConfiguration;
    }

    @Override // sun.font.SunFontManager
    public String[] getDefaultPlatformFont() {
        String[] strArr = {HSSFFont.FONT_ARIAL, "c:\\windows\\fonts"};
        final String[] platformFontDirs = getPlatformFontDirs(true);
        if (platformFontDirs.length > 1) {
            String str = (String) AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.awt.Win32FontManager.3
                @Override // java.security.PrivilegedAction
                public Object run() {
                    for (int i = 0; i < platformFontDirs.length; i++) {
                        if (new File(platformFontDirs[i] + File.separator + "arial.ttf").exists()) {
                            return platformFontDirs[i];
                        }
                    }
                    return null;
                }
            });
            if (str != null) {
                strArr[1] = str;
            }
        } else {
            strArr[1] = platformFontDirs[0];
        }
        strArr[1] = strArr[1] + File.separator + "arial.ttf";
        return strArr;
    }

    @Override // sun.font.SunFontManager
    public TrueTypeFont getEUDCFont() {
        return eudcFont;
    }

    @Override // sun.font.SunFontManager
    public native synchronized String getFontPath(boolean z);

    @Override // sun.font.SunFontManager
    public void populateFontFileNameMap(HashMap<String, String> hashMap, HashMap<String, String> hashMap2, HashMap<String, ArrayList<String>> hashMap3, Locale locale) {
        populateFontFileNameMap0(hashMap, hashMap2, hashMap3, locale);
    }

    @Override // sun.font.SunFontManager
    public HashMap<String, SunFontManager.FamilyDescription> populateHardcodedFileNameMap() {
        HashMap<String, SunFontManager.FamilyDescription> hashMap = new HashMap<>();
        SunFontManager.FamilyDescription familyDescription = new SunFontManager.FamilyDescription();
        familyDescription.familyName = "Segoe UI";
        familyDescription.plainFullName = "Segoe UI";
        familyDescription.plainFileName = "segoeui.ttf";
        familyDescription.boldFullName = "Segoe UI Bold";
        familyDescription.boldFileName = "segoeuib.ttf";
        familyDescription.italicFullName = "Segoe UI Italic";
        familyDescription.italicFileName = "segoeuii.ttf";
        familyDescription.boldItalicFullName = "Segoe UI Bold Italic";
        familyDescription.boldItalicFileName = "segoeuiz.ttf";
        hashMap.put("segoe", familyDescription);
        SunFontManager.FamilyDescription familyDescription2 = new SunFontManager.FamilyDescription();
        familyDescription2.familyName = "Tahoma";
        familyDescription2.plainFullName = "Tahoma";
        familyDescription2.plainFileName = "tahoma.ttf";
        familyDescription2.boldFullName = "Tahoma Bold";
        familyDescription2.boldFileName = "tahomabd.ttf";
        hashMap.put("tahoma", familyDescription2);
        SunFontManager.FamilyDescription familyDescription3 = new SunFontManager.FamilyDescription();
        familyDescription3.familyName = "Verdana";
        familyDescription3.plainFullName = "Verdana";
        familyDescription3.plainFileName = "verdana.TTF";
        familyDescription3.boldFullName = "Verdana Bold";
        familyDescription3.boldFileName = "verdanab.TTF";
        familyDescription3.italicFullName = "Verdana Italic";
        familyDescription3.italicFileName = "verdanai.TTF";
        familyDescription3.boldItalicFullName = "Verdana Bold Italic";
        familyDescription3.boldItalicFileName = "verdanaz.TTF";
        hashMap.put("verdana", familyDescription3);
        SunFontManager.FamilyDescription familyDescription4 = new SunFontManager.FamilyDescription();
        familyDescription4.familyName = HSSFFont.FONT_ARIAL;
        familyDescription4.plainFullName = HSSFFont.FONT_ARIAL;
        familyDescription4.plainFileName = "ARIAL.TTF";
        familyDescription4.boldFullName = "Arial Bold";
        familyDescription4.boldFileName = "ARIALBD.TTF";
        familyDescription4.italicFullName = "Arial Italic";
        familyDescription4.italicFileName = "ARIALI.TTF";
        familyDescription4.boldItalicFullName = "Arial Bold Italic";
        familyDescription4.boldItalicFileName = "ARIALBI.TTF";
        hashMap.put("arial", familyDescription4);
        SunFontManager.FamilyDescription familyDescription5 = new SunFontManager.FamilyDescription();
        familyDescription5.familyName = TextStyles.FONT_SYMBOL;
        familyDescription5.plainFullName = TextStyles.FONT_SYMBOL;
        familyDescription5.plainFileName = "Symbol.TTF";
        hashMap.put("symbol", familyDescription5);
        SunFontManager.FamilyDescription familyDescription6 = new SunFontManager.FamilyDescription();
        familyDescription6.familyName = "WingDings";
        familyDescription6.plainFullName = "WingDings";
        familyDescription6.plainFileName = "WINGDING.TTF";
        hashMap.put("wingdings", familyDescription6);
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
    
        r1 = r4.getAbsolutePath();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
    
        if (r15 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
    
        registerDeferredFont(r12, r1, r13, r0, r9, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007c, code lost:
    
        registerFontFile(r1, r13, r0, r9, r14);
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    @Override // sun.font.SunFontManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void registerFontFile(java.lang.String r12, java.lang.String[] r13, int r14, boolean r15) {
        /*
            r11 = this;
            java.util.HashSet<java.lang.String> r0 = r11.registeredFontFiles
            boolean r0 = r0.contains(r12)
            if (r0 == 0) goto L9
            return
        L9:
            java.util.HashSet<java.lang.String> r0 = r11.registeredFontFiles
            r0.add(r12)
            java.io.FilenameFilter r0 = r11.getTrueTypeFilter()
            r1 = 0
            boolean r0 = r0.accept(r1, r12)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L1d
            r0 = r3
            goto L28
        L1d:
            java.io.FilenameFilter r0 = r11.getType1Filter()
            boolean r0 = r0.accept(r1, r12)
            if (r0 == 0) goto L96
            r0 = r2
        L28:
            java.lang.String r1 = r11.fontPath
            if (r1 != 0) goto L34
            boolean r1 = sun.font.SunFontManager.noType1Font
            java.lang.String r1 = r11.getPlatformFontPath(r1)
            r11.fontPath = r1
        L34:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = sun.font.SunFontManager.jreFontDirName
            r1.append(r4)
            java.lang.String r4 = java.io.File.pathSeparator
            r1.append(r4)
            java.lang.String r5 = r11.fontPath
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            java.util.StringTokenizer r5 = new java.util.StringTokenizer
            r5.<init>(r1, r4)
        L51:
            boolean r1 = r5.hasMoreTokens()     // Catch: java.util.NoSuchElementException -> L8a
            if (r1 == 0) goto L88
            java.lang.String r1 = r5.nextToken()     // Catch: java.util.NoSuchElementException -> L8a
            java.lang.String r4 = sun.font.SunFontManager.jreFontDirName     // Catch: java.util.NoSuchElementException -> L8a
            boolean r9 = r1.equals(r4)     // Catch: java.util.NoSuchElementException -> L8a
            java.io.File r4 = new java.io.File     // Catch: java.util.NoSuchElementException -> L8a
            r4.<init>(r1, r12)     // Catch: java.util.NoSuchElementException -> L8a
            boolean r1 = r4.canRead()     // Catch: java.util.NoSuchElementException -> L8a
            if (r1 == 0) goto L51
            java.lang.String r1 = r4.getAbsolutePath()     // Catch: java.util.NoSuchElementException -> L86
            if (r15 == 0) goto L7c
            r4 = r11
            r5 = r12
            r6 = r1
            r7 = r13
            r8 = r0
            r10 = r14
            r4.registerDeferredFont(r5, r6, r7, r8, r9, r10)     // Catch: java.util.NoSuchElementException -> L86
            goto L91
        L7c:
            r4 = r11
            r5 = r1
            r6 = r13
            r7 = r0
            r8 = r9
            r9 = r14
            r4.registerFontFile(r5, r6, r7, r8, r9)     // Catch: java.util.NoSuchElementException -> L86
            goto L91
        L86:
            r13 = move-exception
            goto L8c
        L88:
            r2 = r3
            goto L91
        L8a:
            r13 = move-exception
            r2 = r3
        L8c:
            java.io.PrintStream r14 = java.lang.System.err
            r14.println(r13)
        L91:
            if (r2 != 0) goto L96
            r11.addToMissingFontFileList(r12)
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.awt.Win32FontManager.registerFontFile(java.lang.String, java.lang.String[], int, boolean):void");
    }

    public void registerJREFontsWithPlatform(String str) {
        fontsForPrinting = str;
    }

    @Override // sun.font.SunFontManager
    public boolean useAbsoluteFontFileNames() {
        return false;
    }

    @Override // sun.font.FontManager
    public boolean usingPerAppContextComposites() {
        return false;
    }

    @Override // sun.font.SunFontManager
    public FontConfiguration createFontConfiguration(boolean z, boolean z2) {
        return new WFontConfiguration(this, z, z2);
    }
}
