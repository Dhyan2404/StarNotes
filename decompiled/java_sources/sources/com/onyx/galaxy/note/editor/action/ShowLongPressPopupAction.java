package com.onyx.galaxy.note.editor.action;

import android.content.Context;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxAction;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.view.popup.LongPressPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B/\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b%\u0010&J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;", "action", "", "l", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", "maxWidth", "m", "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "", C6999h.f39688c, Constants.TYPES_INDEX_SIG, "editorViewOffset", "i", "I", "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;", "j", "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;", "getLongPressPopup", "()Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;", "setLongPressPopup", "(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V", "longPressPopup", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/base/data/TouchPoint;[II)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShowLongPressPopupAction extends RxBaseAction<ShowLongPressPopupAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager editorBundleManager;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final int[] editorViewOffset;

    /* renamed from: i, reason: from kotlin metadata */
    public final int maxWidth;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public LongPressPopup longPressPopup;

    @SourceDebugExtension({"SMAP\nShowLongPressPopupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowLongPressPopupAction.kt\ncom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$create$2\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,58:1\n41#2,5:59\n*S KotlinDebug\n*F\n+ 1 ShowLongPressPopupAction.kt\ncom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$create$2\n*L\n31#1:59,5\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.action.ShowLongPressPopupAction$a */
    /* loaded from: classes9.dex */
    public static final class C11800a<T> implements Predicate {

        /* renamed from: e */
        public static final C11800a<T> f58143e = new C11800a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getBoxInfo() != null;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.ShowLongPressPopupAction$b */
    /* loaded from: classes9.dex */
    public static final class C11801b<T> implements Consumer {
        public C11801b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShowLongPressPopupAction.this.m45635l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.ShowLongPressPopupAction$c */
    /* loaded from: classes9.dex */
    public static final class C11802c<T, R> implements Function {
        public C11802c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShowLongPressPopupAction apply(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowLongPressPopupAction.this;
        }
    }

    public ShowLongPressPopupAction(@NotNull Context activityContext, @NotNull EditorBundleManager editorBundleManager, @NotNull TouchPoint touchPoint, @NotNull int[] editorViewOffset, int i) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(editorBundleManager, "editorBundleManager");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(editorViewOffset, "editorViewOffset");
        this.activityContext = activityContext;
        this.editorBundleManager = editorBundleManager;
        this.touchPoint = touchPoint;
        this.editorViewOffset = editorViewOffset;
        this.maxWidth = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShowLongPressPopupAction> create() {
        HitTestVisibleBoxAction hitTestVisibleBoxAction = new HitTestVisibleBoxAction(this.editorBundleManager.focusEditorBundle());
        hitTestVisibleBoxAction.setX(this.touchPoint.getX());
        hitTestVisibleBoxAction.setY(this.touchPoint.getY());
        Observable map = hitTestVisibleBoxAction.build().filter(C11800a.f58143e).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11801b()).map(new C11802c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final LongPressPopup getLongPressPopup() {
        return this.longPressPopup;
    }

    /* renamed from: l */
    public final void m45635l(HitTestVisibleBoxAction action) {
        BoxInfo boxInfo = action.getBoxInfo();
        if (boxInfo != null && boxInfo.getVisibleRect().contains(this.touchPoint.getX(), this.touchPoint.getY())) {
            m45636m(this.touchPoint, this.maxWidth);
        }
    }

    /* renamed from: m */
    public final void m45636m(TouchPoint touchPoint, int maxWidth) {
        boolean supportFingerEdit = TouchModeFeatureManager.INSTANCE.getCurrentTouchModeFeature().supportFingerEdit();
        if (!supportFingerEdit || GlobalBundle.INSTANCE.hasPasteData()) {
            LongPressPopup longPressPopup = new LongPressPopup(this.activityContext, this.editorBundleManager.focusEditorBundle(), touchPoint, maxWidth, supportFingerEdit ? SelectionMenuType.INSTANCE.getPasteMenus() : CollectionsKt__CollectionsKt.emptyList());
            this.longPressPopup = longPressPopup;
            longPressPopup.show(this.editorBundleManager.focusEditorView());
        }
    }

    public final void setLongPressPopup(@Nullable LongPressPopup longPressPopup) {
        this.longPressPopup = longPressPopup;
    }
}
