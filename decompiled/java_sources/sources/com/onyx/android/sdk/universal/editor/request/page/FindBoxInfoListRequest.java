package com.onyx.android.sdk.universal.editor.request.page;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\n\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoListRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "", C6997f.f39671c, "Lkotlin/jvm/functions/Function1;", "predicate", "", C6998g.f39679a, "Ljava/util/List;", "getBoxList", "()Ljava/util/List;", "setBoxList", "(Ljava/util/List;)V", "boxList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lkotlin/jvm/functions/Function1;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FindBoxInfoListRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function1<BoxInfo, Boolean> predicate;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<BoxInfo> boxList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FindBoxInfoListRequest(@NotNull WorkBundle workBundle, @NotNull Function1<? super BoxInfo, Boolean> predicate) {
        super(workBundle);
        List<BoxInfo> emptyList;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        this.predicate = predicate;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.boxList = emptyList;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.boxList = WorkBundleKt.obtainBoxManager(workBundle).findBoxInfoList(this.predicate);
    }

    @NotNull
    public final List<BoxInfo> getBoxList() {
        return this.boxList;
    }

    public final void setBoxList(@NotNull List<BoxInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.boxList = list;
    }
}
