package com.onyx.harfbuzz.graphics;

import android.annotation.SuppressLint;
import android.content.res.AssetManager;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.harfbuzz.font.ColorPalette;
import com.onyx.harfbuzz.font.NamedStyle;
import com.onyx.harfbuzz.font.VariationAxis;
import com.onyx.harfbuzz.internal.JniBridge;
import com.onyx.harfbuzz.internal.sfnt.SfntTag;
import com.onyx.harfbuzz.internal.sfnt.tables.cpal.ColorPaletteTable;
import com.onyx.harfbuzz.internal.sfnt.tables.cpal.ColorRecordsArray;
import com.onyx.harfbuzz.internal.sfnt.tables.cpal.PaletteLabelsArray;
import com.onyx.harfbuzz.internal.sfnt.tables.cpal.PaletteTypesArray;
import com.onyx.harfbuzz.internal.sfnt.tables.fvar.FontVariationsTable;
import com.onyx.harfbuzz.internal.sfnt.tables.fvar.InstanceRecord;
import com.onyx.harfbuzz.internal.sfnt.tables.fvar.VariationAxisRecord;
import com.onyx.harfbuzz.utils.Preconditions;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes9.dex */
public class HBTypeface {

    /* renamed from: a */
    @Nullable
    public Object f62768a;

    /* renamed from: b */
    public String f62769b;

    /* renamed from: c */
    public C12994b f62770c;

    /* renamed from: d */
    public C12995c f62771d;

    /* renamed from: e */
    public C12996d f62772e;

    @Keep
    long nativeTypeface;

    /* renamed from: com.onyx.harfbuzz.graphics.HBTypeface$b */
    /* loaded from: classes9.dex */
    public static class C12994b {

        /* renamed from: a */
        @Nullable
        public List<VariationAxis> f62773a;

        /* renamed from: b */
        @Nullable
        public List<NamedStyle> f62774b;

        /* renamed from: c */
        @Nullable
        public List<String> f62775c;

        /* renamed from: d */
        @Nullable
        public List<ColorPalette> f62776d;

        public C12994b() {
        }
    }

    /* renamed from: com.onyx.harfbuzz.graphics.HBTypeface$c */
    /* loaded from: classes9.dex */
    public static class C12995c {

        /* renamed from: a */
        @NonNull
        public TypeWeight f62777a;

        /* renamed from: b */
        @NonNull
        public TypeWidth f62778b;

        /* renamed from: c */
        @NonNull
        public TypeSlope f62779c;

        public C12995c() {
            this.f62777a = TypeWeight.REGULAR;
            this.f62778b = TypeWidth.NORMAL;
            this.f62779c = TypeSlope.PLAIN;
        }
    }

    /* renamed from: com.onyx.harfbuzz.graphics.HBTypeface$d */
    /* loaded from: classes9.dex */
    public static class C12996d {

        /* renamed from: a */
        @NonNull
        public String f62780a;

        /* renamed from: b */
        @NonNull
        public String f62781b;

        /* renamed from: c */
        @NonNull
        public String f62782c;

        public C12996d() {
            this.f62780a = "";
            this.f62781b = "";
            this.f62782c = "";
        }
    }

    static {
        JniBridge.loadLibrary();
    }

    public HBTypeface(@NonNull AssetManager assetManager, @NonNull String str) {
        Preconditions.checkNotNull(assetManager, "assetManager");
        Preconditions.checkNotNull(str, "filePath");
        long nCreateWithAsset = nCreateWithAsset(assetManager, str);
        if (nCreateWithAsset != 0) {
            this.f62769b = str;
            m52063c(nCreateWithAsset);
            return;
        }
        throw new RuntimeException("Could not create typeface from specified asset");
    }

    private static native long nCreateFromStream(InputStream inputStream);

    private static native long nCreateWithAsset(AssetManager assetManager, String str);

    private static native long nCreateWithFile(String str);

    private static native void nDispose(long j);

    private static native int nGetAscent(long j);

    private static native void nGetAssociatedColors(long j, int[] iArr);

    private static native void nGetBoundingBox(long j, Rect rect);

    private static native long nGetColorInstance(long j, int[] iArr);

    private static native String nGetDefaultFamilyName(long j);

    private static native String nGetDefaultFullName(long j);

    private static native int nGetDefaultSlope(long j);

    private static native String nGetDefaultStyleName(long j);

    private static native int nGetDefaultWeight(long j);

    private static native int nGetDefaultWidth(long j);

    private static native int nGetDescent(long j);

    private static native float nGetGlyphAdvance(long j, int i, float f, boolean z);

