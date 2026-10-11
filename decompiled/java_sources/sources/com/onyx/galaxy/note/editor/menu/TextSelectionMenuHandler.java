package com.onyx.galaxy.note.editor.menu;

import android.app.Activity;
import android.content.pm.ResolveInfo;
import android.view.View;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.ProcessTextExtKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import com.onyx.android.sdk.universal.editor.action.annotation.SaveAnnotationAction;
import com.onyx.android.sdk.universal.editor.action.selection.StartAnnotationSelectionAction;
import com.onyx.android.sdk.universal.editor.events.note.HideTextSelectionMenuIfQuitEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTextSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveTextExcerptEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartAnnotationSelectionArgs;
import com.onyx.android.sdk.universal.editor.events.note.TextSelectionInfo;
import com.onyx.android.sdk.universal.editor.extension.ContentSelectionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.menu.TextSelectionMenuHandler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\"\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0002J.\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00150\u00142\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0006H\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u00020\u0006H\u0002J\b\u0010\u001e\u001a\u00020\u0006H\u0002J\b\u0010\u001f\u001a\u00020\u0006H\u0002R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010 ¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "Landroid/view/View;", "itemView", "", "onMenuClick", "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;", PrivilegedApp.f6532i, "updateTextSelection", "", "style", "color", "changeAnnotation", "type", "d", "", "postEvent", "j", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "l", C6998g.f39679a, C6999h.f39688c, "c", "", "b", C6997f.f39671c, "e", "i", "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "manager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TextSelectionMenuHandler extends BaseSelectionMenuHandler {

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public TextSelectionInfo info;

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
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.menu.TextSelectionMenuHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12131a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Activity f58955e;

        /* renamed from: f */
        public final /* synthetic */ String f58956f;

        public C12131a(Activity activity, String str) {
            this.f58955e = activity;
            this.f58956f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends ResolveInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ProcessTextExtKt.sendTranslateProcessTextIntent(this.f58955e, this.f58956f, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.menu.TextSelectionMenuHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12132b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f58958f;

        public C12132b(boolean z) {
            this.f58958f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveAnnotationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(TextSelectionMenuHandler.this.getEditorBundle$note_overseasRelease(), new HideTextSelectionMenuIfQuitEvent(this.f58958f));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.menu.TextSelectionMenuHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12133c<T, R> implements Function {

        /* renamed from: e */
        public static final C12133c<T, R> f58959e = new C12133c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull SaveAnnotationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getShapeList();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSelectionMenuHandler(@NotNull SelectionMenuHandlerManager manager) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
    }

    /* renamed from: k */
    public static /* synthetic */ void m46449k(TextSelectionMenuHandler textSelectionMenuHandler, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = true;
        }
        textSelectionMenuHandler.m46460j(i, i2, z);
    }

    /* renamed from: m */
    public static /* synthetic */ Observable m46450m(TextSelectionMenuHandler textSelectionMenuHandler, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = true;
        }
        return textSelectionMenuHandler.m46461l(i, i2, z);
    }

    /* renamed from: n */
    public static final void m46451n(TextSelectionMenuHandler this$0, SaveAnnotationAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m46459i();
    }

    /* renamed from: b */
    public final String m46452b() {
        ReaderSelection selection;
        TextSelectionInfo textSelectionInfo = this.info;
        String text = (textSelectionInfo == null || (selection = textSelectionInfo.getSelection()) == null) ? null : selection.text();
        return text == null ? "" : text;
    }

    /* renamed from: c */
    public final void m46453c() {
        String replaceLinebreakFromParagraph = StringKt.replaceLinebreakFromParagraph(m46452b());
        if (replaceLinebreakFromParagraph.length() == 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_failed, false, 2, (Object) null);
            return;
        }
        ContextKt.copyToClipboard(replaceLinebreakFromParagraph);
        m46459i();
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_success, false, 2, (Object) null);
    }

    public final void changeAnnotation(final int style, final int color) {
        RxjavaKt.flatMapIf(m46461l(style, color, false), new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.galaxy.note.editor.menu.TextSelectionMenuHandler$changeAnnotation$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.menu.TextSelectionMenuHandler$changeAnnotation$2

            /* renamed from: com.onyx.galaxy.note.editor.menu.TextSelectionMenuHandler$changeAnnotation$2$a */
            /* loaded from: classes9.dex */
            public static final class C12134a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ TextSelectionMenuHandler f58960e;

                /* renamed from: f */
                public final /* synthetic */ Shape f58961f;

                /* renamed from: g */
                public final /* synthetic */ int f58962g;

                /* renamed from: h */
                public final /* synthetic */ int f58963h;

                public C12134a(TextSelectionMenuHandler textSelectionMenuHandler, Shape shape, int i, int i2) {
                    this.f58960e = textSelectionMenuHandler;
                    this.f58961f = shape;
                    this.f58962g = i;
                    this.f58963h = i2;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Object> apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
                    if (virtualPageBoxInfo == null) {
                        return Observable.just(this.f58960e);
                    }
                    StartAnnotationSelectionArgs startAnnotationSelectionArgs = new StartAnnotationSelectionArgs(virtualPageBoxInfo, ShapeTypes.INSTANCE.getCenterTouchPoint(this.f58961f, virtualPageBoxInfo), this.f58961f);
                    startAnnotationSelectionArgs.setStyle(Integer.valueOf(this.f58962g));
                    startAnnotationSelectionArgs.setColor(Integer.valueOf(this.f58963h));
                    return new StartAnnotationSelectionAction(this.f58960e.getEditorBundle$note_overseasRelease(), startAnnotationSelectionArgs).build();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> shapeList) {
                Object first;
                Intrinsics.checkNotNullParameter(shapeList, "shapeList");
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) shapeList);
                Shape shape = (Shape) first;
                Observable<? extends Object> flatMap = EditorBundleKt.findVisibleBoxInfoByNotePageId$default(TextSelectionMenuHandler.this.getEditorBundle$note_overseasRelease(), shape.getPageUniqueId(), false, 2, null).flatMap(new C12134a(TextSelectionMenuHandler.this, shape, style, color));
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                return flatMap;
            }
        }).subscribe();
    }

    /* renamed from: d */
    public final void m46454d(SelectionMenuType type) {
        m46449k(this, 0, SelectionMenuType.INSTANCE.getAnnotationColorOption(0).get(), false, 4, null);
    }

    /* renamed from: e */
    public final void m46455e() {
        ReaderSelection selection;
        BoxInfo virtualPageBoxInfo;
        TextSelectionInfo textSelectionInfo = this.info;
        if (textSelectionInfo == null || (selection = textSelectionInfo.getSelection()) == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.save_text_excerpt_fail, false, 2, (Object) null);
            return;
        }
        TextSelectionInfo textSelectionInfo2 = this.info;
        if (textSelectionInfo2 == null || (virtualPageBoxInfo = textSelectionInfo2.getVirtualPageBoxInfo()) == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.save_text_excerpt_fail, false, 2, (Object) null);
        } else {
            EditorBundleKt.appEventBus(getEditorBundle$note_overseasRelease()).post(new SaveTextExcerptEvent(ContentSelectionKt.toSaveTextExcerptArgs(selection, virtualPageBoxInfo)));
            m46459i();
        }
    }

    /* renamed from: f */
    public final void m46456f() {
        String m46452b = m46452b();
        Activity activity = EditorBundleKt.activity(getEditorBundle$note_overseasRelease());
        if ((m46452b.length() == 0) || activity == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.translate_fail, false, 2, (Object) null);
        } else {
            ContextKt.querySupportedProcessTextActivities(activity).doOnNext(new C12131a(activity, m46452b)).subscribe();
        }
    }

    /* renamed from: g */
    public final void m46457g(SelectionMenuType type) {
        m46449k(this, 1, SelectionMenuType.INSTANCE.getAnnotationColorOption(1).get(), false, 4, null);
    }

    /* renamed from: h */
    public final void m46458h(SelectionMenuType type) {
        m46449k(this, 3, SelectionMenuType.INSTANCE.getAnnotationColorOption(3).get(), false, 4, null);
    }

    /* renamed from: i */
    public final void m46459i() {
        EditorBundleKt.appEventBus(getEditorBundle$note_overseasRelease()).post(new QuitTextSelectionEvent());
    }

    /* renamed from: j */
    public final void m46460j(int style, int color, boolean postEvent) {
        RxjavaKt.subscribeWithDefault$default(m46461l(style, color, postEvent), null, null, null, 7, null);
    }

    /* renamed from: l */
    public final Observable<List<Shape>> m46461l(int style, int color, final boolean postEvent) {
        List emptyList;
        TextSelectionInfo textSelectionInfo = this.info;
        if (textSelectionInfo == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.save_annotation_fail, false, 2, (Object) null);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<Shape>> just = Observable.just(emptyList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        AnnotationInfoBean annotationInfoBean = new AnnotationInfoBean();
        annotationInfoBean.setColor(color);
        annotationInfoBean.setStyle(style);
        Observable<SaveAnnotationAction> doOnNext = new SaveAnnotationAction(getEditorBundle$note_overseasRelease(), textSelectionInfo, annotationInfoBean).build().doOnNext(new C12132b(postEvent));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<List<Shape>> map = RxjavaKt.doOnNextIf(doOnNext, new Function1<SaveAnnotationAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.menu.TextSelectionMenuHandler$saveAnnotationObservable$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SaveAnnotationAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(postEvent);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.ffn
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                TextSelectionMenuHandler.m46451n(TextSelectionMenuHandler.this, (SaveAnnotationAction) obj);
            }
        }).map(C12133c.f58959e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        switch (WhenMappings.$EnumSwitchMapping$0[menu.ordinal()]) {
            case 1:
                m46454d(menu);
                return;
            case 2:
                m46457g(menu);
                return;
            case 3:
                m46458h(menu);
                return;
            case 4:
                m46453c();
                return;
            case 5:
                m46456f();
                return;
            case 6:
                m46455e();
                return;
            default:
                return;
        }
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void updateTextSelection(@NotNull TextSelectionInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.info = info;
    }
}
