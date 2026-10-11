package sun.font;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes16.dex */
public class FontFamily {
    private static HashMap<String, FontFamily> allLocaleNames;
    private static ConcurrentHashMap<String, FontFamily> familyNameMap = new ConcurrentHashMap<>();
    protected Font2D bold;
    protected Font2D bolditalic;
    protected String familyName;
    protected int familyRank;
    private int familyWidth;
    protected Font2D italic;
    protected boolean logicalFont;
    protected Font2D plain;

    public FontFamily(String str, boolean z, int i) {
        this.familyWidth = 0;
        this.logicalFont = z;
        this.familyName = str;
        this.familyRank = i;
        familyNameMap.put(str.toLowerCase(Locale.ENGLISH), this);
    }

    public static synchronized void addLocaleNames(FontFamily fontFamily, String[] strArr) {
        synchronized (FontFamily.class) {
            if (allLocaleNames == null) {
                allLocaleNames = new HashMap<>();
            }
            for (String str : strArr) {
                allLocaleNames.put(str.toLowerCase(), fontFamily);
            }
        }
    }

    private boolean closerWeight(Font2D font2D, Font2D font2D2, int i) {
        if (this.familyWidth != font2D2.getWidth()) {
            return false;
        }
        if (font2D == null) {
            return true;
        }
        if (FontUtilities.debugFonts()) {
            FontUtilities.logInfo("New weight for style " + i + ". Curr.font=" + font2D + " New font=" + font2D2 + " Curr.weight=" + font2D.getWeight() + " New weight=" + font2D2.getWeight());
        }
        int weight = font2D2.getWeight();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return false;
                    }
                }
            }
            return Math.abs(weight + (-700)) < Math.abs(font2D.getWeight() + (-700));
        }
        return weight <= 400 && weight > font2D.getWeight();
    }

    public static String[] getAllFamilyNames() {
        return null;
    }

    public static FontFamily[] getAllFontFamilies() {
        return (FontFamily[]) familyNameMap.values().toArray(new FontFamily[0]);
    }

    public static FontFamily getFamily(String str) {
        return familyNameMap.get(str.toLowerCase(Locale.ENGLISH));
    }

    public static synchronized FontFamily getLocaleFamily(String str) {
        synchronized (FontFamily.class) {
            HashMap<String, FontFamily> hashMap = allLocaleNames;
            if (hashMap == null) {
                return null;
            }
            return hashMap.get(str.toLowerCase());
        }
    }

    private boolean isFromSameSource(Font2D font2D) {
        FileFont fileFont;
        if (!(font2D instanceof FileFont)) {
            return false;
        }
        Font2D font2D2 = this.plain;
        if (font2D2 instanceof FileFont) {
            fileFont = (FileFont) font2D2;
        } else {
            Font2D font2D3 = this.bold;
            if (font2D3 instanceof FileFont) {
                fileFont = (FileFont) font2D3;
            } else {
                Font2D font2D4 = this.italic;
                if (font2D4 instanceof FileFont) {
                    fileFont = (FileFont) font2D4;
                } else {
                    Font2D font2D5 = this.bolditalic;
                    fileFont = font2D5 instanceof FileFont ? (FileFont) font2D5 : null;
                }
            }
        }
        if (fileFont == null) {
            return false;
        }
        File parentFile = new File(fileFont.platName).getParentFile();
        File parentFile2 = new File(((FileFont) font2D).platName).getParentFile();
        if (parentFile != null) {
            try {
                parentFile = parentFile.getCanonicalFile();
            } catch (IOException unused) {
            }
        }
        if (parentFile2 != null) {
            try {
                parentFile2 = parentFile2.getCanonicalFile();
            } catch (IOException unused2) {
            }
        }
        return Objects.equals(parentFile2, parentFile);
    }

    private boolean preferredWidth(Font2D font2D) {
        int width = font2D.getWidth();
        int i = this.familyWidth;
        if (i == 0) {
            this.familyWidth = width;
            return true;
        }
        if (width == i) {
            return true;
        }
        if (Math.abs(5 - width) >= Math.abs(5 - this.familyWidth)) {
            if (!FontUtilities.debugFonts()) {
                return false;
            }
            FontUtilities.logInfo("Family rejecting font " + font2D + " of less preferred width " + width);
            return false;
        }
        if (FontUtilities.debugFonts()) {
            FontUtilities.logInfo("Found more preferred width. New width = " + width + " Old width = " + this.familyWidth + " in font " + font2D + " nulling out fonts plain: " + this.plain + " bold: " + this.bold + " italic: " + this.italic + " bolditalic: " + this.bolditalic);
        }
        this.familyWidth = width;
        this.bolditalic = null;
        this.italic = null;
        this.bold = null;
        this.plain = null;
        return true;
    }

    public static void remove(Font2D font2D) {
        String familyName = font2D.getFamilyName(Locale.ENGLISH);
        FontFamily family = getFamily(familyName);
        if (family == null) {
            return;
        }
        if (family.plain == font2D) {
            family.plain = null;
        }
        if (family.bold == font2D) {
            family.bold = null;
        }
        if (family.italic == font2D) {
            family.italic = null;
        }
        if (family.bolditalic == font2D) {
            family.bolditalic = null;
        }
        if (family.plain == null && family.bold == null && family.italic == null && family.bolditalic == null) {
            familyNameMap.remove(familyName);
        }
    }

    public Font2D getClosestStyle(int i) {
        if (i == 0) {
            Font2D font2D = this.bold;
            if (font2D != null) {
                return font2D;
            }
            Font2D font2D2 = this.italic;
            return font2D2 != null ? font2D2 : this.bolditalic;
        }
        if (i == 1) {
            Font2D font2D3 = this.plain;
            if (font2D3 != null) {
                return font2D3;
            }
            Font2D font2D4 = this.bolditalic;
            return font2D4 != null ? font2D4 : this.italic;
        }
        if (i == 2) {
            Font2D font2D5 = this.bolditalic;
            if (font2D5 != null) {
                return font2D5;
            }
            Font2D font2D6 = this.plain;
            return font2D6 != null ? font2D6 : this.bold;
        }
        if (i != 3) {
            return null;
        }
        Font2D font2D7 = this.italic;
        if (font2D7 != null) {
            return font2D7;
        }
        Font2D font2D8 = this.bold;
        return font2D8 != null ? font2D8 : this.plain;
    }

    public String getFamilyName() {
        return this.familyName;
    }

    public Font2D getFont(int i) {
        if (i == 0) {
            return this.plain;
        }
        if (i == 1) {
            Font2D font2D = this.bold;
            if (font2D != null) {
                return font2D;
            }
            Font2D font2D2 = this.plain;
            if (font2D2 == null || !font2D2.canDoStyle(i)) {
                return null;
            }
            return this.plain;
        }
        if (i == 2) {
            Font2D font2D3 = this.italic;
            if (font2D3 != null) {
                return font2D3;
            }
            Font2D font2D4 = this.plain;
            if (font2D4 == null || !font2D4.canDoStyle(i)) {
                return null;
            }
            return this.plain;
        }
        if (i != 3) {
            return null;
        }
        Font2D font2D5 = this.bolditalic;
        if (font2D5 != null) {
            return font2D5;
        }
        Font2D font2D6 = this.bold;
        if (font2D6 != null && font2D6.canDoStyle(i)) {
            return this.bold;
        }
        Font2D font2D7 = this.italic;
        if (font2D7 != null && font2D7.canDoStyle(i)) {
            return this.italic;
        }
        Font2D font2D8 = this.plain;
        if (font2D8 == null || !font2D8.canDoStyle(i)) {
            return null;
        }
        return this.plain;
    }

    public Font2D getFontWithExactStyleMatch(int i) {
        if (i == 0) {
            return this.plain;
        }
        if (i == 1) {
            return this.bold;
        }
        if (i == 2) {
            return this.italic;
        }
        if (i != 3) {
            return null;
        }
        return this.bolditalic;
    }

    public int getRank() {
        return this.familyRank;
    }

    public void setFont(Font2D font2D, int i) {
        String str;
        if (FontUtilities.isLogging()) {
            if (font2D instanceof CompositeFont) {
                str = "Request to add " + font2D.getFamilyName(null) + " with style " + i + " to family " + this.familyName;
            } else {
                str = "Request to add " + font2D + " with style " + i + " to family " + this;
            }
            FontUtilities.logInfo(str);
        }
        if (font2D.getRank() > this.familyRank && !isFromSameSource(font2D)) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logWarning("Rejecting adding " + font2D + " of lower rank " + font2D.getRank() + " to family " + this + " of rank " + this.familyRank);
                return;
            }
            return;
        }
        if (i == 0) {
            if (preferredWidth(font2D) && closerWeight(this.plain, font2D, i)) {
                this.plain = font2D;
                return;
            }
            return;
        }
        if (i == 1) {
            if (preferredWidth(font2D) && closerWeight(this.bold, font2D, i)) {
                this.bold = font2D;
                return;
            }
            return;
        }
        if (i == 2) {
            if (preferredWidth(font2D) && closerWeight(this.italic, font2D, i)) {
                this.italic = font2D;
                return;
            }
            return;
        }
        if (i == 3 && preferredWidth(font2D) && closerWeight(this.bolditalic, font2D, i)) {
            this.bolditalic = font2D;
        }
    }

    public String toString() {
        return "Font family: " + this.familyName + " plain=" + this.plain + " bold=" + this.bold + " italic=" + this.italic + " bolditalic=" + this.bolditalic;
    }

    public FontFamily(String str) {
        this.familyWidth = 0;
        this.logicalFont = false;
        this.familyName = str;
        this.familyRank = 4;
    }
}
