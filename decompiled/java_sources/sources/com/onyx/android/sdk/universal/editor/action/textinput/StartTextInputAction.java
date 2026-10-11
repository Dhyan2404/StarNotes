package com.onyx.android.sdk.universal.editor.action.textinput;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.ShowInitInputTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextShapeHitTestEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00000\u0012H\u0014J\b\u0010\u0015\u001a\u00020\u0014H\u0002R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0017R\u0018\u0010!\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "show", "setShowInitInputText", "", "textToInsert", "setTextToInsert", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "insertPoint", "setInsertPoint", "userProvider", "setSwitchToUserProvider", "editForAll", "setEditForAll", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "setTextShape", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "showInitInputText", "i", Constants.STRING_SIG, "j", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C4921e.f26537n, "switchToUserProvider", "m", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartTextInputAction extends RxBaseAppAction<StartTextInputAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public boolean showInitInputText;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String textToInsert;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public TouchPoint insertPoint;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean switchToUserProvider;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean editForAll;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Shape textShape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.StartTextInputAction$a */
    /* loaded from: classes8.dex */
    public static final class C10230a<T> implements Consumer {
        public C10230a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartTextInputAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartTextInputAction.this.m40452l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartTextInputAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.textToInsert = "";
        this.insertPoint = TextRenderUtil.INSTANCE.getDefaultInputTextPoint();
        this.editForAll = true;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartTextInputAction> create() {
        Observable<StartTextInputAction> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10230a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m40452l() {
        if (this.switchToUserProvider) {
            getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager().activeUserProvider(ShapeHandlerManager.TEXT_INPUT_PROVIDER, true);
        } else {
            getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager().activeShapeProvider(ShapeHandlerManager.TEXT_INPUT_PROVIDER);
        }
        if (this.showInitInputText) {
            Shape shape = this.textShape;
            if (!(shape != null ? ShapeTypes.INSTANCE.isTextShape(shape) : false)) {
                EditorBundleKt.postEvent(getEditorBundle(), new ShowInitInputTextEvent(this.textToInsert, this.insertPoint, true, this.editForAll));
                return;
            }
            Shape shape2 = this.textShape;
            if (shape2 == null) {
                return;
            }
            EditorBundleKt.postEvent(getEditorBundle(), new TextShapeHitTestEvent(shape2, this.editForAll));
        }
    }

    @NotNull
    public final StartTextInputAction setEditForAll(boolean editForAll) {
        this.editForAll = editForAll;
        return this;
    }

    @NotNull
    public final StartTextInputAction setInsertPoint(@NotNull TouchPoint insertPoint) {
        Intrinsics.checkNotNullParameter(insertPoint, "insertPoint");
        this.insertPoint = insertPoint;
        return this;
    }

    @NotNull
    public final StartTextInputAction setShowInitInputText(boolean show) {
        this.showInitInputText = show;
        return this;
    }

    @NotNull
    public final StartTextInputAction setSwitchToUserProvider(boolean userProvider) {
        this.switchToUserProvider = userProvider;
        return this;
    }

    @NotNull
    public final StartTextInputAction setTextShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.textShape = shape;
        return this;
    }

    @NotNull
    public final StartTextInputAction setTextToInsert(@NotNull String textToInsert) {
        Intrinsics.checkNotNullParameter(textToInsert, "textToInsert");
        this.textToInsert = textToInsert;
        return this;
    }
}
