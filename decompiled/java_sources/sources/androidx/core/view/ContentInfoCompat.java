package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContentInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.bbe;
import com.sunia.HTREnginev2.cbe;
import com.sunia.HTREnginev2.dbe;
import com.sunia.HTREnginev2.tae;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_AUTOFILL = 4;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    public static final int SOURCE_PROCESS_TEXT = 5;

    /* renamed from: a */
    @NonNull
    public final InterfaceC0760f f5790a;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Source {
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.view.ContentInfoCompat$a */
    /* loaded from: classes3.dex */
    public static final class C0755a {
        @NonNull
        @DoNotInline
        /* renamed from: a */
        public static Pair<ContentInfo, ContentInfo> m3283a(@NonNull ContentInfo contentInfo, @NonNull final Predicate<ClipData.Item> predicate) {
            ClipData clip = contentInfo.getClip();
            if (clip.getItemCount() != 1) {
                Objects.requireNonNull(predicate);
                Pair<ClipData, ClipData> m3281c = ContentInfoCompat.m3281c(clip, new androidx.core.util.Predicate() { // from class: com.sunia.HTREnginev2.uae
                    @Override // androidx.core.util.Predicate
                    public final boolean test(Object obj) {
                        return predicate.test((ClipData.Item) obj);
                    }
                });
                return m3281c.first == null ? Pair.create(null, contentInfo) : m3281c.second == null ? Pair.create(contentInfo, null) : Pair.create(new ContentInfo.Builder(contentInfo).setClip((ClipData) m3281c.first).build(), new ContentInfo.Builder(contentInfo).setClip((ClipData) m3281c.second).build());
            }
            boolean test = predicate.test(clip.getItemAt(0));
            ContentInfo contentInfo2 = test ? contentInfo : null;
            if (test) {
                contentInfo = null;
            }
            return Pair.create(contentInfo2, contentInfo);
        }
    }

    /* renamed from: androidx.core.view.ContentInfoCompat$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC0757c {
        /* renamed from: a */
        void mo3284a(@NonNull ClipData clipData);

        /* renamed from: b */
        void mo3285b(@Nullable Uri uri);

        @NonNull
        ContentInfoCompat build();

        /* renamed from: c */
        void mo3286c(int i);

        void setExtras(@Nullable Bundle bundle);

        void setFlags(int i);
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.view.ContentInfoCompat$e */
    /* loaded from: classes3.dex */
    public static final class C0759e implements InterfaceC0760f {

        /* renamed from: a */
        @NonNull
        public final ContentInfo f5798a;

        public C0759e(@NonNull ContentInfo contentInfo) {
            this.f5798a = tae.m57351a(Preconditions.checkNotNull(contentInfo));
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        @Nullable
        /* renamed from: a */
        public Uri mo3287a() {
            Uri linkUri;
            linkUri = this.f5798a.getLinkUri();
            return linkUri;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        @NonNull
        /* renamed from: b */
        public ContentInfo mo3288b() {
            return this.f5798a;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        @NonNull
        public ClipData getClip() {
            ClipData clip;
            clip = this.f5798a.getClip();
            return clip;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        @Nullable
        public Bundle getExtras() {
            Bundle extras;
            extras = this.f5798a.getExtras();
            return extras;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        public int getFlags() {
            int flags;
            flags = this.f5798a.getFlags();
            return flags;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        public int getSource() {
            int source;
            source = this.f5798a.getSource();
            return source;
        }

        @NonNull
        public String toString() {
            return "ContentInfoCompat{" + this.f5798a + "}";
        }
    }

    /* renamed from: androidx.core.view.ContentInfoCompat$f */
    /* loaded from: classes3.dex */
    public interface InterfaceC0760f {
        @Nullable
        /* renamed from: a */
        Uri mo3287a();

        @Nullable
        /* renamed from: b */
        ContentInfo mo3288b();

        @NonNull
        ClipData getClip();

        @Nullable
        Bundle getExtras();

        int getFlags();

        int getSource();
    }

    /* renamed from: androidx.core.view.ContentInfoCompat$g */
    /* loaded from: classes3.dex */
    public static final class C0761g implements InterfaceC0760f {

        /* renamed from: a */
        @NonNull
        public final ClipData f5799a;

        /* renamed from: b */
        public final int f5800b;

        /* renamed from: c */
        public final int f5801c;

        /* renamed from: d */
        @Nullable
        public final Uri f5802d;

        /* renamed from: e */
        @Nullable
        public final Bundle f5803e;

        public C0761g(C0758d c0758d) {
            this.f5799a = (ClipData) Preconditions.checkNotNull(c0758d.f5793a);
            this.f5800b = Preconditions.checkArgumentInRange(c0758d.f5794b, 0, 5, "source");
            this.f5801c = Preconditions.checkFlagsArgument(c0758d.f5795c, 1);
            this.f5802d = c0758d.f5796d;
            this.f5803e = c0758d.f5797e;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        @Nullable
        /* renamed from: a */
        public Uri mo3287a() {
            return this.f5802d;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        @Nullable
        /* renamed from: b */
        public ContentInfo mo3288b() {
            return null;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        @NonNull
        public ClipData getClip() {
            return this.f5799a;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        @Nullable
        public Bundle getExtras() {
            return this.f5803e;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        public int getFlags() {
            return this.f5801c;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0760f
        public int getSource() {
            return this.f5800b;
        }

        @NonNull
        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("ContentInfoCompat{clip=");
            sb.append(this.f5799a.getDescription());
            sb.append(", source=");
            sb.append(ContentInfoCompat.m3282d(this.f5800b));
            sb.append(", flags=");
            sb.append(ContentInfoCompat.m3280b(this.f5801c));
            if (this.f5802d == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + this.f5802d.toString().length() + MotionUtils.f31762d;
            }
            sb.append(str);
            sb.append(this.f5803e != null ? ", hasExtras" : "");
            sb.append("}");
            return sb.toString();
        }
    }

    public ContentInfoCompat(@NonNull InterfaceC0760f interfaceC0760f) {
        this.f5790a = interfaceC0760f;
    }

    @NonNull
    /* renamed from: a */
    public static ClipData m3279a(@NonNull ClipDescription clipDescription, @NonNull List<ClipData.Item> list) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), list.get(0));
        for (int i = 1; i < list.size(); i++) {
            clipData.addItem(list.get(i));
        }
        return clipData;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: b */
    public static String m3280b(int i) {
        return (i & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i);
    }

    @NonNull
    /* renamed from: c */
    public static Pair<ClipData, ClipData> m3281c(@NonNull ClipData clipData, @NonNull androidx.core.util.Predicate<ClipData.Item> predicate) {
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i = 0; i < clipData.getItemCount(); i++) {
            ClipData.Item itemAt = clipData.getItemAt(i);
            if (predicate.test(itemAt)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemAt);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(itemAt);
            }
        }
        return arrayList == null ? Pair.create(null, clipData) : arrayList2 == null ? Pair.create(clipData, null) : Pair.create(m3279a(clipData.getDescription(), arrayList), m3279a(clipData.getDescription(), arrayList2));
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: d */
    public static String m3282d(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    @NonNull
    @RequiresApi(31)
    public static ContentInfoCompat toContentInfoCompat(@NonNull ContentInfo contentInfo) {
        return new ContentInfoCompat(new C0759e(contentInfo));
    }

    @NonNull
    public ClipData getClip() {
        return this.f5790a.getClip();
    }

    @Nullable
    public Bundle getExtras() {
        return this.f5790a.getExtras();
    }

    public int getFlags() {
        return this.f5790a.getFlags();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.f5790a.mo3287a();
    }

    public int getSource() {
        return this.f5790a.getSource();
    }

    @NonNull
    public Pair<ContentInfoCompat, ContentInfoCompat> partition(@NonNull androidx.core.util.Predicate<ClipData.Item> predicate) {
        ClipData clip = this.f5790a.getClip();
        if (clip.getItemCount() == 1) {
            boolean test = predicate.test(clip.getItemAt(0));
            ContentInfoCompat contentInfoCompat = test ? this : null;
            if (test) {
                this = null;
            }
            return Pair.create(contentInfoCompat, this);
        }
        Pair<ClipData, ClipData> m3281c = m3281c(clip, predicate);
        if (m3281c.first == null) {
            return Pair.create(null, this);
        }
        if (m3281c.second == null) {
            return Pair.create(this, null);
        }
        return Pair.create(new Builder(this).setClip((ClipData) m3281c.first).build(), new Builder(this).setClip((ClipData) m3281c.second).build());
    }

    @NonNull
    @RequiresApi(31)
    public ContentInfo toContentInfo() {
        ContentInfo mo3288b = this.f5790a.mo3288b();
        Objects.requireNonNull(mo3288b);
        return tae.m57351a(mo3288b);
    }

    @NonNull
    public String toString() {
        return this.f5790a.toString();
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.view.ContentInfoCompat$b */
    /* loaded from: classes3.dex */
    public static final class C0756b implements InterfaceC0757c {

        /* renamed from: a */
        @NonNull
        public final ContentInfo.Builder f5792a;

        public C0756b(@NonNull ClipData clipData, int i) {
            this.f5792a = bbe.m53233a(clipData, i);
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        /* renamed from: a */
        public void mo3284a(@NonNull ClipData clipData) {
            this.f5792a.setClip(clipData);
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        /* renamed from: b */
        public void mo3285b(@Nullable Uri uri) {
            this.f5792a.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        @NonNull
        public ContentInfoCompat build() {
            ContentInfo build;
            build = this.f5792a.build();
            return new ContentInfoCompat(new C0759e(build));
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        /* renamed from: c */
        public void mo3286c(int i) {
            this.f5792a.setSource(i);
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        public void setExtras(@Nullable Bundle bundle) {
            this.f5792a.setExtras(bundle);
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        public void setFlags(int i) {
            this.f5792a.setFlags(i);
        }

        public C0756b(@NonNull ContentInfoCompat contentInfoCompat) {
            dbe.m53628a();
            this.f5792a = cbe.m53419a(contentInfoCompat.toContentInfo());
        }
    }

    /* renamed from: androidx.core.view.ContentInfoCompat$d */
    /* loaded from: classes3.dex */
    public static final class C0758d implements InterfaceC0757c {

        /* renamed from: a */
        @NonNull
        public ClipData f5793a;

        /* renamed from: b */
        public int f5794b;

        /* renamed from: c */
        public int f5795c;

        /* renamed from: d */
        @Nullable
        public Uri f5796d;

        /* renamed from: e */
        @Nullable
        public Bundle f5797e;

        public C0758d(@NonNull ClipData clipData, int i) {
            this.f5793a = clipData;
            this.f5794b = i;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        /* renamed from: a */
        public void mo3284a(@NonNull ClipData clipData) {
            this.f5793a = clipData;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        /* renamed from: b */
        public void mo3285b(@Nullable Uri uri) {
            this.f5796d = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        @NonNull
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new C0761g(this));
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        /* renamed from: c */
        public void mo3286c(int i) {
            this.f5794b = i;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        public void setExtras(@Nullable Bundle bundle) {
            this.f5797e = bundle;
        }

        @Override // androidx.core.view.ContentInfoCompat.InterfaceC0757c
        public void setFlags(int i) {
            this.f5795c = i;
        }

        public C0758d(@NonNull ContentInfoCompat contentInfoCompat) {
            this.f5793a = contentInfoCompat.getClip();
            this.f5794b = contentInfoCompat.getSource();
            this.f5795c = contentInfoCompat.getFlags();
            this.f5796d = contentInfoCompat.getLinkUri();
            this.f5797e = contentInfoCompat.getExtras();
        }
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        @NonNull
        public final InterfaceC0757c f5791a;

        public Builder(@NonNull ContentInfoCompat contentInfoCompat) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f5791a = new C0756b(contentInfoCompat);
            } else {
                this.f5791a = new C0758d(contentInfoCompat);
            }
        }

        @NonNull
        public ContentInfoCompat build() {
            return this.f5791a.build();
        }

        @NonNull
        public Builder setClip(@NonNull ClipData clipData) {
            this.f5791a.mo3284a(clipData);
            return this;
        }

        @NonNull
        public Builder setExtras(@Nullable Bundle bundle) {
            this.f5791a.setExtras(bundle);
            return this;
        }

        @NonNull
        public Builder setFlags(int i) {
            this.f5791a.setFlags(i);
            return this;
        }

        @NonNull
        public Builder setLinkUri(@Nullable Uri uri) {
            this.f5791a.mo3285b(uri);
            return this;
        }

        @NonNull
        public Builder setSource(int i) {
            this.f5791a.mo3286c(i);
            return this;
        }

        public Builder(@NonNull ClipData clipData, int i) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f5791a = new C0756b(clipData, i);
            } else {
                this.f5791a = new C0758d(clipData, i);
            }
        }
    }

    @NonNull
    @RequiresApi(31)
    public static Pair<ContentInfo, ContentInfo> partition(@NonNull ContentInfo contentInfo, @NonNull Predicate<ClipData.Item> predicate) {
        return C0755a.m3283a(contentInfo, predicate);
    }
}
