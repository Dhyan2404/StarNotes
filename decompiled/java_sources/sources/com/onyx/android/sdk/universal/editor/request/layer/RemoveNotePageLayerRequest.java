package com.onyx.android.sdk.universal.editor.request.layer;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.ExcerptCollectionCommand;
import com.onyx.android.sdk.note.common.command.LayerCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.event.LayerCommandAppliedEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.PageLayerRemovedEvent;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
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

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", "", C6997f.f39671c, "Ljava/util/List;", "layerIds", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getChangedShapeBean", "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRemoveNotePageLayerRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1855#2:95\n350#2,7:96\n1856#2:103\n766#2:104\n857#2,2:105\n1855#2:107\n766#2:108\n857#2,2:109\n766#2:111\n857#2,2:112\n1856#2:114\n*S KotlinDebug\n*F\n+ 1 RemoveNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest\n*L\n44#1:95\n45#1:96,7\n44#1:103\n68#1:104\n68#1:105,2\n69#1:107\n73#1:108\n73#1:109,2\n81#1:111\n81#1:112,2\n69#1:114\n*E\n"})
/* loaded from: classes8.dex */
public final class RemoveNotePageLayerRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> layerIds;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ChangedShapeBean changedShapeBean;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveNotePageLayerRequest(@NotNull WorkBundle workBundle, @NotNull List<Integer> layerIds) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        this.layerIds = layerIds;
        this.changedShapeBean = new ChangedShapeBean();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull final WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        NotePage ensureGlobalNotePage = workBundle.getVirtualPolicy().ensureGlobalNotePage();
        final PageInfo pageInfo = ensureGlobalNotePage.getPageInfo();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.layerIds.iterator();
        while (it2.hasNext()) {
            int intValue = ((Number) it2.next()).intValue();
            Iterator<LayerInfo> it3 = pageInfo.getLayerList().iterator();
            int i = 0;
            while (true) {
                if (!it3.hasNext()) {
                    i = -1;
                    break;
                } else if (intValue == it3.next().getId()) {
                    break;
                } else {
                    i++;
                }
            }
            arrayList.add(new LayerCommand(pageInfo) { // from class: com.onyx.android.sdk.universal.editor.request.layer.RemoveNotePageLayerRequest$execute$1$layerCommand$1
                @Override // com.onyx.android.sdk.note.common.command.LayerCommand, com.onyx.android.sdk.note.common.command.Command
                public void redo(@NotNull UndoRedoArgs args) {
                    Intrinsics.checkNotNullParameter(args, "args");
                    super.redo(args);
                    WorkBundleKt.postEvent(workBundle, new LayerCommandAppliedEvent());
                }

                @Override // com.onyx.android.sdk.note.common.command.LayerCommand, com.onyx.android.sdk.note.common.command.Command
                public void undo(@NotNull UndoRedoArgs args) {
                    Intrinsics.checkNotNullParameter(args, "args");
                    super.undo(args);
                    WorkBundleKt.postEvent(workBundle, new LayerCommandAppliedEvent());
                }
            }.setLayerIndex(i).setRemoveLayer(NotePageInfoUtils.INSTANCE.getLayerInfo(pageInfo, i)));
        }
        pageInfo.removeLayers(this.layerIds);
        workBundle.getNoteBundle().getNoteDoc().getNotePageInfo().updatePageInfoLayers(pageInfo.getLayerList(), pageInfo.getCurrentLayerId());
        Set<String> loadValidShapeNotePageIds = NoteDocNotePage.INSTANCE.loadValidShapeNotePageIds(workBundle.getNoteBundle().getNoteDoc());
        List<VirtualPage> virtualPageList = workBundle.getVirtualPolicy().getVirtualPageList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : virtualPageList) {
            if (loadValidShapeNotePageIds.contains(((VirtualPage) obj).getBox().getId())) {
                arrayList2.add(obj);
            }
        }
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext()) {
            NotePage ensureNotePage = workBundle.getVirtualPolicy().ensureNotePage((VirtualPage) it4.next());
            ensureNotePage.getPageInfo().removeLayers(this.layerIds);
            ensureNotePage.getPageInfo().setCurrentLayerId(ensureGlobalNotePage.getLayerIndex());
            List<Shape> shapeList = ensureNotePage.getShapeList();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : shapeList) {
                if (this.layerIds.contains(Integer.valueOf(((Shape) obj2).getLayerId()))) {
                    arrayList3.add(obj2);
                }
            }
            if (!CollectionKt.isNullOrEmpty(arrayList3)) {
                this.changedShapeBean.merge(NotePage.removeShapeList$default(ensureNotePage, arrayList3, false, 2, null));
                NotePageSave.INSTANCE.savePage(ensureNotePage);
                arrayList.add(new UndoRedoCommand().removeShapes(arrayList3));
                ArrayList arrayList4 = new ArrayList();
                for (Object obj3 : arrayList3) {
                    Shape shape = (Shape) obj3;
                    ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                    if (shapeTypes.isQuoteShape(shape) || shapeTypes.isExcerptShape(shape)) {
                        arrayList4.add(obj3);
                    }
                }
                if (!arrayList4.isEmpty()) {
                    ExcerptCollectionCommand excerptCollectionCommand = new ExcerptCollectionCommand(workBundle.getNoteBundle(), arrayList4);
                    excerptCollectionCommand.removeExcerptCollectionModels();
                    arrayList.add(excerptCollectionCommand);
                }
            }
        }
        CompositeCommand compositeCommand = new CompositeCommand(arrayList);
        workBundle.getNoteBundle().getCommandManager().addCommand(compositeCommand);
        workBundle.getNoteBundle().postShapeChangedEvent(this.changedShapeBean);
        workBundle.getNoteBundle().postEvent(new CommandEvent(compositeCommand));
        workBundle.getNoteBundle().postEvent(new PageLayerRemovedEvent(this.layerIds));
    }

    @NotNull
    public final ChangedShapeBean getChangedShapeBean() {
        return this.changedShapeBean;
    }
}
