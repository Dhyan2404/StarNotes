package com.onyx.galaxy.note.category.data;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.data.NoteCreateType;
import com.onyx.android.sdk.event.StatisticsNoteCreateEvent;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.handler.DocManagerHandler;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0001J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u001e\u0010\u0016\u001a\u00020\n2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0001R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;", "", "()V", "docManagerHandler", "Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;", "getDocManagerHandler", "()Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;", "docManagerHandler$delegate", "Lkotlin/Lazy;", "createNoteByTemplate", "", "noteCreateInfo", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateFrom", "Lcom/onyx/android/sdk/data/NoteCreateFrom;", "docManagerBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "ensureRegister", "subscriber", "ensureUnRegister", "hwrBundle", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "importDocuments", "importArgs", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "importImage", "args", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;", "postEvent", NotificationCompat.CATEGORY_EVENT, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nDocCollectionBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocCollectionBundle.kt\ncom/onyx/galaxy/note/category/data/DocCollectionBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1855#2,2:74\n*S KotlinDebug\n*F\n+ 1 DocCollectionBundle.kt\ncom/onyx/galaxy/note/category/data/DocCollectionBundle\n*L\n56#1:74,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DocCollectionBundle {

    @NotNull
    public static final DocCollectionBundle INSTANCE = new DocCollectionBundle();

    /* renamed from: docManagerHandler$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy docManagerHandler;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DocManagerHandler>() { // from class: com.onyx.galaxy.note.category.data.DocCollectionBundle$docManagerHandler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DocManagerHandler invoke() {
                return DocManagerHandler.INSTANCE.createInstance();
            }
        });
        docManagerHandler = lazy;
    }

    private DocCollectionBundle() {
    }

    public static /* synthetic */ void createNoteByTemplate$default(DocCollectionBundle docCollectionBundle, NoteCreateInfo noteCreateInfo, NoteCreateFrom noteCreateFrom, int i, Object obj) {
        if ((i & 2) != 0) {
            noteCreateFrom = NoteCreateFrom.NORMAL_CREATE;
        }
        docCollectionBundle.createNoteByTemplate(noteCreateInfo, noteCreateFrom);
    }

    private final DocManagerHandler getDocManagerHandler() {
        return (DocManagerHandler) docManagerHandler.getValue();
    }

    public static /* synthetic */ void importDocuments$default(DocCollectionBundle docCollectionBundle, List list, NoteCreateFrom noteCreateFrom, int i, Object obj) {
        if ((i & 2) != 0) {
            noteCreateFrom = NoteCreateFrom.IMPORT_FILE;
        }
        docCollectionBundle.importDocuments(list, noteCreateFrom);
    }

    public static /* synthetic */ void importImage$default(DocCollectionBundle docCollectionBundle, ImportImageArgs importImageArgs, NoteCreateFrom noteCreateFrom, int i, Object obj) {
        if ((i & 2) != 0) {
            noteCreateFrom = NoteCreateFrom.IMPORT_FILE;
        }
        docCollectionBundle.importImage(importImageArgs, noteCreateFrom);
    }

    public final void createNoteByTemplate(@NotNull NoteCreateInfo noteCreateInfo, @NotNull NoteCreateFrom noteCreateFrom) {
        Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
        Intrinsics.checkNotNullParameter(noteCreateFrom, "noteCreateFrom");
        getDocManagerHandler().createNoteByTemplate(noteCreateInfo);
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteCreateEvent(noteCreateFrom, NoteCreateType.CREATE));
    }

    @NotNull
    public final EditorBundle docManagerBundle() {
        return getDocManagerHandler().getDocManagerBundle();
    }

    public final void ensureRegister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EditorBundleKt.register(docManagerBundle(), subscriber);
    }

    public final void ensureUnRegister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EditorBundleKt.unregister(docManagerBundle(), subscriber);
    }

    @NotNull
    public final HWRBundle hwrBundle() {
        return docManagerBundle().getAiBundle().getHwrBundle();
    }

    public final void importDocuments(@NotNull List<NoteImportArgs> importArgs, @NotNull NoteCreateFrom noteCreateFrom) {
        Intrinsics.checkNotNullParameter(importArgs, "importArgs");
        Intrinsics.checkNotNullParameter(noteCreateFrom, "noteCreateFrom");
        getDocManagerHandler().importDocuments(importArgs);
        for (NoteImportArgs noteImportArgs : importArgs) {
            StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteCreateEvent(noteCreateFrom, NoteCreateType.IMPORT));
        }
    }

    public final void importImage(@NotNull ImportImageArgs args, @NotNull NoteCreateFrom noteCreateFrom) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(noteCreateFrom, "noteCreateFrom");
        getDocManagerHandler().importImage(args);
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteCreateEvent(noteCreateFrom, NoteCreateType.IMPORT));
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(docManagerBundle(), event);
    }
}
