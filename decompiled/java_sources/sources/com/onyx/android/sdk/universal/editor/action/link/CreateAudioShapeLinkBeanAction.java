package com.onyx.android.sdk.universal.editor.action.link;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "getAudioInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateAudioShapeLinkBeanAction extends RxBaseAppAction<ShapeLinkBean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AudioInfoBean audioInfoBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateAudioShapeLinkBeanAction$a */
    /* loaded from: classes8.dex */
    public static final class C9614a<T, R> implements Function {
        public C9614a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShapeLinkBean apply(@NotNull CreateAudioShapeLinkBeanAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateAudioShapeLinkBeanAction.this.m39373l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateAudioShapeLinkBeanAction(@NotNull EditorBundle editorBundle, @NotNull AudioInfoBean audioInfoBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        this.audioInfoBean = audioInfoBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShapeLinkBean> create() {
        Observable<ShapeLinkBean> map = Observable.just(this).map(new C9614a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final AudioInfoBean getAudioInfoBean() {
        return this.audioInfoBean;
    }

    /* renamed from: l */
    public final ShapeLinkBean m39373l() {
        NoteDocument noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        LinkDocBean linkDocBean = new LinkDocBean(null, null, 0, null, null, 31, null);
        linkDocBean.setDocumentId(noteDoc.getDocumentUniqueId());
        linkDocBean.setTitle(noteDoc.getNoteModel().getTitle());
        ShapeLinkBean shapeLinkBean = new ShapeLinkBean();
        shapeLinkBean.setKey("AUDIO");
        shapeLinkBean.setValue(JSONUtils.INSTANCE.toJson(this.audioInfoBean));
        shapeLinkBean.setDocBean(linkDocBean);
        shapeLinkBean.setRemark(this.audioInfoBean.getTitle());
        shapeLinkBean.setDisplayStyle(ShapeLinkBean.DisplayStyle.INSTANCE.getICON_TITLE_BOX());
        return shapeLinkBean;
    }
}
