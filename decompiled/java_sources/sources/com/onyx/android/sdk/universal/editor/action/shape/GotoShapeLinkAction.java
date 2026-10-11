package com.onyx.android.sdk.universal.editor.action.shape;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.HitTestLinkNoteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "linkBean", "m", GoogleApiAvailabilityLight.f29016b, C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoShapeLinkAction extends RxBaseAppAction<GotoShapeLinkAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ShapeLinkBean linkBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoShapeLinkAction$a */
    /* loaded from: classes8.dex */
    public static final class C10079a<T> implements Consumer {
        public C10079a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GotoShapeLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoShapeLinkAction.this.m40211l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoShapeLinkAction$b */
    /* loaded from: classes8.dex */
    public static final class C10080b<T, R> implements Function {
        public C10080b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoShapeLinkAction apply(@NotNull GotoShapeLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeLinkAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoShapeLinkAction(@NotNull EditorBundle editorBundle, @NotNull ShapeLinkBean linkBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        this.linkBean = linkBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoShapeLinkAction> create() {
        Observable<GotoShapeLinkAction> map = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10079a()).map(new C10080b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m40211l() {
        String key = this.linkBean.getKey();
        if (key != null) {
            int hashCode = key.hashCode();
            if (hashCode == 84303) {
                if (key.equals(ShapeLinkType.LINK_URL)) {
                    m40212m(this.linkBean);
                }
            } else if (hashCode == 2402290) {
                if (key.equals("NOTE")) {
                    EditorBundleKt.postEvent(getEditorBundle(), new HitTestLinkNoteEvent(this.linkBean));
                }
            } else if (hashCode == 1644347675 && key.equals(ShapeLinkType.LINK_DOCUMENT)) {
                m40213n(this.linkBean);
            }
        }
    }

    /* renamed from: m */
    public final void m40212m(ShapeLinkBean linkBean) {
        String value = linkBean.getValue();
        if (value == null) {
            value = "";
        }
        Intent addFlags = new Intent("android.intent.action.VIEW", Uri.parse(StringKt.preAppendUrlScheme(value))).addFlags(268435456);
        Intrinsics.checkNotNullExpressionValue(addFlags, "addFlags(...)");
        if (BuildKt.isApiLevelAbove(24)) {
            addFlags.addFlags(4096);
        }
        ContextKt.startActivitySafely(getAppContext(), addFlags);
    }

    /* renamed from: n */
    public final void m40213n(ShapeLinkBean linkBean) {
        String path;
        String safelyGetStr;
        LinkDocBean docBean = linkBean.getDocBean();
        if (docBean == null || (path = docBean.getPath()) == null || (safelyGetStr = StringKt.safelyGetStr(path)) == null) {
            return;
        }
        String documentId = docBean.getDocumentId();
        if (documentId == null) {
            documentId = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getDocumentUniqueId();
        }
        ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
        String name = FilenameUtils.getName(safelyGetStr);
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String obj = resourcePaths.appResourceDataFilePath(documentId, name).toAbsolutePath().toString();
        if (FileUtils.INSTANCE.fileExist(obj)) {
            ContextKt.openFile$default(getAppContext(), obj, null, 2, null);
        }
    }
}
