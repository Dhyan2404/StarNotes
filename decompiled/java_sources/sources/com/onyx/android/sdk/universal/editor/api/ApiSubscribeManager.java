package com.onyx.android.sdk.universal.editor.api;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "init", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", NotificationCompat.CATEGORY_EVENT, "onDocumentOpenSuccessEvent", "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;", "apiSubscriber", "addApiSubscriber", "", "a", "Ljava/util/List;", "apiSubscriberList", "b", "docInternalApiSubscriberList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nApiSubscribeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiSubscribeManager.kt\ncom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1855#2,2:64\n1855#2,2:66\n1855#2,2:68\n*S KotlinDebug\n*F\n+ 1 ApiSubscribeManager.kt\ncom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager\n*L\n26#1:64,2\n34#1:66,2\n52#1:68,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ApiSubscribeManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<BaseApiSubscriber> apiSubscriberList = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<BaseApiSubscriber> docInternalApiSubscriberList = new ArrayList();
    public EditorBundle editorBundle;

    public final void addApiSubscriber(@NotNull BaseApiSubscriber apiSubscriber) {
        Intrinsics.checkNotNullParameter(apiSubscriber, "apiSubscriber");
        apiSubscriber.init(getEditorBundle());
        this.apiSubscriberList.add(apiSubscriber);
    }

    public final void destroy() {
        Iterator<T> it2 = this.apiSubscriberList.iterator();
        while (it2.hasNext()) {
            ((BaseApiSubscriber) it2.next()).destroy();
        }
        this.apiSubscriberList.clear();
        this.docInternalApiSubscriberList.clear();
        EditorBundleKt.unregister(getEditorBundle(), this);
        Debug.INSTANCE.m32035d(ApiSubscribeManager.class, "destroy", new Object[0]);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            return editorBundle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        return null;
    }

    public final void init(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.apiSubscriberList.add(new DocListManagerApiSubscriber());
        Iterator<T> it2 = this.apiSubscriberList.iterator();
        while (it2.hasNext()) {
            ((BaseApiSubscriber) it2.next()).init(editorBundle);
        }
        EditorBundleKt.register(editorBundle, this);
        setEditorBundle(editorBundle);
        Debug.INSTANCE.m32035d(ApiSubscribeManager.class, "init", new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!this.docInternalApiSubscriberList.isEmpty()) {
            Debug.INSTANCE.m32035d(ApiSubscribeManager.class, "docInternalApiSubscriber exist.", new Object[0]);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new DocInternalApiSubscriber());
        arrayList.add(new NoteApiSubscriber());
        arrayList.add(new NoteHitTestApiSubscriber());
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((BaseApiSubscriber) it2.next()).init(getEditorBundle());
        }
        Debug.INSTANCE.m32035d(ApiSubscribeManager.class, "init docInternalApiSubscriber", new Object[0]);
        this.docInternalApiSubscriberList.addAll(arrayList);
        this.apiSubscriberList.addAll(arrayList);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }
}
