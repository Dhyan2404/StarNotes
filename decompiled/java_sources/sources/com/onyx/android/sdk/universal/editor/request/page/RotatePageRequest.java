package com.onyx.android.sdk.universal.editor.request.page;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.RotatePageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/RotatePageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "rotateArgs", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6998g.f39679a, "Ljava/util/List;", "getRotatedPageList", "()Ljava/util/List;", "rotatedPageList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRotatePageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotatePageRequest.kt\ncom/onyx/android/sdk/universal/editor/request/page/RotatePageRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1603#2,9:43\n1855#2:52\n1856#2:54\n1612#2:55\n1855#2,2:56\n1#3:53\n*S KotlinDebug\n*F\n+ 1 RotatePageRequest.kt\ncom/onyx/android/sdk/universal/editor/request/page/RotatePageRequest\n*L\n30#1:43,9\n30#1:52\n30#1:54\n30#1:55\n31#1:56,2\n30#1:53\n*E\n"})
/* loaded from: classes8.dex */
public final class RotatePageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final RotatePageArgs rotateArgs;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<VirtualPage> rotatedPageList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RotatePageRequest(@NotNull WorkBundle workBundle, @NotNull RotatePageArgs rotateArgs) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(rotateArgs, "rotateArgs");
        this.rotateArgs = rotateArgs;
        this.rotatedPageList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        if (this.rotateArgs.getPageIndexList().isEmpty()) {
            return;
        }
        String currentBoxId = WorkBundleKt.obtainBoxManager(workBundle).getCurrentBoxId();
        List<Integer> pageIndexList = this.rotateArgs.getPageIndexList();
        ArrayList<VirtualPage> arrayList = new ArrayList();
        Iterator<T> it2 = pageIndexList.iterator();
        while (it2.hasNext()) {
            VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(((Number) it2.next()).intValue());
            if (virtualPage != null) {
                arrayList.add(virtualPage);
            }
        }
        for (VirtualPage virtualPage2 : arrayList) {
            virtualPage2.rotate(this.rotateArgs.getRotation());
            workBundle.getVirtualPolicy().updatePage(virtualPage2);
            this.rotatedPageList.add(virtualPage2);
        }
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        obtainBoxManager.updateDataAndApplyScale(workBundle.getVirtualPolicy().boxInfoSnapshot());
        BoxManager.scrollTo$default(obtainBoxManager, currentBoxId, 0.0f, 0.0f, 6, null);
        obtainBoxManager.alignCenter();
        WorkBundleKt.postVirtualDocViewInfo(workBundle, currentBoxId);
    }

    @NotNull
    public final List<VirtualPage> getRotatedPageList() {
        return this.rotatedPageList;
    }
}
