package com.onyx.android.sdk.universal.editor.request.layer;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.ExcerptCollectionCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", "", C6997f.f39671c, "Ljava/util/List;", "layerIds", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCleanNotePageLayerRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n766#2:63\n857#2,2:64\n1855#2:66\n766#2:67\n857#2,2:68\n766#2:70\n857#2,2:71\n1856#2:73\n1#3:74\n*S KotlinDebug\n*F\n+ 1 CleanNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest\n*L\n35#1:63\n35#1:64,2\n36#1:66\n38#1:67\n38#1:68,2\n46#1:70\n46#1:71,2\n36#1:73\n*E\n"})
/* loaded from: classes8.dex */
public final class CleanNotePageLayerRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> layerIds;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CleanNotePageLayerRequest(@NotNull WorkBundle workBundle, @NotNull List<Integer> layerIds) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        this.layerIds = layerIds;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        ArrayList arrayList = new ArrayList();
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        Set<String> loadValidShapeNotePageIds = NoteDocNotePage.INSTANCE.loadValidShapeNotePageIds(workBundle.getNoteBundle().getNoteDoc());
        List<VirtualPage> virtualPageList = workBundle.getVirtualPolicy().getVirtualPageList();
        ArrayList<VirtualPage> arrayList2 = new ArrayList();
        for (Object obj : virtualPageList) {
            if (loadValidShapeNotePageIds.contains(((VirtualPage) obj).getBox().getId())) {
                arrayList2.add(obj);
            }
        }
        for (VirtualPage virtualPage : arrayList2) {
            NotePage ensureNotePage = workBundle.getVirtualPolicy().ensureNotePage(virtualPage);
            List<Shape> shapeList = ensureNotePage.getShapeList();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : shapeList) {
                if (this.layerIds.contains(Integer.valueOf(((Shape) obj2).getLayerId()))) {
                    arrayList3.add(obj2);
                }
            }
            if (!CollectionKt.isNullOrEmpty(arrayList3)) {
                workBundle.getVirtualPolicy().updatePage(virtualPage);
                changedShapeBean.merge(NotePage.removeShapeList$default(ensureNotePage, arrayList3, false, 2, null));
                NotePageSave.INSTANCE.savePage(ensureNotePage);
                arrayList.add(new UndoRedoCommand().removeShapes(arrayList3));
                ArrayList arrayList4 = new ArrayList();
                Iterator it2 = arrayList3.iterator();
                while (true) {
                    boolean z = true;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    Shape shape = (Shape) next;
                    ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                    if (!shapeTypes.isQuoteShape(shape) && !shapeTypes.isExcerptShape(shape)) {
                        z = false;
                    }
                    if (z) {
                        arrayList4.add(next);
                    }
                }
                if (!arrayList4.isEmpty()) {
                    ExcerptCollectionCommand excerptCollectionCommand = new ExcerptCollectionCommand(workBundle.getNoteBundle(), arrayList4);
                    excerptCollectionCommand.removeExcerptCollectionModels();
                    arrayList.add(excerptCollectionCommand);
                }
            }
        }
        workBundle.getNoteBundle().postShapeChangedEvent(changedShapeBean);
        if (!CollectionKt.isNonBlank(arrayList)) {
            arrayList = null;
        }
        if (arrayList != null) {
            CompositeCommand compositeCommand = new CompositeCommand(arrayList);
            workBundle.getNoteBundle().getCommandManager().addCommand(compositeCommand);
            workBundle.getNoteBundle().postEvent(new CommandEvent(compositeCommand));
        }
    }
}
