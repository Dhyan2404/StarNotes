package androidx.core.content.pm;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArraySet;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.net.UriCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public class ShortcutInfoCompat {

    /* renamed from: C */
    public static final String f5280C = "extraPersonCount";

    /* renamed from: D */
    public static final String f5281D = "extraPerson_";

    /* renamed from: E */
    public static final String f5282E = "extraLocusId";

    /* renamed from: F */
    public static final String f5283F = "extraLongLived";

    /* renamed from: G */
    public static final String f5284G = "extraSliceUri";
    public static final int SURFACE_LAUNCHER = 1;

    /* renamed from: A */
    public int f5285A;

    /* renamed from: B */
    public int f5286B;

    /* renamed from: a */
    public Context f5287a;

    /* renamed from: b */
    public String f5288b;

    /* renamed from: c */
    public String f5289c;

    /* renamed from: d */
    public Intent[] f5290d;

    /* renamed from: e */
    public ComponentName f5291e;

    /* renamed from: f */
    public CharSequence f5292f;

    /* renamed from: g */
    public CharSequence f5293g;

    /* renamed from: h */
    public CharSequence f5294h;

    /* renamed from: i */
    public IconCompat f5295i;

    /* renamed from: j */
    public boolean f5296j;

    /* renamed from: k */
    public Person[] f5297k;

    /* renamed from: l */
    public Set<String> f5298l;

    /* renamed from: m */
    @Nullable
    public LocusIdCompat f5299m;

    /* renamed from: n */
    public boolean f5300n;

    /* renamed from: o */
    public int f5301o;

    /* renamed from: p */
    public PersistableBundle f5302p;

    /* renamed from: q */
    public Bundle f5303q;

    /* renamed from: r */
    public long f5304r;

    /* renamed from: s */
    public UserHandle f5305s;

    /* renamed from: t */
    public boolean f5306t;

    /* renamed from: u */
    public boolean f5307u;

    /* renamed from: v */
    public boolean f5308v;

    /* renamed from: w */
    public boolean f5309w;

    /* renamed from: x */
    public boolean f5310x;

    /* renamed from: y */
    public boolean f5311y = true;

    /* renamed from: z */
    public boolean f5312z;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public final ShortcutInfoCompat f5313a;

        /* renamed from: b */
        public boolean f5314b;

        /* renamed from: c */
        public Set<String> f5315c;

        /* renamed from: d */
        public Map<String, Map<String, List<String>>> f5316d;

        /* renamed from: e */
        public Uri f5317e;

        public Builder(@NonNull Context context, @NonNull String str) {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.f5313a = shortcutInfoCompat;
            shortcutInfoCompat.f5287a = context;
            shortcutInfoCompat.f5288b = str;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder addCapabilityBinding(@NonNull String str) {
            if (this.f5315c == null) {
                this.f5315c = new HashSet();
            }
            this.f5315c.add(str);
            return this;
        }

        @NonNull
        public ShortcutInfoCompat build() {
            if (TextUtils.isEmpty(this.f5313a.f5292f)) {
                throw new IllegalArgumentException("Shortcut must have a non-empty label");
            }
            ShortcutInfoCompat shortcutInfoCompat = this.f5313a;
            Intent[] intentArr = shortcutInfoCompat.f5290d;
            if (intentArr == null || intentArr.length == 0) {
                throw new IllegalArgumentException("Shortcut must have an intent");
            }
            if (this.f5314b) {
                if (shortcutInfoCompat.f5299m == null) {
                    shortcutInfoCompat.f5299m = new LocusIdCompat(shortcutInfoCompat.f5288b);
                }
                this.f5313a.f5300n = true;
            }
            if (this.f5315c != null) {
                ShortcutInfoCompat shortcutInfoCompat2 = this.f5313a;
                if (shortcutInfoCompat2.f5298l == null) {
                    shortcutInfoCompat2.f5298l = new HashSet();
                }
                this.f5313a.f5298l.addAll(this.f5315c);
            }
            if (this.f5316d != null) {
                ShortcutInfoCompat shortcutInfoCompat3 = this.f5313a;
                if (shortcutInfoCompat3.f5302p == null) {
                    shortcutInfoCompat3.f5302p = new PersistableBundle();
                }
                for (String str : this.f5316d.keySet()) {
                    Map<String, List<String>> map = this.f5316d.get(str);
                    this.f5313a.f5302p.putStringArray(str, (String[]) map.keySet().toArray(new String[0]));
                    for (String str2 : map.keySet()) {
                        List<String> list = map.get(str2);
                        this.f5313a.f5302p.putStringArray(str + "/" + str2, list == null ? new String[0] : (String[]) list.toArray(new String[0]));
                    }
                }
            }
            if (this.f5317e != null) {
                ShortcutInfoCompat shortcutInfoCompat4 = this.f5313a;
                if (shortcutInfoCompat4.f5302p == null) {
                    shortcutInfoCompat4.f5302p = new PersistableBundle();
                }
                this.f5313a.f5302p.putString(ShortcutInfoCompat.f5284G, UriCompat.toSafeString(this.f5317e));
            }
            return this.f5313a;
        }

        @NonNull
        public Builder setActivity(@NonNull ComponentName componentName) {
            this.f5313a.f5291e = componentName;
            return this;
        }

        @NonNull
        public Builder setAlwaysBadged() {
            this.f5313a.f5296j = true;
            return this;
        }

        @NonNull
        public Builder setCategories(@NonNull Set<String> set) {
            ArraySet arraySet = new ArraySet();
            arraySet.addAll(set);
            this.f5313a.f5298l = arraySet;
            return this;
        }

        @NonNull
        public Builder setDisabledMessage(@NonNull CharSequence charSequence) {
            this.f5313a.f5294h = charSequence;
            return this;
        }

        @NonNull
        public Builder setExcludedFromSurfaces(int i) {
            this.f5313a.f5286B = i;
            return this;
        }

        @NonNull
        public Builder setExtras(@NonNull PersistableBundle persistableBundle) {
            this.f5313a.f5302p = persistableBundle;
            return this;
        }

        @NonNull
        public Builder setIcon(IconCompat iconCompat) {
            this.f5313a.f5295i = iconCompat;
            return this;
        }

        @NonNull
        public Builder setIntent(@NonNull Intent intent) {
            return setIntents(new Intent[]{intent});
        }

        @NonNull
        public Builder setIntents(@NonNull Intent[] intentArr) {
            this.f5313a.f5290d = intentArr;
            return this;
        }

        @NonNull
        public Builder setIsConversation() {
            this.f5314b = true;
            return this;
        }

        @NonNull
        public Builder setLocusId(@Nullable LocusIdCompat locusIdCompat) {
            this.f5313a.f5299m = locusIdCompat;
            return this;
        }

        @NonNull
        public Builder setLongLabel(@NonNull CharSequence charSequence) {
            this.f5313a.f5293g = charSequence;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setLongLived() {
            this.f5313a.f5300n = true;
            return this;
        }

        @NonNull
        public Builder setPerson(@NonNull Person person) {
            return setPersons(new Person[]{person});
        }

        @NonNull
        public Builder setPersons(@NonNull Person[] personArr) {
            this.f5313a.f5297k = personArr;
            return this;
        }

        @NonNull
        public Builder setRank(int i) {
            this.f5313a.f5301o = i;
            return this;
        }

        @NonNull
        public Builder setShortLabel(@NonNull CharSequence charSequence) {
            this.f5313a.f5292f = charSequence;
            return this;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder setSliceUri(@NonNull Uri uri) {
            this.f5317e = uri;
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder setTransientExtras(@NonNull Bundle bundle) {
            this.f5313a.f5303q = (Bundle) Preconditions.checkNotNull(bundle);
            return this;
        }

        @NonNull
        public Builder setLongLived(boolean z) {
            this.f5313a.f5300n = z;
            return this;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder addCapabilityBinding(@NonNull String str, @NonNull String str2, @NonNull List<String> list) {
            addCapabilityBinding(str);
            if (!list.isEmpty()) {
                if (this.f5316d == null) {
                    this.f5316d = new HashMap();
                }
                if (this.f5316d.get(str) == null) {
                    this.f5316d.put(str, new HashMap());
                }
                this.f5316d.get(str).put(str2, list);
            }
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder(@NonNull ShortcutInfoCompat shortcutInfoCompat) {
            ShortcutInfoCompat shortcutInfoCompat2 = new ShortcutInfoCompat();
            this.f5313a = shortcutInfoCompat2;
            shortcutInfoCompat2.f5287a = shortcutInfoCompat.f5287a;
            shortcutInfoCompat2.f5288b = shortcutInfoCompat.f5288b;
            shortcutInfoCompat2.f5289c = shortcutInfoCompat.f5289c;
            Intent[] intentArr = shortcutInfoCompat.f5290d;
            shortcutInfoCompat2.f5290d = (Intent[]) Arrays.copyOf(intentArr, intentArr.length);
            shortcutInfoCompat2.f5291e = shortcutInfoCompat.f5291e;
            shortcutInfoCompat2.f5292f = shortcutInfoCompat.f5292f;
            shortcutInfoCompat2.f5293g = shortcutInfoCompat.f5293g;
            shortcutInfoCompat2.f5294h = shortcutInfoCompat.f5294h;
            shortcutInfoCompat2.f5285A = shortcutInfoCompat.f5285A;
            shortcutInfoCompat2.f5295i = shortcutInfoCompat.f5295i;
            shortcutInfoCompat2.f5296j = shortcutInfoCompat.f5296j;
            shortcutInfoCompat2.f5305s = shortcutInfoCompat.f5305s;
            shortcutInfoCompat2.f5304r = shortcutInfoCompat.f5304r;
            shortcutInfoCompat2.f5306t = shortcutInfoCompat.f5306t;
            shortcutInfoCompat2.f5307u = shortcutInfoCompat.f5307u;
            shortcutInfoCompat2.f5308v = shortcutInfoCompat.f5308v;
            shortcutInfoCompat2.f5309w = shortcutInfoCompat.f5309w;
            shortcutInfoCompat2.f5310x = shortcutInfoCompat.f5310x;
            shortcutInfoCompat2.f5311y = shortcutInfoCompat.f5311y;
            shortcutInfoCompat2.f5299m = shortcutInfoCompat.f5299m;
            shortcutInfoCompat2.f5300n = shortcutInfoCompat.f5300n;
            shortcutInfoCompat2.f5312z = shortcutInfoCompat.f5312z;
            shortcutInfoCompat2.f5301o = shortcutInfoCompat.f5301o;
            Person[] personArr = shortcutInfoCompat.f5297k;
            if (personArr != null) {
                shortcutInfoCompat2.f5297k = (Person[]) Arrays.copyOf(personArr, personArr.length);
            }
            if (shortcutInfoCompat.f5298l != null) {
                shortcutInfoCompat2.f5298l = new HashSet(shortcutInfoCompat.f5298l);
            }
            PersistableBundle persistableBundle = shortcutInfoCompat.f5302p;
            if (persistableBundle != null) {
                shortcutInfoCompat2.f5302p = persistableBundle;
            }
            shortcutInfoCompat2.f5286B = shortcutInfoCompat.f5286B;
        }

        @RequiresApi(25)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder(@NonNull Context context, @NonNull ShortcutInfo shortcutInfo) {
            boolean isCached;
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.f5313a = shortcutInfoCompat;
            shortcutInfoCompat.f5287a = context;
            shortcutInfoCompat.f5288b = shortcutInfo.getId();
            shortcutInfoCompat.f5289c = shortcutInfo.getPackage();
            Intent[] intents = shortcutInfo.getIntents();
            shortcutInfoCompat.f5290d = (Intent[]) Arrays.copyOf(intents, intents.length);
            shortcutInfoCompat.f5291e = shortcutInfo.getActivity();
            shortcutInfoCompat.f5292f = shortcutInfo.getShortLabel();
            shortcutInfoCompat.f5293g = shortcutInfo.getLongLabel();
            shortcutInfoCompat.f5294h = shortcutInfo.getDisabledMessage();
            int i = Build.VERSION.SDK_INT;
            shortcutInfoCompat.f5285A = shortcutInfo.getDisabledReason();
            shortcutInfoCompat.f5298l = shortcutInfo.getCategories();
            shortcutInfoCompat.f5297k = ShortcutInfoCompat.m2819g(shortcutInfo.getExtras());
            shortcutInfoCompat.f5305s = shortcutInfo.getUserHandle();
            shortcutInfoCompat.f5304r = shortcutInfo.getLastChangedTimestamp();
            if (i >= 30) {
                isCached = shortcutInfo.isCached();
                shortcutInfoCompat.f5306t = isCached;
            }
            shortcutInfoCompat.f5307u = shortcutInfo.isDynamic();
            shortcutInfoCompat.f5308v = shortcutInfo.isPinned();
            shortcutInfoCompat.f5309w = shortcutInfo.isDeclaredInManifest();
            shortcutInfoCompat.f5310x = shortcutInfo.isImmutable();
            shortcutInfoCompat.f5311y = shortcutInfo.isEnabled();
            shortcutInfoCompat.f5312z = shortcutInfo.hasKeyFieldsOnly();
            shortcutInfoCompat.f5299m = ShortcutInfoCompat.m2816d(shortcutInfo);
            shortcutInfoCompat.f5301o = shortcutInfo.getRank();
            shortcutInfoCompat.f5302p = shortcutInfo.getExtras();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Surface {
    }

    @RequiresApi(33)
    /* renamed from: androidx.core.content.pm.ShortcutInfoCompat$a */
    /* loaded from: classes3.dex */
    public static class C0643a {
        /* renamed from: a */
        public static void m2822a(@NonNull ShortcutInfo.Builder builder, int i) {
            builder.setExcludedFromSurfaces(i);
        }
    }

    @RequiresApi(25)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: c */
    public static List<ShortcutInfoCompat> m2815c(@NonNull Context context, @NonNull List<ShortcutInfo> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<ShortcutInfo> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new Builder(context, it2.next()).build());
        }
        return arrayList;
    }

    @Nullable
    @RequiresApi(25)
    /* renamed from: d */
    public static LocusIdCompat m2816d(@NonNull ShortcutInfo shortcutInfo) {
        if (shortcutInfo.getLocusId() == null) {
            return null;
        }
        return LocusIdCompat.toLocusIdCompat(shortcutInfo.getLocusId());
    }

    @Nullable
    @RequiresApi(25)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: e */
    public static LocusIdCompat m2817e(@Nullable PersistableBundle persistableBundle) {
        String string;
        if (persistableBundle == null || (string = persistableBundle.getString(f5282E)) == null) {
            return null;
        }
        return new LocusIdCompat(string);
    }

    @RequiresApi(25)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    /* renamed from: f */
    public static boolean m2818f(@Nullable PersistableBundle persistableBundle) {
        if (persistableBundle == null || !persistableBundle.containsKey(f5283F)) {
            return false;
        }
        return persistableBundle.getBoolean(f5283F);
    }

    @VisibleForTesting
    @Nullable
    @RequiresApi(25)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: g */
    public static Person[] m2819g(@NonNull PersistableBundle persistableBundle) {
        if (persistableBundle == null || !persistableBundle.containsKey(f5280C)) {
            return null;
        }
        int i = persistableBundle.getInt(f5280C);
        Person[] personArr = new Person[i];
        int i2 = 0;
        while (i2 < i) {
            StringBuilder sb = new StringBuilder();
            sb.append(f5281D);
            int i3 = i2 + 1;
            sb.append(i3);
            personArr[i2] = Person.fromPersistableBundle(persistableBundle.getPersistableBundle(sb.toString()));
            i2 = i3;
        }
        return personArr;
    }

    /* renamed from: a */
    public Intent m2820a(Intent intent) {
        intent.putExtra("android.intent.extra.shortcut.INTENT", this.f5290d[r0.length - 1]).putExtra("android.intent.extra.shortcut.NAME", this.f5292f.toString());
        if (this.f5295i != null) {
            Drawable drawable = null;
            if (this.f5296j) {
                PackageManager packageManager = this.f5287a.getPackageManager();
                ComponentName componentName = this.f5291e;
                if (componentName != null) {
                    try {
                        drawable = packageManager.getActivityIcon(componentName);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                if (drawable == null) {
                    drawable = this.f5287a.getApplicationInfo().loadIcon(packageManager);
                }
            }
            this.f5295i.addToShortcutIntent(intent, drawable, this.f5287a);
        }
        return intent;
    }

    @RequiresApi(22)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: b */
    public final PersistableBundle m2821b() {
        if (this.f5302p == null) {
            this.f5302p = new PersistableBundle();
        }
        Person[] personArr = this.f5297k;
        if (personArr != null && personArr.length > 0) {
            this.f5302p.putInt(f5280C, personArr.length);
            int i = 0;
            while (i < this.f5297k.length) {
                PersistableBundle persistableBundle = this.f5302p;
                StringBuilder sb = new StringBuilder();
                sb.append(f5281D);
                int i2 = i + 1;
                sb.append(i2);
                persistableBundle.putPersistableBundle(sb.toString(), this.f5297k[i].toPersistableBundle());
                i = i2;
            }
        }
        LocusIdCompat locusIdCompat = this.f5299m;
        if (locusIdCompat != null) {
            this.f5302p.putString(f5282E, locusIdCompat.getId());
        }
        this.f5302p.putBoolean(f5283F, this.f5300n);
        return this.f5302p;
    }

    @Nullable
    public ComponentName getActivity() {
        return this.f5291e;
    }

    @Nullable
    public Set<String> getCategories() {
        return this.f5298l;
    }

    @Nullable
    public CharSequence getDisabledMessage() {
        return this.f5294h;
    }

    public int getDisabledReason() {
        return this.f5285A;
    }

    public int getExcludedFromSurfaces() {
        return this.f5286B;
    }

    @Nullable
    public PersistableBundle getExtras() {
        return this.f5302p;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public IconCompat getIcon() {
        return this.f5295i;
    }

    @NonNull
    public String getId() {
        return this.f5288b;
    }

    @NonNull
    public Intent getIntent() {
        return this.f5290d[r1.length - 1];
    }

    @NonNull
    public Intent[] getIntents() {
        Intent[] intentArr = this.f5290d;
        return (Intent[]) Arrays.copyOf(intentArr, intentArr.length);
    }

    public long getLastChangedTimestamp() {
        return this.f5304r;
    }

    @Nullable
    public LocusIdCompat getLocusId() {
        return this.f5299m;
    }

    @Nullable
    public CharSequence getLongLabel() {
        return this.f5293g;
    }

    @NonNull
    public String getPackage() {
        return this.f5289c;
    }

    public int getRank() {
        return this.f5301o;
    }

    @NonNull
    public CharSequence getShortLabel() {
        return this.f5292f;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Bundle getTransientExtras() {
        return this.f5303q;
    }

    @Nullable
    public UserHandle getUserHandle() {
        return this.f5305s;
    }

    public boolean hasKeyFieldsOnly() {
        return this.f5312z;
    }

    public boolean isCached() {
        return this.f5306t;
    }

    public boolean isDeclaredInManifest() {
        return this.f5309w;
    }

    public boolean isDynamic() {
        return this.f5307u;
    }

    public boolean isEnabled() {
        return this.f5311y;
    }

    public boolean isExcludedFromSurfaces(int i) {
        return (this.f5286B & i) != 0;
    }

    public boolean isImmutable() {
        return this.f5310x;
    }

    public boolean isPinned() {
        return this.f5308v;
    }

    @RequiresApi(25)
    public ShortcutInfo toShortcutInfo() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.f5287a, this.f5288b).setShortLabel(this.f5292f).setIntents(this.f5290d);
        IconCompat iconCompat = this.f5295i;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.toIcon(this.f5287a));
        }
        if (!TextUtils.isEmpty(this.f5293g)) {
            intents.setLongLabel(this.f5293g);
        }
        if (!TextUtils.isEmpty(this.f5294h)) {
            intents.setDisabledMessage(this.f5294h);
        }
        ComponentName componentName = this.f5291e;
        if (componentName != null) {
            intents.setActivity(componentName);
        }
        Set<String> set = this.f5298l;
        if (set != null) {
            intents.setCategories(set);
        }
        intents.setRank(this.f5301o);
        PersistableBundle persistableBundle = this.f5302p;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        Person[] personArr = this.f5297k;
        if (personArr != null && personArr.length > 0) {
            int length = personArr.length;
            android.app.Person[] personArr2 = new android.app.Person[length];
            for (int i = 0; i < length; i++) {
                personArr2[i] = this.f5297k[i].toAndroidPerson();
            }
            intents.setPersons(personArr2);
        }
        LocusIdCompat locusIdCompat = this.f5299m;
        if (locusIdCompat != null) {
            intents.setLocusId(locusIdCompat.toLocusId());
        }
        intents.setLongLived(this.f5300n);
        if (Build.VERSION.SDK_INT >= 33) {
            C0643a.m2822a(intents, this.f5286B);
        }
        return intents.build();
    }
}
