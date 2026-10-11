package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class InputContentInfoCompat {

    /* renamed from: a */
    public final InterfaceC0856c f6100a;

    /* renamed from: androidx.core.view.inputmethod.InputContentInfoCompat$b */
    /* loaded from: classes3.dex */
    public static final class C0855b implements InterfaceC0856c {

        /* renamed from: a */
        @NonNull
        public final Uri f6102a;

        /* renamed from: b */
        @NonNull
        public final ClipDescription f6103b;

        /* renamed from: c */
        @Nullable
        public final Uri f6104c;

        public C0855b(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            this.f6102a = uri;
            this.f6103b = clipDescription;
            this.f6104c = uri2;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        @Nullable
        /* renamed from: a */
        public Uri mo3745a() {
            return this.f6104c;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        @NonNull
        /* renamed from: b */
        public Uri mo3746b() {
            return this.f6102a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        @Nullable
        /* renamed from: c */
        public Object mo3747c() {
            return null;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        /* renamed from: d */
        public void mo3748d() {
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        /* renamed from: e */
        public void mo3749e() {
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        @NonNull
        public ClipDescription getDescription() {
            return this.f6103b;
        }
    }

    /* renamed from: androidx.core.view.inputmethod.InputContentInfoCompat$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC0856c {
        @Nullable
        /* renamed from: a */
        Uri mo3745a();

        @NonNull
        /* renamed from: b */
        Uri mo3746b();

        @Nullable
        /* renamed from: c */
        Object mo3747c();

        /* renamed from: d */
        void mo3748d();

        /* renamed from: e */
        void mo3749e();

        @NonNull
        ClipDescription getDescription();
    }

    public InputContentInfoCompat(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        this.f6100a = new C0854a(uri, clipDescription, uri2);
    }

    @Nullable
    public static InputContentInfoCompat wrap(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return new InputContentInfoCompat(new C0854a(obj));
    }

    @NonNull
    public Uri getContentUri() {
        return this.f6100a.mo3746b();
    }

    @NonNull
    public ClipDescription getDescription() {
        return this.f6100a.getDescription();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.f6100a.mo3745a();
    }

    public void releasePermission() {
        this.f6100a.mo3749e();
    }

    public void requestPermission() {
        this.f6100a.mo3748d();
    }

    @Nullable
    public Object unwrap() {
        return this.f6100a.mo3747c();
    }

    @RequiresApi(25)
    /* renamed from: androidx.core.view.inputmethod.InputContentInfoCompat$a */
    /* loaded from: classes3.dex */
    public static final class C0854a implements InterfaceC0856c {

        /* renamed from: a */
        @NonNull
        public final InputContentInfo f6101a;

        public C0854a(@NonNull Object obj) {
            this.f6101a = (InputContentInfo) obj;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        @Nullable
        /* renamed from: a */
        public Uri mo3745a() {
            return this.f6101a.getLinkUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        @NonNull
        /* renamed from: b */
        public Uri mo3746b() {
            return this.f6101a.getContentUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        @NonNull
        /* renamed from: c */
        public Object mo3747c() {
            return this.f6101a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        /* renamed from: d */
        public void mo3748d() {
            this.f6101a.requestPermission();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        /* renamed from: e */
        public void mo3749e() {
            this.f6101a.releasePermission();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InterfaceC0856c
        @NonNull
        public ClipDescription getDescription() {
            return this.f6101a.getDescription();
        }

        public C0854a(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            this.f6101a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    public InputContentInfoCompat(@NonNull InterfaceC0856c interfaceC0856c) {
        this.f6100a = interfaceC0856c;
    }
}
