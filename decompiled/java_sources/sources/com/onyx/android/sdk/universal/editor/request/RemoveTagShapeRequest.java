package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/RemoveTagShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "", C6999h.f39688c, "Ljava/util/List;", "tagIds", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRemoveTagShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveTagShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/RemoveTagShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n766#2:31\n857#2,2:32\n*S KotlinDebug\n*F\n+ 1 RemoveTagShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/RemoveTagShapeRequest\n*L\n19#1:31\n19#1:32,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RemoveTagShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> tagIds;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveTagShapeRequest(@NotNull EditorBundle editorBundle, @NotNull List<String> tagIds) {
        super(EditorBundleKt.noteBundle(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        this.editorBundle = editorBundle;
        this.tagIds = tagIds;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        VirtualDocPolicy virtualPolicy = this.editorBundle.getWorkBundle().getVirtualPolicy();
        Iterator<VirtualPage> it2 = virtualPolicy.getVirtualPageList().iterator();
        while (it2.hasNext()) {
            NotePage notePage = virtualPolicy.getNotePage(it2.next());
            if (notePage != null) {
                List<Shape> shapeList = notePage.getShapeList();
                ArrayList<Shape> arrayList = new ArrayList();
                for (Object obj : shapeList) {
                    if (ShapeTypes.INSTANCE.isTagShape((Shape) obj)) {
                        arrayList.add(obj);
                    }
                }
                for (Shape shape : arrayList) {
                    Iterator<SyncTagModel> it3 = ShapeOptions.INSTANCE.getTagBean(shape).getTagList().iterator();
                    while (it3.hasNext()) {
                        if (this.tagIds.contains(it3.next().getUniqueId())) {
                            NotePage.removeShape$default(notePage, shape, false, 2, null);
                        }
                    }
                }
            }
        }
    }
}