    private static native int nGetGlyphCount(long j);

    private static native int nGetGlyphId(long j, int i);

    private static native Path nGetGlyphPath(long j, int i, float f, float[] fArr);

    private static native int nGetLeading(long j);

    private static native int nGetStrikeoutPosition(long j);

    private static native int nGetStrikeoutThickness(long j);

    private static native byte[] nGetTableData(long j, int i);

    private static native int nGetUnderlinePosition(long j);

    private static native int nGetUnderlineThickness(long j);

    private static native int nGetUnitsPerEm(long j);

    private static native void nGetVariationCoordinates(long j, float[] fArr);

    private static native long nGetVariationInstance(long j, float[] fArr);

    private static native String nSearchNameString(long j, int i);

    private static native void nSetupColors(long j, int[] iArr);

    private static native void nSetupCoordinates(long j, float[] fArr);

    private static native void nSetupStrikeout(long j);

    /* renamed from: a */
    public final void m52061a() {
        String familyName = getFamilyName();
        String styleName = getStyleName();
        if (familyName.isEmpty()) {
            this.f62772e.f62782c = getStyleName();
            return;
        }
        this.f62772e.f62782c = familyName;
        if (styleName.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        C12996d c12996d = this.f62772e;
        sb.append(c12996d.f62782c);
        sb.append(' ');
        sb.append(styleName);
        c12996d.f62782c = sb.toString();
    }

    @Nullable
    /* renamed from: b */
    public final float[] m52062b() {
        List<VariationAxis> variationAxes = getVariationAxes();
        if (variationAxes == null) {
            return null;
        }
        int size = variationAxes.size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = variationAxes.get(i).defaultValue();
        }
        return fArr;
    }

    /* renamed from: c */
    public final void m52063c(long j) {
        this.nativeTypeface = j;
        this.f62770c = null;
        this.f62771d = null;
        this.f62772e = null;
        m52067g();
        m52065e();
        m52071k();
        m52068h();
        m52069i();
        m52072l();
        m52066f();
    }

    @Nullable
    /* renamed from: d */
    public final String m52064d(int i) {
        return nSearchNameString(this.nativeTypeface, i);
    }

    public void dispose() {
        nDispose(this.nativeTypeface);
    }

    /* renamed from: e */
    public final void m52065e() {
        float[] m52062b = m52062b();
        if (m52062b != null) {
            nSetupCoordinates(this.nativeTypeface, m52062b);
        }
    }

    /* renamed from: f */
    public final void m52066f() {
        List<ColorPalette> predefinedPalettes = getPredefinedPalettes();
        if (predefinedPalettes != null) {
            nSetupColors(this.nativeTypeface, predefinedPalettes.get(0).colors());
        }
    }

    /* renamed from: g */
    public final void m52067g() {
        this.f62770c = new C12994b();
        m52073m();
        m52070j();
    }

    public int getAscent() {
        return nGetAscent(this.nativeTypeface);
    }

    @Nullable
    public int[] getAssociatedColors() {
        List<String> paletteEntryNames = getPaletteEntryNames();
        if (paletteEntryNames == null) {
            return null;
        }
        int[] iArr = new int[paletteEntryNames.size()];
        nGetAssociatedColors(this.nativeTypeface, iArr);
        return iArr;
    }

    @NonNull
    public Rect getBoundingBox() {
        Rect rect = new Rect();
        nGetBoundingBox(this.nativeTypeface, rect);
        return rect;
    }

    @Nullable
    public HBTypeface getColorInstance(@NonNull int[] iArr) {
        List<String> paletteEntryNames = getPaletteEntryNames();
        if (paletteEntryNames == null) {
            throw new IllegalStateException("This typeface does not support color palettes");
        }
        Preconditions.checkNotNull(iArr, CouchFieldKey.KEY_COLORS);
        int size = paletteEntryNames.size();
        Preconditions.checkArgument(iArr.length == size, "Palette should have exactly " + size + " colors");
        return new HBTypeface(this, iArr);
    }

    public int getDescent() {
        return nGetDescent(this.nativeTypeface);
    }

    public String getFamilyName() {
        return this.f62772e.f62780a;
    }

    public String getFilePath() {
        return this.f62769b;
    }

    public String getFullName() {
        return this.f62772e.f62782c;
    }

    public float getGlyphAdvance(int i, float f, boolean z) {
        return nGetGlyphAdvance(this.nativeTypeface, i, f, z);
    }

    public int getGlyphCount() {
        return nGetGlyphCount(this.nativeTypeface);
    }

    public int getGlyphId(int i) {
        return nGetGlyphId(this.nativeTypeface, i);
    }

