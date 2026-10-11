package com.onyx.android.sdk.universal.editor.action.selection;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/LockShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "shapes", "", "i", Constants.HASIDCALL_INDEX_SIG, DevicePushAction.LOCK_DEVICE, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLockShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/LockShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1855#2,2:41\n*S KotlinDebug\n*F\n+ 1 LockShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/LockShapesAction\n*L\n36#1:41,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LockShapesAction extends RxBaseAppAction<LockShapesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean lock;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LockShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9897a<T, R> implements Function {
        public C9897a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LockShapesAction lockShapesAction = LockShapesAction.this;
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(lockShapesAction, lockShapesAction.shapes, false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LockShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9898b<T, R> implements Function {
        public C9898b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LockShapesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LockShapesAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LockShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        this.lock = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LockShapesAction> create() {
        Observable<LockShapesAction> map = DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.LockShapesAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                LockShapesAction.this.m39879l();
                it2.postShapeChangedEvent(ChangedShapeBean.INSTANCE.addShapesToChangedShapeBean(LockShapesAction.this.shapes));
            }
        }).flatMap(new C9897a()).map(new C9898b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m39879l() {
        Iterator<T> it2 = this.shapes.iterator();
        while (it2.hasNext()) {
            ShapePersistOptionsKt.lock((Shape) it2.next(), this.lock);
        }
    }
}
