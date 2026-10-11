package com.onyx.android.sdk.universal.editor.request.audio;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.ResourceQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAudioDuplicatedNameRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "", "isDuplicatedName", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "", "i", Constants.STRING_SIG, "newName", "j", Constants.HASIDCALL_INDEX_SIG, "duplicatedName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCheckAudioDuplicatedNameRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAudioDuplicatedNameRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CheckAudioDuplicatedNameRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"})
/* loaded from: classes8.dex */
public final class CheckAudioDuplicatedNameRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AudioInfoBean audioInfoBean;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final String newName;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean duplicatedName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckAudioDuplicatedNameRequest(@NotNull EditorBundle editorBundle, @NotNull AudioInfoBean audioInfoBean, @NotNull String newName) {
        super(EditorBundleKt.noteBundle(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        Intrinsics.checkNotNullParameter(newName, "newName");
        this.editorBundle = editorBundle;
        this.audioInfoBean = audioInfoBean;
        this.newName = newName;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        ResourceModel resourceModel;
        Sequence asSequence;
        Sequence filter;
        Object obj;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NoteProviderHolder providerHolder = noteBundle.getNoteDoc().getProviderHolder();
        ShapeBean findShapeBean = noteBundle.findShapeBean(this.audioInfoBean);
        if (findShapeBean == null || (resourceModel = findShapeBean.getResourceModel()) == null) {
            return;
        }
        final NotePage ensureGlobalNotePage = this.editorBundle.getWorkBundle().getVirtualPolicy().ensureGlobalNotePage();
        asSequence = CollectionsKt___CollectionsKt.asSequence(providerHolder.getNoteResourceProvider().loadResourceList(ResourceQueryArgsExtKt.docDuplicatedNameResourceListQuery(noteBundle.getNoteDoc().getDocumentUniqueId(), this.newName)));
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<ResourceModel, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.request.audio.CheckAudioDuplicatedNameRequest$execute$duplicatedItem$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ResourceModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!NotePage.this.getRemoveResourceIdList().contains(it2.getUniqueId()));
            }
        });
        Iterator it2 = filter.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (!Intrinsics.areEqual(((ResourceModel) obj).getUniqueId(), resourceModel.getUniqueId())) {
                    break;
                }
            }
        }
        this.duplicatedName = ((ResourceModel) obj) != null;
    }

    /* renamed from: isDuplicatedName, reason: from getter */
    public final boolean getDuplicatedName() {
        return this.duplicatedName;
    }
}
