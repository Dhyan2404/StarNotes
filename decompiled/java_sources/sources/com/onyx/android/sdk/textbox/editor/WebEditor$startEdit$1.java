package com.onyx.android.sdk.textbox.editor;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.textbox.data.TextBoxInitArgs;
import com.onyx.android.sdk.textbox.editor.WebEditor;
import com.onyx.android.sdk.textbox.editor.WebEditor$startEdit$1;
import com.onyx.android.sdk.textbox.widget.RichEditor;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(m61527d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"com/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1", "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;", "onInitFinish", "", FirebaseAnalytics.Param.SUCCESS, "", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class WebEditor$startEdit$1 implements RichEditor.OnEditorInitListener {

    /* renamed from: a */
    public final /* synthetic */ WebEditor f46708a;

    /* renamed from: b */
    public final /* synthetic */ PublishSubject<Boolean> f46709b;

    /* renamed from: c */
    public final /* synthetic */ TextBoxInitArgs f46710c;

    public WebEditor$startEdit$1(WebEditor webEditor, PublishSubject<Boolean> publishSubject, TextBoxInitArgs textBoxInitArgs) {
        this.f46708a = webEditor;
        this.f46709b = publishSubject;
        this.f46710c = textBoxInitArgs;
    }

    /* renamed from: b */
    public static final void m36150b(WebEditor this$0, PublishSubject subject, TextBoxInitArgs args) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(args, "$args");
        if (!this$0.getTextBox().isPrepared()) {
            RxjavaKt.done(subject, Boolean.FALSE);
            return;
        }
        this$0.m36142i(subject, args.getEditForAll());
        if (args.getShowEditorDirectly()) {
            this$0.showEditorView();
        }
        String content = args.getContent();
        if (content == null || content.length() == 0) {
            this$0.richEditor.setTextColor(args.getTextColor(), false);
        }
    }

    @Override // com.onyx.android.sdk.textbox.widget.RichEditor.OnEditorInitListener
    public void onInitFinish(boolean success) {
        TextBoxView textBox = this.f46708a.getTextBox();
        final WebEditor webEditor = this.f46708a;
        final PublishSubject<Boolean> publishSubject = this.f46709b;
        final TextBoxInitArgs textBoxInitArgs = this.f46710c;
        textBox.post(new Runnable() { // from class: com.sunia.HTREnginev2.j6o
            @Override // java.lang.Runnable
            public final void run() {
                WebEditor$startEdit$1.m36150b(WebEditor.this, publishSubject, textBoxInitArgs);
            }
        });
    }
}
