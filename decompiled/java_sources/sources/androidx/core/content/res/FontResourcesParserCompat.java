package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import androidx.annotation.ArrayRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.C0512R;
import androidx.core.provider.FontRequest;
import com.sunia.HTREnginev2.o6o;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class FontResourcesParserCompat {
    public static final int FETCH_STRATEGY_ASYNC = 1;
    public static final int FETCH_STRATEGY_BLOCKING = 0;
    public static final int INFINITE_TIMEOUT_VALUE = -1;

    /* renamed from: a */
    public static final int f5351a = 400;

    /* renamed from: b */
    public static final int f5352b = 1;

    /* renamed from: c */
    public static final int f5353c = 500;

    /* loaded from: classes3.dex */
    public interface FamilyResourceEntry {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface FetchStrategy {
    }

    /* loaded from: classes3.dex */
    public static final class FontFamilyFilesResourceEntry implements FamilyResourceEntry {

        /* renamed from: a */
        @NonNull
        public final FontFileResourceEntry[] f5354a;

        public FontFamilyFilesResourceEntry(@NonNull FontFileResourceEntry[] fontFileResourceEntryArr) {
            this.f5354a = fontFileResourceEntryArr;
        }

        @NonNull
        public FontFileResourceEntry[] getEntries() {
            return this.f5354a;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FontFileResourceEntry {

        /* renamed from: a */
        @NonNull
        public final String f5355a;

        /* renamed from: b */
        public final int f5356b;

        /* renamed from: c */
        public final boolean f5357c;

        /* renamed from: d */
        public final String f5358d;

        /* renamed from: e */
        public final int f5359e;

        /* renamed from: f */
        public final int f5360f;

        public FontFileResourceEntry(@NonNull String str, int i, boolean z, @Nullable String str2, int i2, int i3) {
            this.f5355a = str;
            this.f5356b = i;
            this.f5357c = z;
            this.f5358d = str2;
            this.f5359e = i2;
            this.f5360f = i3;
        }

        @NonNull
        public String getFileName() {
            return this.f5355a;
        }

        public int getResourceId() {
            return this.f5360f;
        }

        public int getTtcIndex() {
            return this.f5359e;
        }

        @Nullable
        public String getVariationSettings() {
            return this.f5358d;
        }

        public int getWeight() {
            return this.f5356b;
        }

        public boolean isItalic() {
            return this.f5357c;
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.content.res.FontResourcesParserCompat$a */
    /* loaded from: classes3.dex */
    public static class C0646a {
        @DoNotInline
        /* renamed from: a */
        public static int m2870a(TypedArray typedArray, int i) {
            return typedArray.getType(i);
        }
    }

    /* renamed from: a */
    public static int m2864a(TypedArray typedArray, int i) {
        return C0646a.m2870a(typedArray, i);
    }

    @Nullable
    /* renamed from: b */
    public static FamilyResourceEntry m2865b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, o6o.f79398h);
        if (xmlPullParser.getName().equals(o6o.f79398h)) {
            return m2866c(xmlPullParser, resources);
        }
        m2868e(xmlPullParser);
        return null;
    }

    @Nullable
    /* renamed from: c */
    public static FamilyResourceEntry m2866c(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0512R.styleable.FontFamily);
        String string = obtainAttributes.getString(C0512R.styleable.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(C0512R.styleable.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(C0512R.styleable.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(C0512R.styleable.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(C0512R.styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(C0512R.styleable.FontFamily_fontProviderFetchTimeout, 500);
        String string4 = obtainAttributes.getString(C0512R.styleable.FontFamily_fontProviderSystemFontFamily);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                m2868e(xmlPullParser);
            }
            return new ProviderResourceEntry(new FontRequest(string, string2, string3, readCerts(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(m2867d(xmlPullParser, resources));
                } else {
                    m2868e(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new FontFamilyFilesResourceEntry((FontFileResourceEntry[]) arrayList.toArray(new FontFileResourceEntry[0]));
    }

    /* renamed from: d */
    public static FontFileResourceEntry m2867d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0512R.styleable.FontFamilyFont);
        int i = obtainAttributes.getInt(obtainAttributes.hasValue(C0512R.styleable.FontFamilyFont_fontWeight) ? C0512R.styleable.FontFamilyFont_fontWeight : C0512R.styleable.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == obtainAttributes.getInt(obtainAttributes.hasValue(C0512R.styleable.FontFamilyFont_fontStyle) ? C0512R.styleable.FontFamilyFont_fontStyle : C0512R.styleable.FontFamilyFont_android_fontStyle, 0);
        int i2 = obtainAttributes.hasValue(C0512R.styleable.FontFamilyFont_ttcIndex) ? C0512R.styleable.FontFamilyFont_ttcIndex : C0512R.styleable.FontFamilyFont_android_ttcIndex;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(C0512R.styleable.FontFamilyFont_fontVariationSettings) ? C0512R.styleable.FontFamilyFont_fontVariationSettings : C0512R.styleable.FontFamilyFont_android_fontVariationSettings);
        int i3 = obtainAttributes.getInt(i2, 0);
        int i4 = obtainAttributes.hasValue(C0512R.styleable.FontFamilyFont_font) ? C0512R.styleable.FontFamilyFont_font : C0512R.styleable.FontFamilyFont_android_font;
        int resourceId = obtainAttributes.getResourceId(i4, 0);
        String string2 = obtainAttributes.getString(i4);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m2868e(xmlPullParser);
        }
        return new FontFileResourceEntry(string2, i, z, string, i3, resourceId);
    }

    /* renamed from: e */
    public static void m2868e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: f */
    public static List<byte[]> m2869f(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    @Nullable
    public static FamilyResourceEntry parse(@NonNull XmlPullParser xmlPullParser, @NonNull Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m2865b(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    @NonNull
    public static List<List<byte[]>> readCerts(@NonNull Resources resources, @ArrayRes int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (m2864a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m2869f(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m2869f(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ProviderResourceEntry implements FamilyResourceEntry {

        /* renamed from: a */
        @NonNull
        public final FontRequest f5361a;

        /* renamed from: b */
        public final int f5362b;

        /* renamed from: c */
        public final int f5363c;

        /* renamed from: d */
        @Nullable
        public final String f5364d;

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public ProviderResourceEntry(@NonNull FontRequest fontRequest, int i, int i2, @Nullable String str) {
            this.f5361a = fontRequest;
            this.f5363c = i;
            this.f5362b = i2;
            this.f5364d = str;
        }

        public int getFetchStrategy() {
            return this.f5363c;
        }

        @NonNull
        public FontRequest getRequest() {
            return this.f5361a;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public String getSystemFontFamilyName() {
            return this.f5364d;
        }

        public int getTimeout() {
            return this.f5362b;
        }

        public ProviderResourceEntry(@NonNull FontRequest fontRequest, int i, int i2) {
            this(fontRequest, i, i2, null);
        }
    }
}
