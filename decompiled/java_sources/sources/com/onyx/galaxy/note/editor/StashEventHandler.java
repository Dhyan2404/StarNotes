package com.onyx.galaxy.note.editor;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.event.PageUnloadedEvent;
import com.onyx.android.sdk.note.common.event.StashEditTextShapeEvent;
import com.onyx.android.sdk.note.common.event.StashShapeEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction;
import com.onyx.android.sdk.universal.editor.action.flush.StashEditTextShapeAction;
import com.onyx.android.sdk.universal.editor.action.flush.StashShapeAction;
import com.onyx.android.sdk.universal.editor.action.flush.TrimStashDataFileAction;
import com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.editor.StashEventHandler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bH\u0007J\"\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0002R&\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\f0\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/StashEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/note/common/event/StashShapeEvent;", NotificationCompat.CATEGORY_EVENT, "", "onStashShapeEvent", "Lcom/onyx/android/sdk/note/common/event/PageUnloadedEvent;", "onPageUnloadedEvent", "Lcom/onyx/android/sdk/note/common/event/StashEditTextShapeEvent;", "onStashEditTextShapeEvent", "", CouchFieldKey.KEY_UNIQUE_ID, "", "stashZipPaths", "Lio/reactivex/rxjava3/core/Observable;", "c", "", C6997f.f39671c, "Ljava/util/Map;", "stashDataPathMap", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StashEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<String, List<String>> stashDataPathMap;

    /* renamed from: com.onyx.galaxy.note.editor.StashEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C11773a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StashEditTextShapeEvent f58094f;

        public C11773a(StashEditTextShapeEvent stashEditTextShapeEvent) {
            this.f58094f = stashEditTextShapeEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StashEventHandler.this.m45577c(this.f58094f.getTextShape().getShapeUniqueId(), it2.getStashZipPaths());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StashEventHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.stashDataPathMap = new LinkedHashMap();
    }

    /* renamed from: b */
    public static final void m45576b(StashEventHandler this$0, List pageIdList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(pageIdList, "$pageIdList");
        this$0.getEditorBundle().getUiBundle().getNoteInfo().clearPageStashCount(pageIdList);
    }

    /* renamed from: c */
    public final Observable<?> m45577c(String uniqueId, List<String> stashZipPaths) {
        return new TrimStashDataFileAction(getEditorBundle(), uniqueId, this.stashDataPathMap, stashZipPaths).build();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPageUnloadedEvent(@NotNull PageUnloadedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        final List<String> pageIdList = event.getPageIdList();
        new DeleteStashShapeAction(getEditorBundle(), EditorBundleKt.docId(getEditorBundle()), pageIdList).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.aym
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                StashEventHandler.m45576b(StashEventHandler.this, pageIdList);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStashEditTextShapeEvent(@NotNull StashEditTextShapeEvent event) {
        List<? extends Shape> listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(event.getTextShape());
        final List<String> addPageStashShapeCount = getEditorBundle().getUiBundle().getNoteInfo().addPageStashShapeCount(listOf);
        Observable<R> flatMap = new StashEditTextShapeAction(getEditorBundle(), event.getVirtualBoxInfo(), event.getTextShape()).build().flatMap(new C11773a(event));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.flatMapIf(flatMap, new Function1<Object, Boolean>() { // from class: com.onyx.galaxy.note.editor.StashEventHandler$onStashEditTextShapeEvent$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!addPageStashShapeCount.isEmpty());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.StashEventHandler$onStashEditTextShapeEvent$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new SaveNotePagesAction(StashEventHandler.this.getEditorBundle(), addPageStashShapeCount).build();
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStashShapeEvent(@NotNull StashShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        final List<String> addPageStashShapeCount = getEditorBundle().getUiBundle().getNoteInfo().addPageStashShapeCount(event.getList());
        RxjavaKt.flatMapIf(new StashShapeAction(getEditorBundle(), event.getList()).build(), new Function1<StashShapeAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.StashEventHandler$onStashShapeEvent$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull StashShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!addPageStashShapeCount.isEmpty());
            }
        }, new Function1<StashShapeAction, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.StashEventHandler$onStashShapeEvent$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull StashShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new SaveNotePagesAction(StashEventHandler.this.getEditorBundle(), addPageStashShapeCount).build();
            }
        }).subscribe();
    }
}
