package com.onyx.android.sdk.universal.editor.action.magnifier;

import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeRectInPageAction;
import com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B)\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "srcEditorBundle", "Landroid/graphics/RectF;", "i", "Landroid/graphics/RectF;", "viewRect", "", "j", Constants.STRING_SIG, "targetId", "targetEditorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLocateSrcViewRectInTargetPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocateSrcViewRectInTargetPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
/* loaded from: classes8.dex */
public final class LocateSrcViewRectInTargetPageAction extends RxBaseAppAction<LocateSrcViewRectInTargetPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle srcEditorBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final RectF viewRect;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final String targetId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9649a<T, R> implements Function {
        public C9649a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocateSrcViewRectInTargetPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateSrcViewRectInTargetPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9650b<T, R> implements Function {

        /* renamed from: e */
        public static final C9650b<T, R> f50109e = new C9650b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            return virtualPageBoxInfo == null ? new BoxInfo() : virtualPageBoxInfo;
        }
    }

    public /* synthetic */ LocateSrcViewRectInTargetPageAction(EditorBundle editorBundle, EditorBundle editorBundle2, RectF rectF, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, editorBundle2, rectF, (i & 8) != 0 ? "" : str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.graphics.RectF, T] */
    /* renamed from: m */
    public static final void m39427m(Ref.ObjectRef shapeRect, BoxInfo it2) {
        Intrinsics.checkNotNullParameter(shapeRect, "$shapeRect");
        Intrinsics.checkNotNullParameter(it2, "it");
        shapeRect.element = BoxInfoUtils.INSTANCE.mapToShapeRect((RectF) shapeRect.element, it2);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.graphics.RectF, T] */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LocateSrcViewRectInTargetPageAction> create() {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = this.viewRect;
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(m39428n(), new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction$create$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!RectKt.isNullOrEmpty(it2.getBox()));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.v1j
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LocateSrcViewRectInTargetPageAction.m39427m(Ref.ObjectRef.this, (BoxInfo) obj);
            }
        }), new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction$create$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!RectKt.isNullOrEmpty(it2.getBox()));
            }
        }, new Function1<BoxInfo, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction$create$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new LocateShapeRectInPageAction(LocateSrcViewRectInTargetPageAction.this.getEditorBundle(), it2.getId(), objectRef.element).build();
            }
        }).map(new C9649a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<BoxInfo> m39428n() {
        final List<BoxInfo> visibleBoxInfoList = EditorBundleKt.virtualDocViewInfo(this.srcEditorBundle).getVisibleBoxInfoList();
        Object obj = null;
        if (StringKt.isNotEmpty(this.targetId)) {
            Iterator<T> it2 = visibleBoxInfoList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (Intrinsics.areEqual(((BoxInfo) next).getId(), this.targetId)) {
                    obj = next;
                    break;
                }
            }
            obj = (BoxInfo) obj;
        }
        BoxInfo boxInfo = (BoxInfo) AnyKt.getOrElseNull(obj, new Function0<BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction$findBoxInfo$boxInfo$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final BoxInfo invoke() {
                Object firstOrNull;
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) visibleBoxInfoList);
                return (BoxInfo) firstOrNull;
            }
        });
        if (boxInfo != null) {
            Observable<BoxInfo> just = Observable.just(boxInfo);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundle editorBundle = this.srcEditorBundle;
        Observable map = EditorBundleKt.findVisibleBoxInfoByNotePageId(editorBundle, EditorBundleKt.virtualDocViewInfo(editorBundle).getCurrentBoxId(), true).map(C9650b.f50109e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocateSrcViewRectInTargetPageAction(@NotNull EditorBundle srcEditorBundle, @NotNull EditorBundle targetEditorBundle, @NotNull RectF viewRect, @NotNull String targetId) {
        super(targetEditorBundle);
        Intrinsics.checkNotNullParameter(srcEditorBundle, "srcEditorBundle");
        Intrinsics.checkNotNullParameter(targetEditorBundle, "targetEditorBundle");
        Intrinsics.checkNotNullParameter(viewRect, "viewRect");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        this.srcEditorBundle = srcEditorBundle;
        this.viewRect = viewRect;
        this.targetId = targetId;
    }
}
