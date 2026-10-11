package com.google.android.material.motion;

import android.os.Build;
import android.view.View;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.BackEventCompat;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.google.android.material.motion.MaterialBackHandler;
import java.util.Objects;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class MaterialBackOrchestrator {

    /* renamed from: a */
    @Nullable
    public final InterfaceC5326d f31735a;

    /* renamed from: b */
    @NonNull
    public final MaterialBackHandler f31736b;

    /* renamed from: c */
    @NonNull
    public final View f31737c;

    @RequiresApi(33)
    /* renamed from: com.google.android.material.motion.MaterialBackOrchestrator$b */
    /* loaded from: classes6.dex */
    public static class C5324b implements InterfaceC5326d {

        /* renamed from: a */
        @Nullable
        public OnBackInvokedCallback f31738a;

        public C5324b() {
        }

        @Override // com.google.android.material.motion.MaterialBackOrchestrator.InterfaceC5326d
        @DoNotInline
        /* renamed from: a */
        public void mo24327a(@NonNull View view) {
            OnBackInvokedDispatcher findOnBackInvokedDispatcher;
            findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher();
            if (findOnBackInvokedDispatcher == null) {
                return;
            }
            findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f31738a);
            this.f31738a = null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0005, code lost:
        
            r3 = r3.findOnBackInvokedDispatcher();
         */
        @Override // com.google.android.material.motion.MaterialBackOrchestrator.InterfaceC5326d
        @androidx.annotation.DoNotInline
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo24328b(@androidx.annotation.NonNull com.google.android.material.motion.MaterialBackHandler r2, @androidx.annotation.NonNull android.view.View r3, boolean r4) {
            /*
                r1 = this;
                android.window.OnBackInvokedCallback r0 = r1.f31738a
                if (r0 == 0) goto L5
                return
            L5:
                android.window.OnBackInvokedDispatcher r3 = com.sunia.HTREnginev2.s9j.m57139a(r3)
                if (r3 != 0) goto Lc
                return
            Lc:
                android.window.OnBackInvokedCallback r2 = r1.mo24329c(r2)
                r1.f31738a = r2
                if (r4 == 0) goto L18
                r1 = 1000000(0xf4240, float:1.401298E-39)
                goto L19
            L18:
                r1 = 0
            L19:
                com.sunia.HTREnginev2.C13988kc.m55196a(r3, r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.motion.MaterialBackOrchestrator.C5324b.mo24328b(com.google.android.material.motion.MaterialBackHandler, android.view.View, boolean):void");
        }

        /* renamed from: c */
        public OnBackInvokedCallback mo24329c(@NonNull final MaterialBackHandler materialBackHandler) {
            Objects.requireNonNull(materialBackHandler);
            return new OnBackInvokedCallback() { // from class: com.sunia.HTREnginev2.t9j
                public final void onBackInvoked() {
                    MaterialBackHandler.this.handleBackInvoked();
                }
            };
        }

        /* renamed from: d */
        public boolean m24330d() {
            return this.f31738a != null;
        }
    }

    @RequiresApi(34)
    /* renamed from: com.google.android.material.motion.MaterialBackOrchestrator$c */
    /* loaded from: classes6.dex */
    public static class C5325c extends C5324b {

        /* renamed from: com.google.android.material.motion.MaterialBackOrchestrator$c$a */
        /* loaded from: classes6.dex */
        public class a implements OnBackAnimationCallback {

            /* renamed from: a */
            public final /* synthetic */ MaterialBackHandler f31739a;

            public a(MaterialBackHandler materialBackHandler) {
                this.f31739a = materialBackHandler;
            }

            public void onBackCancelled() {
                if (C5325c.this.m24330d()) {
                    this.f31739a.cancelBackProgress();
                }
            }

            public void onBackInvoked() {
                this.f31739a.handleBackInvoked();
            }

            public void onBackProgressed(@NonNull BackEvent backEvent) {
                if (C5325c.this.m24330d()) {
                    this.f31739a.updateBackProgress(new BackEventCompat(backEvent));
                }
            }

            public void onBackStarted(@NonNull BackEvent backEvent) {
                if (C5325c.this.m24330d()) {
                    this.f31739a.startBackProgress(new BackEventCompat(backEvent));
                }
            }
        }

        public C5325c() {
            super();
        }

        @Override // com.google.android.material.motion.MaterialBackOrchestrator.C5324b
        /* renamed from: c */
        public OnBackInvokedCallback mo24329c(@NonNull MaterialBackHandler materialBackHandler) {
            return new a(materialBackHandler);
        }
    }

    /* renamed from: com.google.android.material.motion.MaterialBackOrchestrator$d */
    /* loaded from: classes6.dex */
    public interface InterfaceC5326d {
        /* renamed from: a */
        void mo24327a(@NonNull View view);

        /* renamed from: b */
        void mo24328b(@NonNull MaterialBackHandler materialBackHandler, @NonNull View view, boolean z);
    }

    public <T extends View & MaterialBackHandler> MaterialBackOrchestrator(@NonNull T t) {
        this(t, t);
    }

    @Nullable
    /* renamed from: a */
    public static InterfaceC5326d m24325a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            return new C5325c();
        }
        if (i >= 33) {
            return new C5324b();
        }
        return null;
    }

    /* renamed from: b */
    public final void m24326b(boolean z) {
        InterfaceC5326d interfaceC5326d = this.f31735a;
        if (interfaceC5326d != null) {
            interfaceC5326d.mo24328b(this.f31736b, this.f31737c, z);
        }
    }

    public boolean shouldListenForBackCallbacks() {
        return this.f31735a != null;
    }

    public void startListeningForBackCallbacks() {
        m24326b(false);
    }

    public void startListeningForBackCallbacksWithPriorityOverlay() {
        m24326b(true);
    }

    public void stopListeningForBackCallbacks() {
        InterfaceC5326d interfaceC5326d = this.f31735a;
        if (interfaceC5326d != null) {
            interfaceC5326d.mo24327a(this.f31737c);
        }
    }

    public MaterialBackOrchestrator(@NonNull MaterialBackHandler materialBackHandler, @NonNull View view) {
        this.f31735a = m24325a();
        this.f31736b = materialBackHandler;
        this.f31737c = view;
    }
}
