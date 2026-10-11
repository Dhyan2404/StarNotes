package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.xni;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes3.dex */
public class IntentSanitizer {

    /* renamed from: p */
    public static final String f5239p = "IntentSanitizer";

    /* renamed from: a */
    public int f5240a;

    /* renamed from: b */
    public Predicate<String> f5241b;

    /* renamed from: c */
    public Predicate<Uri> f5242c;

    /* renamed from: d */
    public Predicate<String> f5243d;

    /* renamed from: e */
    public Predicate<String> f5244e;

    /* renamed from: f */
    public Predicate<String> f5245f;

    /* renamed from: g */
    public Predicate<ComponentName> f5246g;

    /* renamed from: h */
    public boolean f5247h;

    /* renamed from: i */
    public Map<String, Predicate<Object>> f5248i;

    /* renamed from: j */
    public boolean f5249j;

    /* renamed from: k */
    public Predicate<Uri> f5250k;

    /* renamed from: l */
    public Predicate<ClipData> f5251l;

    /* renamed from: m */
    public boolean f5252m;

    /* renamed from: n */
    public boolean f5253n;

    /* renamed from: o */
    public boolean f5254o;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: q */
        public static final int f5255q = 2112614400;

        /* renamed from: r */
        public static final int f5256r = 2015363072;

        /* renamed from: a */
        public int f5257a;

        /* renamed from: h */
        public boolean f5264h;

        /* renamed from: i */
        public boolean f5265i;

        /* renamed from: n */
        public boolean f5270n;

        /* renamed from: o */
        public boolean f5271o;

        /* renamed from: p */
        public boolean f5272p;

