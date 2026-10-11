package com.onyx.galaxy.note.editor.action.audio;

import android.content.Context;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p039ui.NameEditDialog;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.app.AudioRenameCancelEvent;
import com.onyx.android.sdk.universal.editor.events.app.AudioRenameDoneEvent;
import com.onyx.android.sdk.universal.editor.events.app.AudioRenameStartEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.audio.CheckAudioDuplicatedNameRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "newName", "", "l", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "i", Constants.STRING_SIG, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShowRenameAudioNameDialogAction extends RxBaseAppAction<String> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AudioInfoBean audioInfoBean;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String newName;

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.ShowRenameAudioNameDialogAction$a */
    /* loaded from: classes9.dex */
    public static final class C11832a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CheckAudioDuplicatedNameRequest f58190e;

        public C11832a(CheckAudioDuplicatedNameRequest checkAudioDuplicatedNameRequest) {
            this.f58190e = checkAudioDuplicatedNameRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull CheckAudioDuplicatedNameRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f58190e.getDuplicatedName());
        }
    }

    public /* synthetic */ ShowRenameAudioNameDialogAction(EditorBundle editorBundle, AudioInfoBean audioInfoBean, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, audioInfoBean, (i & 4) != 0 ? null : str);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            String str = this.newName;
            Observable<String> just = Observable.just(str != null ? str : "");
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        NameEditDialog.Builder maxLength$default = NameEditDialog.Builder.setMaxLength$default(new NameEditDialog.Builder(activityContext).setTitle(C8045R.string.rename), ResManager.INSTANCE.getInteger(C8045R.integer.edit_name_max_length), false, 2, null);
        String title = this.audioInfoBean.getTitle();
        maxLength$default.setEditTextContent(title != null ? title : "").setCancelCallback(new Function1<NameEditDialog, Unit>() { // from class: com.onyx.galaxy.note.editor.action.audio.ShowRenameAudioNameDialogAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NameEditDialog nameEditDialog) {
                invoke2(nameEditDialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NameEditDialog it2) {
                AudioInfoBean audioInfoBean;
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = ShowRenameAudioNameDialogAction.this.getEditorBundle();
                audioInfoBean = ShowRenameAudioNameDialogAction.this.audioInfoBean;
                EditorBundleKt.postEvent(editorBundle, new AudioRenameCancelEvent(audioInfoBean));
            }
        }).setConfirmCallback(new Function2<NameEditDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.audio.ShowRenameAudioNameDialogAction$create$2

            /* renamed from: com.onyx.galaxy.note.editor.action.audio.ShowRenameAudioNameDialogAction$create$2$a */
            /* loaded from: classes9.dex */
            public static final class C11833a<T> implements Consumer {

                /* renamed from: e */
                public static final C11833a<T> f58191e = new C11833a<>();

                /* renamed from: a */
                public final void m45685a(boolean z) {
                    if (z) {
                        ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.audio_name_duplicated_tips, false, 2, (Object) null);
                    }
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(Object obj) {
                    m45685a(((Boolean) obj).booleanValue());
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.action.audio.ShowRenameAudioNameDialogAction$create$2$b */
            /* loaded from: classes9.dex */
            public static final class C11834b<T> implements Predicate {

                /* renamed from: e */
                public static final C11834b<T> f58192e = new C11834b<>();

                /* renamed from: a */
                public final boolean m45686a(boolean z) {
                    return !z;
                }

                @Override // io.reactivex.rxjava3.functions.Predicate
                public /* bridge */ /* synthetic */ boolean test(Object obj) {
                    return m45686a(((Boolean) obj).booleanValue());
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.action.audio.ShowRenameAudioNameDialogAction$create$2$c */
            /* loaded from: classes9.dex */
            public static final class C11835c<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ NameEditDialog f58193e;

                public C11835c(NameEditDialog nameEditDialog) {
                    this.f58193e = nameEditDialog;
                }

                /* renamed from: a */
                public final void m45687a(boolean z) {
                    this.f58193e.dismiss();
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(Object obj) {
                    m45687a(((Boolean) obj).booleanValue());
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.action.audio.ShowRenameAudioNameDialogAction$create$2$d */
            /* loaded from: classes9.dex */
            public static final class C11836d<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ PublishSubject<String> f58194e;

                /* renamed from: f */
                public final /* synthetic */ ShowRenameAudioNameDialogAction f58195f;

                public C11836d(PublishSubject<String> publishSubject, ShowRenameAudioNameDialogAction showRenameAudioNameDialogAction) {
                    this.f58194e = publishSubject;
                    this.f58195f = showRenameAudioNameDialogAction;
                }

                /* renamed from: a */
                public final void m45688a(boolean z) {
                    String str;
                    PublishSubject<String> publishSubject = this.f58194e;
                    str = this.f58195f.newName;
                    if (str == null) {
                        str = "";
                    }
                    RxjavaKt.done(publishSubject, str);
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(Object obj) {
                    m45688a(((Boolean) obj).booleanValue());
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(NameEditDialog nameEditDialog, String str2) {
                invoke2(nameEditDialog, str2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NameEditDialog dialog, @NotNull String editText) {
                AudioInfoBean audioInfoBean;
                String str2;
                AudioInfoBean audioInfoBean2;
                String str3;
                Observable m45683l;
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editText, "editText");
                EditorBundle editorBundle = ShowRenameAudioNameDialogAction.this.getEditorBundle();
                audioInfoBean = ShowRenameAudioNameDialogAction.this.audioInfoBean;
                EditorBundleKt.postEvent(editorBundle, new AudioRenameDoneEvent(audioInfoBean));
                if (editText.length() == 0) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.audio_name_empty_tips, false, 2, (Object) null);
                    return;
                }
                ShowRenameAudioNameDialogAction.this.newName = editText;
                str2 = ShowRenameAudioNameDialogAction.this.newName;
                audioInfoBean2 = ShowRenameAudioNameDialogAction.this.audioInfoBean;
                if (Intrinsics.areEqual(str2, audioInfoBean2.getTitle())) {
                    dialog.dismiss();
                    ShowRenameAudioNameDialogAction.this.dispose();
                    return;
                }
                ShowRenameAudioNameDialogAction showRenameAudioNameDialogAction = ShowRenameAudioNameDialogAction.this;
                str3 = showRenameAudioNameDialogAction.newName;
                Intrinsics.checkNotNull(str3);
                m45683l = showRenameAudioNameDialogAction.m45683l(str3);
                m45683l.doOnNext(C11833a.f58191e).filter(C11834b.f58192e).doOnNext(new C11835c(dialog)).doOnNext(new C11836d(create, ShowRenameAudioNameDialogAction.this)).subscribe();
            }
        }).create().show();
        EditorBundleKt.postEvent(getEditorBundle(), new AudioRenameStartEvent(this.audioInfoBean));
        return create;
    }

    /* renamed from: l */
    public final Observable<Boolean> m45683l(String newName) {
        CheckAudioDuplicatedNameRequest checkAudioDuplicatedNameRequest = new CheckAudioDuplicatedNameRequest(getEditorBundle(), this.audioInfoBean, newName);
        Observable<Boolean> map = RxBaseAppActionKt.submitRequestToNote(this, checkAudioDuplicatedNameRequest).map(new C11832a(checkAudioDuplicatedNameRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowRenameAudioNameDialogAction(@NotNull EditorBundle editorBundle, @NotNull AudioInfoBean audioInfoBean, @Nullable String str) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        this.audioInfoBean = audioInfoBean;
        this.newName = str;
    }
}
