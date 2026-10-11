package com.onyx.android.sdk.universal.editor.request.audio;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.AudioInfoBeanRemovedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/audio/RemoveAudioRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;", "audioShapeBean", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", C6999h.f39688c, "Ljava/util/List;", "audioList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRemoveAudioRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveAudioRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/RemoveAudioRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1855#2,2:57\n1#3:59\n*S KotlinDebug\n*F\n+ 1 RemoveAudioRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/RemoveAudioRequest\n*L\n36#1:57,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RemoveAudioRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<AudioInfoBean> audioList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveAudioRequest(@NotNull EditorBundle editorBundle, @NotNull List<AudioInfoBean> audioList) {
        super(EditorBundleKt.noteBundle(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioList, "audioList");
        this.editorBundle = editorBundle;
        this.audioList = audioList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Object obj;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NoteProviderHolder providerHolder = noteBundle.getNoteDoc().getProviderHolder();
        List<ShapeBean> audioShapeBeanList = noteBundle.getAudioShapeBeanList();
        NotePage ensureGlobalNotePage = this.editorBundle.getWorkBundle().getVirtualPolicy().ensureGlobalNotePage();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.audioList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                if (!(getPostShapeChangedEvent() && CollectionKt.isNonBlank(arrayList))) {
                    arrayList = null;
                }
                if (arrayList != null) {
                    EditorBundleKt.postEvent(this.editorBundle, new AudioInfoBeanRemovedEvent(arrayList));
                    return;
                }
                return;
            }
            AudioInfoBean audioInfoBean = (AudioInfoBean) it2.next();
            Iterator<T> it3 = audioShapeBeanList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                AudioInfoBean audioInfoBean2 = ((ShapeBean) obj).getAudioInfoBean();
                if (Intrinsics.areEqual(audioInfoBean2 != null ? audioInfoBean2.getAudioPath() : null, audioInfoBean.getAudioPath())) {
                    break;
                }
            }
            ShapeBean shapeBean = (ShapeBean) obj;
            if (shapeBean == null) {
                return;
            }
            arrayList.add(audioInfoBean);
            audioShapeBeanList.remove(shapeBean);
            m41432f(providerHolder, shapeBean);
            NotePageShape notePageShape = NotePageShape.INSTANCE;
            ShapeModel shapeModel = shapeBean.getShapeModel();
            if (notePageShape.removeShapeById(ensureGlobalNotePage, StringKt.safelyGetStr(shapeModel != null ? shapeModel.getUniqueId() : null)) != null) {
                NotePageSave.INSTANCE.savePage(ensureGlobalNotePage);
            }
        }
    }

    /* renamed from: f */
    public final void m41432f(NoteProviderHolder providerHolder, ShapeBean audioShapeBean) {
        FileUtils.INSTANCE.deleteFile(audioShapeBean.getResourceLocalPath());
        providerHolder.getNoteResourceProvider().removeResource(audioShapeBean.getResourceId());
    }
}
