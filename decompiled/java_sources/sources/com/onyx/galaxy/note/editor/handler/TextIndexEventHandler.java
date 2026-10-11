package com.onyx.galaxy.note.editor.handler;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.event.StashShapeEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.layer.FindShapePageIdsByLayerAction;
import com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction;
import com.onyx.android.sdk.universal.editor.action.search.RemoveTextIndexByPageAction;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.ActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.PagesRemovedEvent;
import com.onyx.android.sdk.universal.editor.events.note.ClearLayerDialogDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerInfoChangedEvent;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0013H\u0007¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/TextIndexEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "onActivateDocumentEvent", "", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;", "onClearLayerDialogDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogDoneEvent;", "onLayerInfoChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;", "onPagesRemovedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;", "onShapeChangedEvent", "changedShapeBean", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "onStashShapeEvent", "Lcom/onyx/android/sdk/note/common/event/StashShapeEvent;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTextIndexEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextIndexEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/TextIndexEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n766#2:70\n857#2,2:71\n1549#2:73\n1620#2,3:74\n*S KotlinDebug\n*F\n+ 1 TextIndexEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/TextIndexEventHandler\n*L\n31#1:70\n31#1:71,2\n32#1:73\n32#1:74,3\n*E\n"})
/* loaded from: classes9.dex */
public final class TextIndexEventHandler extends BaseEventHandler {

    /* renamed from: com.onyx.galaxy.note.editor.handler.TextIndexEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12121a<T, R> implements Function {
        public C12121a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RemoveTextIndexByPageAction> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RemoveTextIndexByPageAction(TextIndexEventHandler.this.getEditorBundle(), it2, TextContentType.INSTANCE.editablePageContentTypes()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.TextIndexEventHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12122b<T, R> implements Function {
        public C12122b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RemoveTextIndexByPageAction> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RemoveTextIndexByPageAction(TextIndexEventHandler.this.getEditorBundle(), it2, TextContentType.INSTANCE.editablePageContentTypes()).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextIndexEventHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivateDocumentEvent(@NotNull ActivateDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        BuildTextIndexInBackgroundAction.INSTANCE.onNoteActivated(event.getSyncNoteModel().getUniqueId());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onClearLayerDialogDoneEvent(@NotNull ClearLayerDialogDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable<R> flatMap = new FindShapePageIdsByLayerAction(getEditorBundle(), event.getLayerIds()).build().flatMap(new C12121a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.subscribeWithDefault$default(flatMap, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLayerInfoChangedEvent(@NotNull NoteLayerInfoChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable<R> flatMap = new FindShapePageIdsByLayerAction(getEditorBundle(), CollectionKt.asList(Integer.valueOf(event.getLayerInfo().getId()))).build().flatMap(new C12122b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.subscribeWithDefault$default(flatMap, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPagesRemovedEvent(@NotNull PagesRemovedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxjavaKt.subscribeWithDefault$default(new RemoveTextIndexByPageAction(getEditorBundle(), event.getPageIdList(), null, 4, null).build(), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShapeChangedEvent(@NotNull ChangedShapeBean changedShapeBean) {
        List list;
        Intrinsics.checkNotNullParameter(changedShapeBean, "changedShapeBean");
        list = CollectionsKt___CollectionsKt.toList(changedShapeBean.getChangedPageSet());
        RxjavaKt.subscribeWithDefault$default(new RemoveTextIndexByPageAction(getEditorBundle(), list, TextContentType.INSTANCE.editablePageContentTypes()).build(), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStashShapeEvent(@NotNull StashShapeEvent event) {
        int collectionSizeOrDefault;
        List distinct;
        Intrinsics.checkNotNullParameter(event, "event");
        List<Shape> list = event.getList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapeTypes.INSTANCE.isSearchableShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((Shape) it2.next()).getPageUniqueId());
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
        RxjavaKt.subscribeWithDefault$default(new RemoveTextIndexByPageAction(getEditorBundle(), distinct, TextContentType.INSTANCE.editablePageContentTypes()).build(), null, null, null, 7, null);
    }
}
