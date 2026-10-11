package com.onyx.galaxy.note.editor.menu;

import android.content.Context;
import android.graphics.RectF;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyConvertType;
import com.onyx.android.sdk.universal.editor.events.note.CheckBeautifyPermissionEvent;
import com.onyx.android.sdk.universal.editor.events.note.CloseSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.HitTestLinkAudioEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionAddToStickerEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionBottomingEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCopyEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCreateShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCutEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionDeleteEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionEditUniversalShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionGotoSourceEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionLockEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionOCREvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionToppingEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowSelectMoveLayerPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowShapeSelectionStyleMenuEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import com.onyx.galaxy.note.editor.action.audio.RenameAudioLinkShapeNameAction;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.menu.SelectionMenuHandler;
import com.onyx.galaxy.note.editor.view.dialog.DialogConvertToText;
import com.onyx.galaxy.note.editor.view.dialog.DialogImageCropper;
import com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog;
import com.onyx.galaxy.note.editor.view.dialog.OcrTextConvertDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u000b\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0002J\b\u0010\r\u001a\u00020\u0006H\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0006H\u0002J\b\u0010\u0013\u001a\u00020\u0006H\u0002J\b\u0010\u0014\u001a\u00020\u0006H\u0002J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\b\u0010\u0019\u001a\u00020\u0006H\u0002J\b\u0010\u001a\u001a\u00020\u0006H\u0002J\b\u0010\u001b\u001a\u00020\u0006H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "Landroid/view/View;", "itemView", "", "onMenuClick", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "updateSelectedShapes", "d", C6998g.f39679a, "j", GoogleApiAvailabilityLight.f29016b, "view", "c", C4921e.f26537n, C6997f.f39671c, "e", "shape", "i", C4921e.f26528e, "p", "l", "b", C6999h.f39688c, "", "Ljava/util/List;", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "manager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class SelectionMenuHandler extends BaseSelectionMenuHandler {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectionMenuType.values().length];
            try {
                iArr[SelectionMenuType.CUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionMenuType.GOTO_SOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SelectionMenuType.COPY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SelectionMenuType.TOPPING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SelectionMenuType.BOTTOMING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SelectionMenuType.OCR_AI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SelectionMenuType.DELETE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[SelectionMenuType.LOCK.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[SelectionMenuType.UNLOCK.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[SelectionMenuType.CREATE_LINK.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[SelectionMenuType.MOVE_TO_LAYER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[SelectionMenuType.HWR_AI.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[SelectionMenuType.STYLE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[SelectionMenuType.COLOR.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[SelectionMenuType.CROP.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[SelectionMenuType.PLAY.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[SelectionMenuType.GOTO_LINK.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[SelectionMenuType.EDIT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[SelectionMenuType.RENAME.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[SelectionMenuType.ADD_TO_STICKER.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[SelectionMenuType.HWR_BEAUTIFY.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.menu.SelectionMenuHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12128a<T> implements Predicate {

        /* renamed from: e */
        public static final C12128a<T> f58943e = new C12128a<>();

        /* renamed from: a */
        public final boolean m46439a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m46439a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.menu.SelectionMenuHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12129b<T> implements Consumer {
        public C12129b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(SelectionMenuHandler.this.getEditorBundle$note_overseasRelease(), new ShowShapeSelectionStyleMenuEvent(SelectionMenuHandler.this.shapes));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.menu.SelectionMenuHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12130c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ PagedSelectionMenu f58945e;

        public C12130c(PagedSelectionMenu pagedSelectionMenu) {
            this.f58945e = pagedSelectionMenu;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ViewKt.setViewVisibleOrInvisible(this.f58945e, false);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionMenuHandler(@NotNull SelectionMenuHandlerManager manager) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
        this.shapes = new ArrayList();
    }

    /* renamed from: m */
    public static final void m46424m(SelectionMenuHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle$note_overseasRelease(), new QuitTransformEvent(false, 1, null));
    }

    /* renamed from: b */
    public final void m46425b() {
        if (!NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext())) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.sticker_check_network, false, 2, (Object) null);
            return;
        }
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new SelectionAddToStickerEvent());
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new QuitTransformEvent(true));
        Context context = requireMenuView().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RxBaseAction.execute$default(new CheckLoginStateAction(context), null, null, null, 7, null);
    }

    /* renamed from: c */
    public final void m46426c(View view) {
    }

    /* renamed from: d */
    public final void m46427d() {
        Shape firstTargetShape = ShapeTypes.INSTANCE.firstTargetShape(this.shapes);
        if (firstTargetShape == null) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new QuitTransformEvent(false));
        new DialogImageCropper(getEditorBundle$note_overseasRelease(), firstTargetShape).show(getFragmentManager$note_overseasRelease(), Reflection.getOrCreateKotlinClass(DialogImageCropper.class).getSimpleName());
    }

    /* renamed from: e */
    public final void m46428e() {
        Shape firstTargetShape = ShapeTypes.INSTANCE.firstTargetShape(this.shapes);
        if (firstTargetShape == null) {
            return;
        }
        int type = firstTargetShape.getType();
        if (type == 16) {
            m46437o(firstTargetShape);
        } else if (type == 33) {
            m46432i(firstTargetShape);
        } else {
            if (type != 40) {
                return;
            }
            m46438p(firstTargetShape);
        }
    }

    /* renamed from: f */
    public final void m46429f() {
        ShapeLinkBean shapeLinkBean;
        Shape firstTargetShape = ShapeTypes.INSTANCE.firstTargetShape(this.shapes);
        if (firstTargetShape == null || (shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(firstTargetShape.getText(), ShapeLinkBean.class)) == null) {
            return;
        }
        RxBaseAction.execute$default(new GotoLinkAction(getEditorBundle$note_overseasRelease(), shapeLinkBean, false, 4, null), null, null, null, 7, null);
    }

    /* renamed from: g */
    public final void m46430g() {
        new DialogConvertToText(getEditorBundle$note_overseasRelease()).show(getFragmentManager$note_overseasRelease(), Reflection.getOrCreateKotlinClass(DialogConvertToText.class).getSimpleName());
    }

    /* renamed from: h */
    public final void m46431h() {
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new CheckBeautifyPermissionEvent(InkBeautifyConvertType.SELECTION_CONVERT));
    }

    /* renamed from: i */
    public final void m46432i(Shape shape) {
        RectF globalVisibleRectF = ViewKt.globalVisibleRectF(requireMenuView());
        LinkShapeEditDialog linkShapeEditDialog = new LinkShapeEditDialog(requireMenuView(), getEditorBundle$note_overseasRelease(), shape, new TouchPoint(globalVisibleRectF.centerX(), globalVisibleRectF.centerY()));
        linkShapeEditDialog.setUpdatedCallback(new Function1<ShapeLinkBean, Unit>() { // from class: com.onyx.galaxy.note.editor.menu.SelectionMenuHandler$onLinkShapeEditMenuClick$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeLinkBean shapeLinkBean) {
                invoke2(shapeLinkBean);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ShapeLinkBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundleKt.postEvent(SelectionMenuHandler.this.getEditorBundle$note_overseasRelease(), new QuitTransformEvent(true));
            }
        });
        linkShapeEditDialog.updateLocation().show();
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), CloseSelectionMenuEvent.INSTANCE);
    }

    /* renamed from: j */
    public final void m46433j() {
        new OcrTextConvertDialog(getEditorBundle$note_overseasRelease()).show(getFragmentManager$note_overseasRelease(), Reflection.getOrCreateKotlinClass(DialogConvertToText.class).getSimpleName());
    }

    /* renamed from: k */
    public final void m46434k() {
        ShapeLinkBean shapeLinkBean;
        Shape firstTargetShape = ShapeTypes.INSTANCE.firstTargetShape(this.shapes);
        if (firstTargetShape == null || (shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(firstTargetShape.getText(), ShapeLinkBean.class)) == null) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new HitTestLinkAudioEvent(shapeLinkBean));
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new QuitTransformEvent(false, 1, null));
    }

    /* renamed from: l */
    public final void m46435l() {
        Shape firstTargetShape = ShapeTypes.INSTANCE.firstTargetShape(this.shapes);
        if (firstTargetShape == null) {
            return;
        }
        RenameAudioLinkShapeNameAction renameAudioLinkShapeNameAction = new RenameAudioLinkShapeNameAction(getEditorBundle$note_overseasRelease(), firstTargetShape);
        Context context = requireMenuView().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        renameAudioLinkShapeNameAction.setActivityContext(context).build().filter(C12128a.f58943e).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.mgm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SelectionMenuHandler.m46424m(SelectionMenuHandler.this);
            }
        }).subscribe();
    }

    /* renamed from: n */
    public final void m46436n() {
        if (CollectionKt.isNullOrEmpty(this.shapes)) {
            return;
        }
        PagedSelectionMenu requireMenuView = requireMenuView();
        int[] locationInWindow = ViewKt.getLocationInWindow(requireMenuView);
        CommonEditorActionsKt.hitTestVisibleBoxObservable(getEditorBundle$note_overseasRelease(), locationInWindow[0], locationInWindow[1]).doOnNext(new C12129b()).doOnNext(new C12130c(requireMenuView)).subscribe();
    }

    /* renamed from: o */
    public final void m46437o(Shape shape) {
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new SelectionEditTextShapeEvent());
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
        Object selectionCutEvent;
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[menu.ordinal()]) {
            case 1:
                selectionCutEvent = new SelectionCutEvent();
                break;
            case 2:
                selectionCutEvent = new SelectionGotoSourceEvent();
                break;
            case 3:
                selectionCutEvent = new SelectionCopyEvent();
                break;
            case 4:
                selectionCutEvent = new SelectionToppingEvent();
                break;
            case 5:
                selectionCutEvent = new SelectionBottomingEvent();
                break;
            case 6:
                selectionCutEvent = new SelectionOCREvent();
                break;
            case 7:
                selectionCutEvent = new SelectionDeleteEvent();
                break;
            case 8:
                selectionCutEvent = new SelectionLockEvent(true);
                break;
            case 9:
                selectionCutEvent = new SelectionLockEvent(false);
                break;
            case 10:
                selectionCutEvent = new SelectionCreateShapeLinkEvent();
                break;
            case 11:
                selectionCutEvent = new ShowSelectMoveLayerPopupEvent(this.shapes, itemView);
                break;
            default:
                selectionCutEvent = new Object();
                break;
        }
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), selectionCutEvent);
        int i = iArr[menu.ordinal()];
        if (i == 1) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.cut_success_and_long_press_paste, false, 2, (Object) null);
            return;
        }
        if (i == 3) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.copy_success_and_long_press_paste, false, 2, (Object) null);
            return;
        }
        if (i == 6) {
            m46433j();
            return;
        }
        switch (i) {
            case 12:
                m46430g();
                return;
            case 13:
                m46436n();
                return;
            case 14:
                m46426c(itemView);
                return;
            case 15:
                m46427d();
                return;
            case 16:
                m46434k();
                return;
            case 17:
                m46429f();
                return;
            case 18:
                m46428e();
                return;
            case 19:
                m46435l();
                return;
            case 20:
                m46425b();
                return;
            case 21:
                m46431h();
                return;
            default:
                return;
        }
    }

    /* renamed from: p */
    public final void m46438p(Shape shape) {
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new SelectionEditUniversalShapeEvent());
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void updateSelectedShapes(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes.clear();
        this.shapes.addAll(shapes);
    }
}
