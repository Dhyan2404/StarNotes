package com.onyx.android.sdk.textbox.editor;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.textbox.editor.WebEditor$requestVisualState$1;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(m61527d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"com/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1", "Landroid/webkit/WebView$VisualStateCallback;", "onComplete", "", "id", "", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class WebEditor$requestVisualState$1 extends WebView.VisualStateCallback {

    /* renamed from: a */
    public final /* synthetic */ WebEditor f46705a;

    /* renamed from: b */
    public final /* synthetic */ boolean f46706b;

    /* renamed from: c */
    public final /* synthetic */ PublishSubject<Boolean> f46707c;

    public WebEditor$requestVisualState$1(WebEditor webEditor, boolean z, PublishSubject<Boolean> publishSubject) {
        this.f46705a = webEditor;
        this.f46706b = z;
        this.f46707c = publishSubject;
    }

    /* renamed from: b */
    public static final void m36148b(PublishSubject subject, String str) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        RxjavaKt.done(subject, Boolean.TRUE);
    }

    @Override // android.webkit.WebView.VisualStateCallback
    public void onComplete(long id) {
        long j;
        j = this.f46705a.VISUAL_REQUEST_ID;
        if (id != j) {
            Debug.INSTANCE.m32044e(WebEditor$requestVisualState$1.class, "receive incorrect visual id: " + id, new Object[0]);
            return;
        }
        if (!this.f46705a.getTextBox().isPrepared()) {
            RxjavaKt.done(this.f46707c, Boolean.FALSE);
            return;
        }
        this.f46705a.richEditor.requestEditorLayout();
        WebEditor webEditor = this.f46705a;
        boolean z = this.f46706b;
        final PublishSubject<Boolean> publishSubject = this.f46707c;
        webEditor.enableEdit(true, z, new ValueCallback() { // from class: com.sunia.HTREnginev2.i6o
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                WebEditor$requestVisualState$1.m36148b(PublishSubject.this, (String) obj);
            }
        });
    }
}
