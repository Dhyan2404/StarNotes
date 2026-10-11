package com.onyx.galaxy.note.editor.action.layer;

import android.content.Context;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.p039ui.NameEditDialog;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.layer.LoadNotePageLayersAction;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "newName", "", "l", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "layerInfo", "i", Constants.STRING_SIG, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RenameLayerNameAction extends RxBaseAppAction<String> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LayerInfo layerInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String newName;

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RenameLayerNameAction$a */
    /* loaded from: classes9.dex */
    public static final class C11971a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f58401e;

        public C11971a(String str) {
            this.f58401e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(NotePageInfoUtils.INSTANCE.isLayerNameDuplicated(it2, this.f58401e));
        }
    }

    public /* synthetic */ RenameLayerNameAction(EditorBundle editorBundle, LayerInfo layerInfo, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, layerInfo, (i & 4) != 0 ? null : str);
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
        NameEditDialog.Builder maxLength = new NameEditDialog.Builder(activityContext).setTitle(C8045R.string.rename).setMaxLength(ResManager.INSTANCE.getInteger(C10651R.integer.custom_template_max_length), true);
        String name = this.layerInfo.getName();
        maxLength.setEditTextContent(name != null ? name : "").setConfirmCallback(new Function2<NameEditDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.layer.RenameLayerNameAction$create$1

            /* renamed from: com.onyx.galaxy.note.editor.action.layer.RenameLayerNameAction$create$1$a */
            /* loaded from: classes9.dex */
            public static final class C11972a<T> implements Consumer {

                /* renamed from: e */
                public static final C11972a<T> f58402e = new C11972a<>();

                /* renamed from: a */
                public final void m45924a(boolean z) {
                    if (z) {
                        ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.layer_name_duplicated_tips, false, 2, (Object) null);
                    }
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(Object obj) {
                    m45924a(((Boolean) obj).booleanValue());
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.action.layer.RenameLayerNameAction$create$1$b */
            /* loaded from: classes9.dex */
            public static final class C11973b<T> implements Predicate {

                /* renamed from: e */
                public static final C11973b<T> f58403e = new C11973b<>();

                /* renamed from: a */
                public final boolean m45925a(boolean z) {
                    return !z;
                }

                @Override // io.reactivex.rxjava3.functions.Predicate
                public /* bridge */ /* synthetic */ boolean test(Object obj) {
                    return m45925a(((Boolean) obj).booleanValue());
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.action.layer.RenameLayerNameAction$create$1$c */
            /* loaded from: classes9.dex */
            public static final class C11974c<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ RenameLayerNameAction f58404e;

                public C11974c(RenameLayerNameAction renameLayerNameAction) {
                    this.f58404e = renameLayerNameAction;
                }

                /* renamed from: a */
                public final void m45926a(boolean z) {
                    LayerInfo layerInfo;
                    String str;
                    layerInfo = this.f58404e.layerInfo;
                    str = this.f58404e.newName;
                    layerInfo.setName(str);
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(Object obj) {
                    m45926a(((Boolean) obj).booleanValue());
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.action.layer.RenameLayerNameAction$create$1$d */
            /* loaded from: classes9.dex */
            public static final class C11975d<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ NameEditDialog f58405e;

                public C11975d(NameEditDialog nameEditDialog) {
                    this.f58405e = nameEditDialog;
                }

                /* renamed from: a */
                public final void m45927a(boolean z) {
                    this.f58405e.dismiss();
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(Object obj) {
                    m45927a(((Boolean) obj).booleanValue());
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.action.layer.RenameLayerNameAction$create$1$e */
            /* loaded from: classes9.dex */
            public static final class C11976e<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ PublishSubject<String> f58406e;

                /* renamed from: f */
                public final /* synthetic */ RenameLayerNameAction f58407f;

                public C11976e(PublishSubject<String> publishSubject, RenameLayerNameAction renameLayerNameAction) {
                    this.f58406e = publishSubject;
                    this.f58407f = renameLayerNameAction;
                }

                /* renamed from: a */
                public final void m45928a(boolean z) {
                    String str;
                    PublishSubject<String> publishSubject = this.f58406e;
                    str = this.f58407f.newName;
                    if (str == null) {
                        str = "";
                    }
                    RxjavaKt.done(publishSubject, str);
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(Object obj) {
                    m45928a(((Boolean) obj).booleanValue());
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
                String str2;
                LayerInfo layerInfo;
                String str3;
                Observable m45922l;
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editText, "editText");
                if (editText.length() == 0) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.layer_name_empty_tips, false, 2, (Object) null);
                    return;
                }
                RenameLayerNameAction.this.newName = editText;
                str2 = RenameLayerNameAction.this.newName;
                layerInfo = RenameLayerNameAction.this.layerInfo;
                if (Intrinsics.areEqual(str2, layerInfo.getName())) {
                    dialog.dismiss();
                    RenameLayerNameAction.this.dispose();
                    return;
                }
                RenameLayerNameAction renameLayerNameAction = RenameLayerNameAction.this;
                str3 = renameLayerNameAction.newName;
                Intrinsics.checkNotNull(str3);
                m45922l = renameLayerNameAction.m45922l(str3);
                m45922l.doOnNext(C11972a.f58402e).filter(C11973b.f58403e).doOnNext(new C11974c(RenameLayerNameAction.this)).doOnNext(new C11975d(dialog)).doOnNext(new C11976e(create, RenameLayerNameAction.this)).subscribe();
            }
        }).create().show();
        return create;
    }

    /* renamed from: l */
    public final Observable<Boolean> m45922l(String newName) {
        Observable map = new LoadNotePageLayersAction(getEditorBundle()).build().map(new C11971a(newName));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenameLayerNameAction(@NotNull EditorBundle editorBundle, @NotNull LayerInfo layerInfo, @Nullable String str) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        this.layerInfo = layerInfo;
        this.newName = str;
    }
}
