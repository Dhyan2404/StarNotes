package com.onyx.galaxy.note.editor.menu;

import android.app.Activity;
import android.content.pm.ResolveInfo;
import android.view.View;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.ProcessTextExtKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.annotation.UpdateAnnotationAction;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.events.note.AnnotationSelectionInfo;
import com.onyx.android.sdk.universal.editor.events.note.QuitAnnotationSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveTextExcerptEvent;
import com.onyx.android.sdk.universal.editor.extension.ContentSelectionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.menu.AnnotationSelectionMenuHandler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\"\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0006H\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u0019\u001a\u00020\u0006H\u0002J\b\u0010\u001a\u001a\u00020\u0006H\u0002J\b\u0010\u001b\u001a\u00020\u0006H\u0002J\b\u0010\u001c\u001a\u00020\u0006H\u0002R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "Landroid/view/View;", "itemView", "", "onMenuClick", "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", PrivilegedApp.f6532i, "updateAnnotationSelection", "", "style", "color", "changeAnnotation", "type", "e", "", "postEvent", C4921e.f26537n, C6999h.f39688c, "i", "c", "", "b", C6998g.f39679a, C6997f.f39671c, "d", "j", "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "manager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AnnotationSelectionMenuHandler extends BaseSelectionMenuHandler {

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public AnnotationSelectionInfo info;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectionMenuType.values().length];
            try {
                iArr[SelectionMenuType.HIGHLIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionMenuType.UNDERLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SelectionMenuType.WAVY_LINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SelectionMenuType.COPY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SelectionMenuType.TRANSLATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SelectionMenuType.SAVE_TEXT_EXCERPT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SelectionMenuType.DELETE_ANNOTATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.menu.AnnotationSelectionMenuHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12124a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Activity f58892e;

        /* renamed from: f */
        public final /* synthetic */ String f58893f;

        public C12124a(Activity activity, String str) {
            this.f58892e = activity;
            this.f58893f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends ResolveInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ProcessTextExtKt.sendTranslateProcessTextIntent(this.f58892e, this.f58893f, it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnnotationSelectionMenuHandler(@NotNull SelectionMenuHandlerManager manager) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
    }

    /* renamed from: l */
    public static /* synthetic */ void m46342l(AnnotationSelectionMenuHandler annotationSelectionMenuHandler, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = true;
        }
        annotationSelectionMenuHandler.m46353k(i, i2, z);
    }

    /* renamed from: m */
    public static final void m46343m(AnnotationSelectionMenuHandler this$0, UpdateAnnotationAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m46352j();
    }

    /* renamed from: b */
    public final String m46344b() {
        Shape annotation;
        AnnotationInfoBean annotationInfoBean;
        AnnotationSelectionInfo annotationSelectionInfo = this.info;
        String quote = (annotationSelectionInfo == null || (annotation = annotationSelectionInfo.getAnnotation()) == null || (annotationInfoBean = ShapePersistOptionsKt.getAnnotationInfoBean(annotation)) == null) ? null : annotationInfoBean.getQuote();
        return quote == null ? "" : quote;
    }

    /* renamed from: c */
    public final void m46345c() {
        String replaceLinebreakFromParagraph = StringKt.replaceLinebreakFromParagraph(m46344b());
        if (replaceLinebreakFromParagraph.length() == 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_failed, false, 2, (Object) null);
            return;
        }
        ContextKt.copyToClipboard(replaceLinebreakFromParagraph);
        m46352j();
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_success, false, 2, (Object) null);
    }

    public final void changeAnnotation(int style, int color) {
        m46353k(style, color, false);
    }

    /* renamed from: d */
    public final void m46346d() {
        List listOf;
        AnnotationSelectionInfo annotationSelectionInfo = this.info;
        if (annotationSelectionInfo == null) {
            return;
        }
        EditorBundle editorBundle$note_overseasRelease = getEditorBundle$note_overseasRelease();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(annotationSelectionInfo.getAnnotation());
        RxBaseAction.execute$default(new DeleteShapesAction(editorBundle$note_overseasRelease, listOf, true, false, 8, null), null, null, null, 7, null);
        m46352j();
    }

    /* renamed from: e */
    public final void m46347e(SelectionMenuType type) {
        m46342l(this, 0, SelectionMenuType.INSTANCE.getAnnotationColorOption(0).get(), false, 4, null);
    }

    /* renamed from: f */
    public final void m46348f() {
        AnnotationSelectionInfo annotationSelectionInfo = this.info;
        if (annotationSelectionInfo == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.save_text_excerpt_fail, false, 2, (Object) null);
            return;
        }
        AnnotationInfoBean annotationInfoBean = ShapePersistOptionsKt.getAnnotationInfoBean(annotationSelectionInfo.getAnnotation());
        if (annotationInfoBean == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.save_text_excerpt_fail, false, 2, (Object) null);
            return;
        }
        EditorBundleKt.appEventBus(getEditorBundle$note_overseasRelease()).post(new SaveTextExcerptEvent(ContentSelectionKt.toSaveTextExcerptArgs(annotationInfoBean, annotationSelectionInfo.getVirtualPageBoxInfo())));
        m46352j();
    }

    /* renamed from: g */
    public final void m46349g() {
        String m46344b = m46344b();
        Activity activity = EditorBundleKt.activity(getEditorBundle$note_overseasRelease());
        if ((m46344b.length() == 0) || activity == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.translate_fail, false, 2, (Object) null);
        } else {
            ContextKt.querySupportedProcessTextActivities(activity).doOnNext(new C12124a(activity, m46344b)).subscribe();
        }
    }

    /* renamed from: h */
    public final void m46350h(SelectionMenuType type) {
        m46342l(this, 1, SelectionMenuType.INSTANCE.getAnnotationColorOption(1).get(), false, 4, null);
    }

    /* renamed from: i */
    public final void m46351i(SelectionMenuType type) {
        m46342l(this, 3, SelectionMenuType.INSTANCE.getAnnotationColorOption(3).get(), false, 4, null);
    }

    /* renamed from: j */
    public final void m46352j() {
        EditorBundleKt.appEventBus(getEditorBundle$note_overseasRelease()).post(new QuitAnnotationSelectionEvent());
    }

    /* renamed from: k */
    public final void m46353k(int style, int color, final boolean postEvent) {
        AnnotationSelectionInfo annotationSelectionInfo = this.info;
        if (annotationSelectionInfo == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.save_annotation_fail, false, 2, (Object) null);
            return;
        }
        AnnotationInfoBean annotationInfoBean = ShapePersistOptionsKt.getAnnotationInfoBean(annotationSelectionInfo.getAnnotation());
        if (annotationInfoBean == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.save_annotation_fail, false, 2, (Object) null);
            return;
        }
        annotationInfoBean.setStyle(style);
        annotationInfoBean.setColor(color);
        RxjavaKt.subscribeWithDefault$default(RxjavaKt.doOnNextIf(new UpdateAnnotationAction(getEditorBundle$note_overseasRelease(), annotationSelectionInfo, annotationInfoBean).build(), new Function1<UpdateAnnotationAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.menu.AnnotationSelectionMenuHandler$saveAnnotation$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull UpdateAnnotationAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(postEvent);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.pb
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AnnotationSelectionMenuHandler.m46343m(AnnotationSelectionMenuHandler.this, (UpdateAnnotationAction) obj);
            }
        }), null, null, null, 7, null);
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        switch (WhenMappings.$EnumSwitchMapping$0[menu.ordinal()]) {
            case 1:
                m46347e(menu);
                return;
            case 2:
                m46350h(menu);
                return;
            case 3:
                m46351i(menu);
                return;
            case 4:
                m46345c();
                return;
            case 5:
                m46349g();
                return;
            case 6:
                m46348f();
                return;
            case 7:
                m46346d();
                return;
            default:
                return;
        }
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void updateAnnotationSelection(@NotNull AnnotationSelectionInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.info = info;
    }
}
