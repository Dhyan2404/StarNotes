package com.onyx.android.sdk.universal.editor.request.audio;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.utils.NoteAudioUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;", "shapeBean", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", C6999h.f39688c, "Ljava/util/List;", "shapeBeanList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCheckAndCorrectAudioDurationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndCorrectAudioDurationRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 CheckAndCorrectAudioDurationRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest\n*L\n25#1:47,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CheckAndCorrectAudioDurationRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ShapeBean> shapeBeanList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckAndCorrectAudioDurationRequest(@NotNull EditorBundle editorBundle, @NotNull List<ShapeBean> shapeBeanList) {
        super(EditorBundleKt.noteBundle(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeBeanList, "shapeBeanList");
        this.editorBundle = editorBundle;
        this.shapeBeanList = shapeBeanList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NoteProviderHolder providerHolder = noteBundle.getNoteDoc().getProviderHolder();
        Iterator<T> it2 = this.shapeBeanList.iterator();
        while (it2.hasNext()) {
            m41424f(providerHolder, (ShapeBean) it2.next());
        }
    }

    /* renamed from: f */
    public final void m41424f(NoteProviderHolder providerHolder, ShapeBean shapeBean) {
        ResourceModel resourceModel = shapeBean.getResourceModel();
        if (resourceModel != null && resourceModel.getAudioDuration() <= 0) {
            try {
                NoteAudioUtils noteAudioUtils = NoteAudioUtils.INSTANCE;
                String path = resourceModel.getPath();
                if (path == null) {
                    path = "";
                }
                long audioDuration = noteAudioUtils.getAudioDuration(path);
                if (audioDuration > 0) {
                    resourceModel.m72386setAudioDuration(audioDuration);
                    AudioInfoBean audioInfoBean = shapeBean.getAudioInfoBean();
                    if (audioInfoBean != null) {
                        audioInfoBean.setDuration(audioDuration);
                    }
                    providerHolder.getNoteResourceProvider().saveResourceModel(resourceModel);
                }
            } catch (Exception unused) {
            }
        }
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }
}