        /* renamed from: b */
        public Predicate<String> f5258b = new Predicate() { // from class: com.sunia.HTREnginev2.goi
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2761A;
                m2761A = IntentSanitizer.Builder.m2761A((String) obj);
                return m2761A;
            }
        };

        /* renamed from: c */
        public Predicate<Uri> f5259c = new Predicate() { // from class: com.sunia.HTREnginev2.hoi
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2762B;
                m2762B = IntentSanitizer.Builder.m2762B((Uri) obj);
                return m2762B;
            }
        };

        /* renamed from: d */
        public Predicate<String> f5260d = new Predicate() { // from class: com.sunia.HTREnginev2.ioi
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2763C;
                m2763C = IntentSanitizer.Builder.m2763C((String) obj);
                return m2763C;
            }
        };

        /* renamed from: e */
        public Predicate<String> f5261e = new Predicate() { // from class: com.sunia.HTREnginev2.joi
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2764D;
                m2764D = IntentSanitizer.Builder.m2764D((String) obj);
                return m2764D;
            }
        };

        /* renamed from: f */
        public Predicate<String> f5262f = new Predicate() { // from class: com.sunia.HTREnginev2.koi
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2765E;
                m2765E = IntentSanitizer.Builder.m2765E((String) obj);
                return m2765E;
            }
        };

        /* renamed from: g */
        public Predicate<ComponentName> f5263g = new Predicate() { // from class: com.sunia.HTREnginev2.loi
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2766F;
                m2766F = IntentSanitizer.Builder.m2766F((ComponentName) obj);
                return m2766F;
            }
        };

        /* renamed from: j */
        public Map<String, Predicate<Object>> f5266j = new HashMap();

        /* renamed from: k */
        public boolean f5267k = false;

        /* renamed from: l */
        public Predicate<Uri> f5268l = new Predicate() { // from class: com.sunia.HTREnginev2.moi
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2767G;
                m2767G = IntentSanitizer.Builder.m2767G((Uri) obj);
                return m2767G;
            }
        };

        /* renamed from: m */
        public Predicate<ClipData> f5269m = new Predicate() { // from class: com.sunia.HTREnginev2.noi
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2768H;
                m2768H = IntentSanitizer.Builder.m2768H((ClipData) obj);
                return m2768H;
            }
        };

        /* renamed from: A */
        public static /* synthetic */ boolean m2761A(String str) {
            return false;
        }

        /* renamed from: B */
        public static /* synthetic */ boolean m2762B(Uri uri) {
            return false;
        }

        /* renamed from: C */
        public static /* synthetic */ boolean m2763C(String str) {
            return false;
        }

        /* renamed from: D */
        public static /* synthetic */ boolean m2764D(String str) {
            return false;
        }

        /* renamed from: E */
        public static /* synthetic */ boolean m2765E(String str) {
            return false;
        }

        /* renamed from: F */
        public static /* synthetic */ boolean m2766F(ComponentName componentName) {
            return false;
        }

        /* renamed from: G */
        public static /* synthetic */ boolean m2767G(Uri uri) {
            return false;
        }

        /* renamed from: H */
        public static /* synthetic */ boolean m2768H(ClipData clipData) {
            return false;
        }

        /* renamed from: r */
        public static /* synthetic */ boolean m2786r(ComponentName componentName) {
            return true;
        }

        /* renamed from: s */
        public static /* synthetic */ boolean m2787s(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        /* renamed from: t */
        public static /* synthetic */ boolean m2788t(String str, ComponentName componentName) {
            return str.equals(componentName.getPackageName());
        }

        /* renamed from: u */
        public static /* synthetic */ boolean m2789u(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        /* renamed from: v */
        public static /* synthetic */ boolean m2790v(Object obj) {
            return true;
        }

        /* renamed from: w */
        public static /* synthetic */ boolean m2791w(Class cls, Predicate predicate, Object obj) {
            return cls.isInstance(obj) && predicate.test(cls.cast(obj));
        }

        /* renamed from: x */
        public static /* synthetic */ boolean m2792x(Object obj) {
            return false;
        }

        /* renamed from: y */
        public static /* synthetic */ boolean m2793y(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        /* renamed from: z */
        public static /* synthetic */ boolean m2794z(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAction(@NonNull String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            allowAction(new xni(str));
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAnyComponent() {
            this.f5264h = true;
            this.f5263g = new Predicate() { // from class: com.sunia.HTREnginev2.zni
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean m2786r;
                    m2786r = IntentSanitizer.Builder.m2786r((ComponentName) obj);
                    return m2786r;
                }
            };
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowCategory(@NonNull String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowCategory(new xni(str));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipData(@NonNull Predicate<ClipData> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f5269m = this.f5269m.m3268or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataText() {
            this.f5267k = true;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataUri(@NonNull Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f5268l = this.f5268l.m3268or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataUriWithAuthority(@NonNull final String str) {
            Preconditions.checkNotNull(str);
            return allowClipDataUri(new Predicate() { // from class: com.sunia.HTREnginev2.wni
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean m2787s;
                    m2787s = IntentSanitizer.Builder.m2787s(str, (Uri) obj);
                    return m2787s;
                }
            });
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponent(@NonNull final ComponentName componentName) {
            Preconditions.checkNotNull(componentName);
            Objects.requireNonNull(componentName);
            return allowComponent(new Predicate() { // from class: com.sunia.HTREnginev2.eoi
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    return componentName.equals((ComponentName) obj);
                }
            });
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponentWithPackage(@NonNull final String str) {
            Preconditions.checkNotNull(str);
            return allowComponent(new Predicate() { // from class: com.sunia.HTREnginev2.boi
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean m2788t;
                    m2788t = IntentSanitizer.Builder.m2788t(str, (ComponentName) obj);
                    return m2788t;
                }
            });
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowData(@NonNull Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f5259c = this.f5259c.m3268or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowDataWithAuthority(@NonNull final String str) {
            Preconditions.checkNotNull(str);
            allowData(new Predicate() { // from class: com.sunia.HTREnginev2.coi
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean m2789u;
                    m2789u = IntentSanitizer.Builder.m2789u(str, (Uri) obj);
                    return m2789u;
                }
            });
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtra(@NonNull String str, @NonNull Class<?> cls) {
            return allowExtra(str, cls, new Predicate() { // from class: com.sunia.HTREnginev2.foi
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean m2790v;
                    m2790v = IntentSanitizer.Builder.m2790v(obj);
                    return m2790v;
                }
            });
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraOutput(@NonNull final String str) {
            allowExtra(Constants.ELEMNAME_OUTPUT_STRING, Uri.class, new Predicate() { // from class: com.sunia.HTREnginev2.doi
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean m2793y;
                    m2793y = IntentSanitizer.Builder.m2793y(str, (Uri) obj);
                    return m2793y;
                }
            });
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraStream(@NonNull Predicate<Uri> predicate) {
            allowExtra("android.intent.extra.STREAM", Uri.class, predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraStreamUriWithAuthority(@NonNull final String str) {
            Preconditions.checkNotNull(str);
            allowExtra("android.intent.extra.STREAM", Uri.class, new Predicate() { // from class: com.sunia.HTREnginev2.yni
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean m2794z;
                    m2794z = IntentSanitizer.Builder.m2794z(str, (Uri) obj);
                    return m2794z;
                }
            });
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowFlags(int i) {
            this.f5257a = i | this.f5257a;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowHistoryStackFlags() {
            this.f5257a |= f5255q;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowIdentifier() {
            this.f5270n = true;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowPackage(@NonNull String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowPackage(new xni(str));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowReceiverFlags() {
            this.f5257a |= f5256r;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowSelector() {
            this.f5271o = true;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowSourceBounds() {
            this.f5272p = true;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowType(@NonNull String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowType(new xni(str));
        }

        @NonNull
        public IntentSanitizer build() {
            boolean z = this.f5264h;
            if ((z && this.f5265i) || (!z && !this.f5265i)) {
                throw new SecurityException("You must call either allowAnyComponent or one or more of the allowComponent methods; but not both.");
            }
            IntentSanitizer intentSanitizer = new IntentSanitizer();
            intentSanitizer.f5240a = this.f5257a;
            intentSanitizer.f5241b = this.f5258b;
            intentSanitizer.f5242c = this.f5259c;
            intentSanitizer.f5243d = this.f5260d;
            intentSanitizer.f5244e = this.f5261e;
            intentSanitizer.f5245f = this.f5262f;
            intentSanitizer.f5247h = this.f5264h;
            intentSanitizer.f5246g = this.f5263g;
            intentSanitizer.f5248i = this.f5266j;
            intentSanitizer.f5249j = this.f5267k;
            intentSanitizer.f5250k = this.f5268l;
            intentSanitizer.f5251l = this.f5269m;
            intentSanitizer.f5252m = this.f5270n;
            intentSanitizer.f5253n = this.f5271o;
            intentSanitizer.f5254o = this.f5272p;
            return intentSanitizer;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public <T> Builder allowExtra(@NonNull String str, @NonNull final Class<T> cls, @NonNull final Predicate<T> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(predicate);
            return allowExtra(str, new Predicate() { // from class: com.sunia.HTREnginev2.aoi
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean m2791w;
                    m2791w = IntentSanitizer.Builder.m2791w(cls, predicate, obj);
                    return m2791w;
                }
            });
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraOutput(@NonNull Predicate<Uri> predicate) {
            allowExtra(Constants.ELEMNAME_OUTPUT_STRING, Uri.class, predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAction(@NonNull Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f5258b = this.f5258b.m3268or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowCategory(@NonNull Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f5261e = this.f5261e.m3268or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponent(@NonNull Predicate<ComponentName> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f5265i = true;
            this.f5263g = this.f5263g.m3268or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowPackage(@NonNull Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f5262f = this.f5262f.m3268or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowType(@NonNull Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f5260d = this.f5260d.m3268or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtra(@NonNull String str, @NonNull Predicate<Object> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(predicate);
            Predicate<Object> predicate2 = this.f5266j.get(str);
            if (predicate2 == null) {
                predicate2 = new Predicate() { // from class: com.sunia.HTREnginev2.vni
                    @Override // androidx.core.util.Predicate
                    public final boolean test(Object obj) {
                        boolean m2792x;
                        m2792x = IntentSanitizer.Builder.m2792x(obj);
                        return m2792x;
                    }
                };
            }
            this.f5266j.put(str, predicate2.m3268or(predicate));
            return this;
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.content.IntentSanitizer$b */
    /* loaded from: classes3.dex */
    public static class C0635b {
        @DoNotInline
        /* renamed from: a */
        public static String m2795a(Intent intent) {
            return intent.getIdentifier();
        }

        @DoNotInline
        /* renamed from: b */
        public static Intent m2796b(Intent intent, String str) {
            return intent.setIdentifier(str);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.content.IntentSanitizer$c */
    /* loaded from: classes3.dex */
    public static class C0636c {
        @DoNotInline
        /* renamed from: a */
        public static void m2797a(int i, ClipData.Item item, Consumer<String> consumer) {
            if (item.getHtmlText() == null && item.getIntent() == null && item.getTextLinks() == null) {
                return;
            }
            consumer.accept("ClipData item at position " + i + " contains htmlText, textLinks or intent: " + item);
        }
    }

    /* renamed from: r */
    public static void m2756r(int i, ClipData.Item item, Consumer<String> consumer) {
        if (item.getHtmlText() == null && item.getIntent() == null) {
            return;
        }
        consumer.accept("ClipData item at position " + i + " contains htmlText, textLinks or intent: " + item);
    }

    /* renamed from: s */
    public static /* synthetic */ void m2757s(String str) {
    }

    /* renamed from: t */
    public static /* synthetic */ void m2758t(String str) {
        throw new SecurityException(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cd  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2759v(@androidx.annotation.NonNull android.content.Intent r7, android.content.Intent r8, androidx.core.util.Predicate<android.content.ClipData> r9, boolean r10, androidx.core.util.Predicate<android.net.Uri> r11, androidx.core.util.Consumer<java.lang.String> r12) {
        /*
            android.content.ClipData r7 = r7.getClipData()
            if (r7 != 0) goto L7
            return
        L7:
            if (r9 == 0) goto L14
            boolean r9 = r9.test(r7)
            if (r9 == 0) goto L14
            r8.setClipData(r7)
            goto Lde
        L14:
            r9 = 0
            r0 = 0
            r1 = r9
        L17:
            int r2 = r7.getItemCount()
            if (r0 >= r2) goto Ld9
            android.content.ClipData$Item r2 = r7.getItemAt(r0)
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 31
            if (r3 < r4) goto L2b
            androidx.core.content.IntentSanitizer.C0636c.m2797a(r0, r2, r12)
            goto L2e
        L2b:
            m2756r(r0, r2, r12)
        L2e:
            if (r10 == 0) goto L35
            java.lang.CharSequence r3 = r2.getText()
            goto L5c
        L35:
            java.lang.CharSequence r3 = r2.getText()
            if (r3 == 0) goto L5b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Item text cannot contain value. Item position: "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r4 = ". Text: "
            r3.append(r4)
            java.lang.CharSequence r4 = r2.getText()
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r12.accept(r3)
        L5b:
            r3 = r9
        L5c:
            java.lang.String r4 = ". URI: "
            java.lang.String r5 = "Item URI is not allowed. Item position: "
            if (r11 != 0) goto L85
            android.net.Uri r6 = r2.getUri()
            if (r6 == 0) goto Lb2
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r5)
            r6.append(r0)
            r6.append(r4)
            android.net.Uri r2 = r2.getUri()
            r6.append(r2)
            java.lang.String r2 = r6.toString()
            r12.accept(r2)
            goto Lb2
        L85:
            android.net.Uri r6 = r2.getUri()
            if (r6 == 0) goto Lb4
            android.net.Uri r6 = r2.getUri()
            boolean r6 = r11.test(r6)
            if (r6 == 0) goto L96
            goto Lb4
        L96:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r5)
            r6.append(r0)
            r6.append(r4)
            android.net.Uri r2 = r2.getUri()
            r6.append(r2)
            java.lang.String r2 = r6.toString()
            r12.accept(r2)
        Lb2:
            r2 = r9
            goto Lb8
        Lb4:
            android.net.Uri r2 = r2.getUri()
        Lb8:
            if (r3 != 0) goto Lbc
            if (r2 == 0) goto Ld5
        Lbc:
            if (r1 != 0) goto Lcd
            android.content.ClipData r1 = new android.content.ClipData
            android.content.ClipDescription r4 = r7.getDescription()
            android.content.ClipData$Item r5 = new android.content.ClipData$Item
            r5.<init>(r3, r9, r2)
            r1.<init>(r4, r5)
            goto Ld5
        Lcd:
            android.content.ClipData$Item r4 = new android.content.ClipData$Item
            r4.<init>(r3, r9, r2)
            r1.addItem(r4)
        Ld5:
            int r0 = r0 + 1
            goto L17
        Ld9:
            if (r1 == 0) goto Lde
            r8.setClipData(r1)
        Lde:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.IntentSanitizer.m2759v(android.content.Intent, android.content.Intent, androidx.core.util.Predicate, boolean, androidx.core.util.Predicate, androidx.core.util.Consumer):void");
    }

    @NonNull
    public Intent sanitize(@NonNull Intent intent, @NonNull Consumer<String> consumer) {
        Intent intent2 = new Intent();
        ComponentName component = intent.getComponent();
        if ((this.f5247h && component == null) || this.f5246g.test(component)) {
            intent2.setComponent(component);
        } else {
            consumer.accept("Component is not allowed: " + component);
            intent2.setComponent(new ComponentName("android", "java.lang.Void"));
        }
        String str = intent.getPackage();
        if (str == null || this.f5245f.test(str)) {
            intent2.setPackage(str);
        } else {
            consumer.accept("Package is not allowed: " + str);
        }
        int flags = this.f5240a | intent.getFlags();
        int i = this.f5240a;
        if (flags == i) {
            intent2.setFlags(intent.getFlags());
        } else {
            intent2.setFlags(intent.getFlags() & i);
            consumer.accept("The intent contains flags that are not allowed: 0x" + Integer.toHexString(intent.getFlags() & (~this.f5240a)));
        }
        String action = intent.getAction();
        if (action == null || this.f5241b.test(action)) {
            intent2.setAction(action);
        } else {
            consumer.accept("Action is not allowed: " + action);
        }
        Uri data = intent.getData();
        if (data == null || this.f5242c.test(data)) {
            intent2.setData(data);
        } else {
            consumer.accept("Data is not allowed: " + data);
        }
        String type = intent.getType();
        if (type == null || this.f5243d.test(type)) {
            intent2.setDataAndType(intent2.getData(), type);
        } else {
            consumer.accept("Type is not allowed: " + type);
        }
        Set<String> categories = intent.getCategories();
        if (categories != null) {
            for (String str2 : categories) {
                if (this.f5244e.test(str2)) {
                    intent2.addCategory(str2);
                } else {
                    consumer.accept("Category is not allowed: " + str2);
                }
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            for (String str3 : extras.keySet()) {
                if (str3.equals("android.intent.extra.STREAM") && (this.f5240a & 1) == 0) {
                    consumer.accept("Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag.");
                } else if (!str3.equals(Constants.ELEMNAME_OUTPUT_STRING) || ((~this.f5240a) & 3) == 0) {
                    Object obj = extras.get(str3);
                    Predicate<Object> predicate = this.f5248i.get(str3);
                    if (predicate == null || !predicate.test(obj)) {
                        consumer.accept("Extra is not allowed. Key: " + str3 + ". Value: " + obj);
                    } else {
                        m2760u(intent2, str3, obj);
                    }
                } else {
                    consumer.accept("Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags.");
                }
            }
        }
        m2759v(intent, intent2, this.f5251l, this.f5249j, this.f5250k, consumer);
        if (this.f5252m) {
            C0635b.m2796b(intent2, C0635b.m2795a(intent));
        } else if (C0635b.m2795a(intent) != null) {
            consumer.accept("Identifier is not allowed: " + C0635b.m2795a(intent));
        }
        if (this.f5253n) {
            intent2.setSelector(intent.getSelector());
        } else if (intent.getSelector() != null) {
            consumer.accept("Selector is not allowed: " + intent.getSelector());
        }
        if (this.f5254o) {
            intent2.setSourceBounds(intent.getSourceBounds());
        } else if (intent.getSourceBounds() != null) {
            consumer.accept("SourceBounds is not allowed: " + intent.getSourceBounds());
        }
        return intent2;
    }

    @NonNull
    public Intent sanitizeByFiltering(@NonNull Intent intent) {
        return sanitize(intent, new Consumer() { // from class: com.sunia.HTREnginev2.tni
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                IntentSanitizer.m2757s((String) obj);
            }
        });
    }

    @NonNull
    public Intent sanitizeByThrowing(@NonNull Intent intent) {
        return sanitize(intent, new Consumer() { // from class: com.sunia.HTREnginev2.uni
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                IntentSanitizer.m2758t((String) obj);
            }
        });
    }

    /* renamed from: u */
    public final void m2760u(Intent intent, String str, Object obj) {
        if (obj == null) {
            intent.getExtras().putString(str, null);
            return;
        }
        if (obj instanceof Parcelable) {
            intent.putExtra(str, (Parcelable) obj);
            return;
        }
        if (obj instanceof Parcelable[]) {
            intent.putExtra(str, (Parcelable[]) obj);
        } else {
            if (obj instanceof Serializable) {
                intent.putExtra(str, (Serializable) obj);
                return;
            }
            throw new IllegalArgumentException("Unsupported type " + obj.getClass());
        }
    }

    public IntentSanitizer() {
    }
}