    @NonNull
    public Path getGlyphPath(int i, float f, @Nullable Matrix matrix) {
        float[] fArr;
        if (matrix != null) {
            fArr = new float[9];
            matrix.getValues(fArr);
        } else {
            fArr = null;
        }
        return nGetGlyphPath(this.nativeTypeface, i, f, fArr);
    }

    public int getLeading() {
        return nGetLeading(this.nativeTypeface);
    }

    @Nullable
    public List<NamedStyle> getNamedStyles() {
        List<NamedStyle> list = this.f62770c.f62774b;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    @Nullable
    public List<String> getPaletteEntryNames() {
        List<String> list = this.f62770c.f62775c;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    @Nullable
    public List<ColorPalette> getPredefinedPalettes() {
        List<ColorPalette> list = this.f62770c.f62776d;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    @NonNull
    public TypeSlope getSlope() {
        return this.f62771d.f62779c;
    }

    public int getStrikeoutPosition() {
        return nGetStrikeoutPosition(this.nativeTypeface);
    }

    public int getStrikeoutThickness() {
        return nGetStrikeoutThickness(this.nativeTypeface);
    }

    public String getStyleName() {
        return this.f62772e.f62781b;
    }

    @Nullable
    public byte[] getTableData(int i) {
        return nGetTableData(this.nativeTypeface, i);
    }

    @Nullable
    public Object getTag() {
        return this.f62768a;
    }

    public int getUnderlinePosition() {
        return nGetUnderlinePosition(this.nativeTypeface);
    }

    public int getUnderlineThickness() {
        return nGetUnderlineThickness(this.nativeTypeface);
    }

    public int getUnitsPerEm() {
        return nGetUnitsPerEm(this.nativeTypeface);
    }

    @Nullable
    public List<VariationAxis> getVariationAxes() {
        List<VariationAxis> list = this.f62770c.f62773a;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    @Nullable
    public float[] getVariationCoordinates() {
        List<VariationAxis> variationAxes = getVariationAxes();
        if (variationAxes == null) {
            return null;
        }
        float[] fArr = new float[variationAxes.size()];
        nGetVariationCoordinates(this.nativeTypeface, fArr);
        return fArr;
    }

    @Nullable
    public HBTypeface getVariationInstance(@NonNull float[] fArr) {
        List<VariationAxis> variationAxes = getVariationAxes();
        if (variationAxes == null) {
            throw new IllegalStateException("This typeface does not support variations.");
        }
        Preconditions.checkNotNull(fArr, "coordinates");
        Preconditions.checkArgument(fArr.length == variationAxes.size(), "The number of coordinates does not match with variation axes.");
        return new HBTypeface(this, fArr);
    }

    @NonNull
    public TypeWeight getWeight() {
        return this.f62771d.f62777a;
    }

    @NonNull
    public TypeWidth getWidth() {
        return this.f62771d.f62778b;
    }

    /* renamed from: h */
    public final void m52068h() {
        C12995c c12995c = new C12995c();
        this.f62771d = c12995c;
        c12995c.f62777a = TypeWeight.valueOf(nGetDefaultWeight(this.nativeTypeface));
        this.f62771d.f62778b = TypeWidth.valueOf(nGetDefaultWidth(this.nativeTypeface));
        this.f62771d.f62779c = TypeSlope.valueOf(nGetDefaultSlope(this.nativeTypeface));
    }

    /* renamed from: i */
    public final void m52069i() {
        this.f62772e = new C12996d();
        String nGetDefaultFamilyName = nGetDefaultFamilyName(this.nativeTypeface);
        String nGetDefaultStyleName = nGetDefaultStyleName(this.nativeTypeface);
        String nGetDefaultFullName = nGetDefaultFullName(this.nativeTypeface);
        if (nGetDefaultFamilyName != null) {
            this.f62772e.f62780a = nGetDefaultFamilyName;
        }
        if (nGetDefaultStyleName != null) {
            this.f62772e.f62781b = nGetDefaultStyleName;
        }
        if (nGetDefaultFullName != null) {
            this.f62772e.f62782c = nGetDefaultFullName;
        } else {
            m52061a();
        }
    }

    public boolean isVariable() {
        return getVariationAxes() != null;
    }

    /* renamed from: j */
    public final void m52070j() {
        int i;
        ColorPaletteTable from = ColorPaletteTable.from(this);
        if (from == null) {
            return;
        }
        int numPaletteEntries = from.numPaletteEntries();
        int numPalettes = from.numPalettes();
        ColorRecordsArray colorRecords = from.colorRecords();
        PaletteTypesArray paletteTypes = from.paletteTypes();
        PaletteLabelsArray paletteLabels = from.paletteLabels();
        PaletteLabelsArray paletteEntryLabels = from.paletteEntryLabels();
        ArrayList arrayList = new ArrayList(numPalettes);
        int i2 = 0;
        while (true) {
            String str = null;
            if (i2 >= numPalettes) {
                break;
            }
            int[] iArr = new int[numPaletteEntries];
            if (paletteLabels != null && (i = paletteLabels.get(i2)) != 65535) {
                str = m52064d(i);
            }
            String str2 = str != null ? str : "";
            int i3 = paletteTypes != null ? paletteTypes.get(i2) : 0;
            int colorRecordIndexAt = from.colorRecordIndexAt(i2);
            for (int i4 = 0; i4 < numPaletteEntries; i4++) {
                iArr[i4] = colorRecords.get(colorRecordIndexAt + i4);
            }
            arrayList.add(ColorPalette.m52028of(str2, i3, iArr));
            i2++;
        }
        ArrayList arrayList2 = new ArrayList(numPaletteEntries);
        if (paletteEntryLabels == null) {
            for (int i5 = 0; i5 < numPaletteEntries; i5++) {
                arrayList2.add("");
            }
        } else {
            for (int i6 = 0; i6 < numPaletteEntries; i6++) {
                int i7 = paletteEntryLabels.get(i6);
                String m52064d = i7 != 65535 ? m52064d(i7) : null;
                if (m52064d == null) {
                    m52064d = "";
                }
                arrayList2.add(m52064d);
            }
        }
        C12994b c12994b = this.f62770c;
        c12994b.f62776d = arrayList;
        c12994b.f62775c = arrayList2;
    }

    /* renamed from: k */
    public final void m52071k() {
        nSetupStrikeout(this.nativeTypeface);
    }

    /* renamed from: l */
    public final void m52072l() {
        boolean z;
        float[] variationCoordinates = getVariationCoordinates();
        if (variationCoordinates == null || variationCoordinates.length == 0) {
            return;
        }
        List<NamedStyle> namedStyles = getNamedStyles();
        if (namedStyles != null) {
            C12996d c12996d = this.f62772e;
            c12996d.f62781b = "";
            c12996d.f62782c = "";
            int length = variationCoordinates.length;
            Iterator<NamedStyle> it2 = namedStyles.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                NamedStyle next = it2.next();
                String styleName = next.styleName();
                if (!styleName.isEmpty()) {
                    float[] coordinates = next.coordinates();
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = true;
                            break;
                        } else {
                            if (Math.abs(variationCoordinates[i] - coordinates[i]) >= 1.5258789E-5f) {
                                z = false;
                                break;
                            }
                            i++;
                        }
                    }
                    if (z) {
                        this.f62772e.f62781b = styleName;
                        m52061a();
                        break;
                    }
                }
            }
        }
        List<VariationAxis> variationAxes = getVariationAxes();
        if (variationAxes != null) {
            int size = variationAxes.size();
            int make = SfntTag.make("ital");
            int make2 = SfntTag.make("slnt");
            int make3 = SfntTag.make("wdth");
            int make4 = SfntTag.make("wght");
            for (int i2 = 0; i2 < size; i2++) {
                int tag = variationAxes.get(i2).tag();
                if (tag == make) {
                    this.f62771d.f62779c = TypeSlope.fromItal(variationCoordinates[i2]);
                } else if (tag == make2) {
                    this.f62771d.f62779c = TypeSlope.fromSlnt(variationCoordinates[i2]);
                } else if (tag == make3) {
                    this.f62771d.f62778b = TypeWidth.fromWdth(variationCoordinates[i2]);
                } else if (tag == make4) {
                    this.f62771d.f62777a = TypeWeight.fromWght(variationCoordinates[i2]);
                }
            }
        }
    }

    @SuppressLint({"Range"})
    /* renamed from: m */
    public final void m52073m() {
        boolean z;
        FontVariationsTable from = FontVariationsTable.from(this);
        if (from == null) {
            return;
        }
        VariationAxisRecord[] axisRecords = from.axisRecords();
        InstanceRecord[] instanceRecords = from.instanceRecords();
        ArrayList arrayList = new ArrayList(axisRecords.length);
        int length = axisRecords.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            VariationAxisRecord variationAxisRecord = axisRecords[i];
            int axisTag = variationAxisRecord.axisTag();
            float minValue = variationAxisRecord.minValue();
            float defaultValue = variationAxisRecord.defaultValue();
            float maxValue = variationAxisRecord.maxValue();
            int flags = variationAxisRecord.flags();
            String m52064d = m52064d(variationAxisRecord.axisNameId());
            arrayList.add(VariationAxis.m52032of(axisTag, m52064d == null ? "" : m52064d, flags, defaultValue, minValue, maxValue));
            i++;
        }
        ArrayList arrayList2 = new ArrayList(instanceRecords.length);
        int length2 = instanceRecords.length;
        int i2 = 0;
        boolean z2 = false;
        while (true) {
            if (i2 >= length2) {
                break;
            }
            InstanceRecord instanceRecord = instanceRecords[i2];
            int subfamilyNameID = instanceRecord.subfamilyNameID();
            float[] coordinates = instanceRecord.coordinates();
            int postScriptNameID = instanceRecord.postScriptNameID();
            String m52064d2 = m52064d(subfamilyNameID);
            if (m52064d2 == null) {
                m52064d2 = "";
            }
            String m52064d3 = postScriptNameID > -1 ? m52064d(postScriptNameID) : null;
            if (!z2) {
                int size = arrayList.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        z = true;
                        break;
                    }
                    if (Math.abs(coordinates[i3] - ((VariationAxis) arrayList.get(i3)).defaultValue()) >= 1.5258789E-5f) {
                        z = false;
                        break;
                    }
                    i3++;
                }
                if (z) {
                    z2 = true;
                }
            }
            arrayList2.add(NamedStyle.m52031of(m52064d2, coordinates, m52064d3));
            i2++;
        }
        if (!z2) {
            int size2 = arrayList.size();
            float[] fArr = new float[size2];
            for (int i4 = 0; i4 < size2; i4++) {
                fArr[i4] = ((VariationAxis) arrayList.get(i4)).defaultValue();
            }
            String nGetDefaultStyleName = nGetDefaultStyleName(this.nativeTypeface);
            arrayList2.add(0, NamedStyle.m52031of(nGetDefaultStyleName != null ? nGetDefaultStyleName : "", fArr, null));
        }
        C12994b c12994b = this.f62770c;
        c12994b.f62773a = arrayList;
        c12994b.f62774b = arrayList2;
    }

    public void setFilePath(String str) {
        this.f62769b = str;
    }

    public String toString() {
        return "Typeface{familyName=" + getFamilyName() + ", tag=" + this.f62768a + ", styleName=" + getStyleName() + ", fullName=" + getFullName() + ", weight=" + getWeight() + ", width=" + getWidth() + ", slope=" + getSlope() + ", unitsPerEm=" + getUnitsPerEm() + ", ascent=" + getAscent() + ", descent=" + getDescent() + ", leading=" + getLeading() + ", glyphCount=" + getGlyphCount() + ", boundingBox=" + getBoundingBox().toString() + ", underlinePosition=" + getUnderlinePosition() + ", underlineThickness=" + getUnderlineThickness() + ", strikeoutPosition=" + getStrikeoutPosition() + ", strikeoutThickness=" + getStrikeoutThickness() + '}';
    }

    public HBTypeface(@NonNull File file) {
        Preconditions.checkNotNull(file, "file");
        long nCreateWithFile = nCreateWithFile(file.getAbsolutePath());
        if (nCreateWithFile != 0) {
            this.f62769b = file.getAbsolutePath();
            m52063c(nCreateWithFile);
            return;
        }
        throw new RuntimeException("Could not create typeface from specified file");
    }

    public HBTypeface(@NonNull InputStream inputStream) {
        Preconditions.checkNotNull(inputStream, "stream");
        long nCreateFromStream = nCreateFromStream(inputStream);
        if (nCreateFromStream != 0) {
            m52063c(nCreateFromStream);
            return;
        }
        throw new RuntimeException("Could not create typeface from specified stream");
    }

    @Keep
    public HBTypeface(long j) {
        m52063c(j);
    }

    public HBTypeface(@NonNull HBTypeface hBTypeface, @NonNull float[] fArr) {
        this.nativeTypeface = nGetVariationInstance(hBTypeface.nativeTypeface, fArr);
        this.f62770c = hBTypeface.f62770c;
        this.f62771d = null;
        this.f62772e = null;
        m52071k();
        m52068h();
        m52069i();
        m52072l();
    }

    public HBTypeface(@NonNull HBTypeface hBTypeface, @NonNull int[] iArr) {
        this.nativeTypeface = nGetColorInstance(hBTypeface.nativeTypeface, iArr);
        this.f62770c = hBTypeface.f62770c;
        this.f62771d = hBTypeface.f62771d;
        this.f62772e = hBTypeface.f62772e;
    }
}
