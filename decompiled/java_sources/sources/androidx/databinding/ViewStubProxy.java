package androidx.databinding;

import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class ViewStubProxy {

    /* renamed from: a */
    public ViewStub f6732a;

    /* renamed from: b */
    public ViewDataBinding f6733b;

    /* renamed from: c */
    public View f6734c;

    /* renamed from: d */
    public ViewStub.OnInflateListener f6735d;

    /* renamed from: e */
    public ViewDataBinding f6736e;

    /* renamed from: f */
    public ViewStub.OnInflateListener f6737f;

    /* renamed from: androidx.databinding.ViewStubProxy$a */
    /* loaded from: classes3.dex */
    public class ViewStubOnInflateListenerC0977a implements ViewStub.OnInflateListener {
        public ViewStubOnInflateListenerC0977a() {
        }

        @Override // android.view.ViewStub.OnInflateListener
        public void onInflate(ViewStub viewStub, View view) {
            ViewStubProxy.this.f6734c = view;
            ViewStubProxy viewStubProxy = ViewStubProxy.this;
            viewStubProxy.f6733b = DataBindingUtil.m4045a(viewStubProxy.f6736e.mBindingComponent, view, viewStub.getLayoutResource());
            ViewStubProxy.this.f6732a = null;
            if (ViewStubProxy.this.f6735d != null) {
                ViewStubProxy.this.f6735d.onInflate(viewStub, view);
                ViewStubProxy.this.f6735d = null;
            }
            ViewStubProxy.this.f6736e.invalidateAll();
            ViewStubProxy.this.f6736e.m4087l();
        }
    }

    public ViewStubProxy(@NonNull ViewStub viewStub) {
        ViewStubOnInflateListenerC0977a viewStubOnInflateListenerC0977a = new ViewStubOnInflateListenerC0977a();
        this.f6737f = viewStubOnInflateListenerC0977a;
        this.f6732a = viewStub;
        viewStub.setOnInflateListener(viewStubOnInflateListenerC0977a);
    }

    @Nullable
    public ViewDataBinding getBinding() {
        return this.f6733b;
    }

    public View getRoot() {
        return this.f6734c;
    }

    @Nullable
    public ViewStub getViewStub() {
        return this.f6732a;
    }

    public boolean isInflated() {
        return this.f6734c != null;
    }

    public void setContainingBinding(@NonNull ViewDataBinding viewDataBinding) {
        this.f6736e = viewDataBinding;
    }

    public void setOnInflateListener(@Nullable ViewStub.OnInflateListener onInflateListener) {
        if (this.f6732a != null) {
            this.f6735d = onInflateListener;
        }
    }
}
