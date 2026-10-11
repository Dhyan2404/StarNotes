package androidx.core.view.contentcapture;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewStructureCompat;
import androidx.core.view.autofill.AutofillIdCompat;
import java.util.List;
import java.util.Objects;

/* loaded from: classes3.dex */
public class ContentCaptureSessionCompat {

    /* renamed from: c */
    public static final String f6069c = "TREAT_AS_VIEW_TREE_APPEARING";

    /* renamed from: d */
    public static final String f6070d = "TREAT_AS_VIEW_TREE_APPEARED";

    /* renamed from: a */
    public final Object f6071a;

    /* renamed from: b */
    public final View f6072b;

    @RequiresApi(23)
    /* renamed from: androidx.core.view.contentcapture.ContentCaptureSessionCompat$a */
    /* loaded from: classes3.dex */
    public static class C0847a {
        @DoNotInline
        /* renamed from: a */
        public static Bundle m3723a(ViewStructure viewStructure) {
            return viewStructure.getExtras();
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.view.contentcapture.ContentCaptureSessionCompat$b */
    /* loaded from: classes3.dex */
    public static class C0848b {
        @DoNotInline
        /* renamed from: a */
        public static AutofillId m3724a(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j) {
            return contentCaptureSession.newAutofillId(autofillId, j);
        }

        @DoNotInline
        /* renamed from: b */
        public static ViewStructure m3725b(ContentCaptureSession contentCaptureSession, View view) {
            return contentCaptureSession.newViewStructure(view);
        }

        @DoNotInline
        /* renamed from: c */
        public static ViewStructure m3726c(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j) {
            return contentCaptureSession.newVirtualViewStructure(autofillId, j);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3727d(ContentCaptureSession contentCaptureSession, ViewStructure viewStructure) {
            contentCaptureSession.notifyViewAppeared(viewStructure);
        }

        @DoNotInline
        /* renamed from: e */
        public static void m3728e(ContentCaptureSession contentCaptureSession, AutofillId autofillId, CharSequence charSequence) {
            contentCaptureSession.notifyViewTextChanged(autofillId, charSequence);
        }

        @DoNotInline
        /* renamed from: f */
        public static void m3729f(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long[] jArr) {
            contentCaptureSession.notifyViewsDisappeared(autofillId, jArr);
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.view.contentcapture.ContentCaptureSessionCompat$c */
    /* loaded from: classes3.dex */
    public static class C0849c {
        @DoNotInline
        /* renamed from: a */
        public static void m3730a(ContentCaptureSession contentCaptureSession, List<ViewStructure> list) {
            contentCaptureSession.notifyViewsAppeared(list);
        }
    }

    @RequiresApi(29)
    public ContentCaptureSessionCompat(@NonNull ContentCaptureSession contentCaptureSession, @NonNull View view) {
        this.f6071a = contentCaptureSession;
        this.f6072b = view;
    }

    @NonNull
    @RequiresApi(29)
    public static ContentCaptureSessionCompat toContentCaptureSessionCompat(@NonNull ContentCaptureSession contentCaptureSession, @NonNull View view) {
        return new ContentCaptureSessionCompat(contentCaptureSession, view);
    }

    @Nullable
    public AutofillId newAutofillId(long j) {
        ContentCaptureSession contentCaptureSession = (ContentCaptureSession) this.f6071a;
        AutofillIdCompat autofillId = ViewCompat.getAutofillId(this.f6072b);
        Objects.requireNonNull(autofillId);
        return C0848b.m3724a(contentCaptureSession, autofillId.toAutofillId(), j);
    }

    @Nullable
    public ViewStructureCompat newVirtualViewStructure(@NonNull AutofillId autofillId, long j) {
        return ViewStructureCompat.toViewStructureCompat(C0848b.m3726c((ContentCaptureSession) this.f6071a, autofillId, j));
    }

    public void notifyViewTextChanged(@NonNull AutofillId autofillId, @Nullable CharSequence charSequence) {
        C0848b.m3728e((ContentCaptureSession) this.f6071a, autofillId, charSequence);
    }

    public void notifyViewsAppeared(@NonNull List<ViewStructure> list) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0849c.m3730a((ContentCaptureSession) this.f6071a, list);
            return;
        }
        ViewStructure m3725b = C0848b.m3725b((ContentCaptureSession) this.f6071a, this.f6072b);
        C0847a.m3723a(m3725b).putBoolean(f6069c, true);
        C0848b.m3727d((ContentCaptureSession) this.f6071a, m3725b);
        for (int i = 0; i < list.size(); i++) {
            C0848b.m3727d((ContentCaptureSession) this.f6071a, list.get(i));
        }
        ViewStructure m3725b2 = C0848b.m3725b((ContentCaptureSession) this.f6071a, this.f6072b);
        C0847a.m3723a(m3725b2).putBoolean(f6070d, true);
        C0848b.m3727d((ContentCaptureSession) this.f6071a, m3725b2);
    }

    public void notifyViewsDisappeared(@NonNull long[] jArr) {
        if (Build.VERSION.SDK_INT >= 34) {
            ContentCaptureSession contentCaptureSession = (ContentCaptureSession) this.f6071a;
            AutofillIdCompat autofillId = ViewCompat.getAutofillId(this.f6072b);
            Objects.requireNonNull(autofillId);
            C0848b.m3729f(contentCaptureSession, autofillId.toAutofillId(), jArr);
            return;
        }
        ViewStructure m3725b = C0848b.m3725b((ContentCaptureSession) this.f6071a, this.f6072b);
        C0847a.m3723a(m3725b).putBoolean(f6069c, true);
        C0848b.m3727d((ContentCaptureSession) this.f6071a, m3725b);
        ContentCaptureSession contentCaptureSession2 = (ContentCaptureSession) this.f6071a;
        AutofillIdCompat autofillId2 = ViewCompat.getAutofillId(this.f6072b);
        Objects.requireNonNull(autofillId2);
        C0848b.m3729f(contentCaptureSession2, autofillId2.toAutofillId(), jArr);
        ViewStructure m3725b2 = C0848b.m3725b((ContentCaptureSession) this.f6071a, this.f6072b);
        C0847a.m3723a(m3725b2).putBoolean(f6070d, true);
        C0848b.m3727d((ContentCaptureSession) this.f6071a, m3725b2);
    }

    @NonNull
    @RequiresApi(29)
    public ContentCaptureSession toContentCaptureSession() {
        return (ContentCaptureSession) this.f6071a;
    }
}
