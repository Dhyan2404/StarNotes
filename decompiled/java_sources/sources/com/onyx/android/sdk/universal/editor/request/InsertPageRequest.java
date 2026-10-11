package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.PageInsertedEvent;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001b\u0010\n\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\tR\u001b\u0010\u000f\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\u000eR$\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00108F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00178F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;", C6997f.f39671c, "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;", "createRequest", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6998g.f39679a, "getVirtualPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "value", "getInsertPageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "setInsertPageArgs", "(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V", "insertPageArgs", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "getReaderPageInfo", "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "setReaderPageInfo", "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V", "readerPageInfo", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy createRequest;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy virtualPage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertPageRequest(@NotNull final WorkBundle workBundle) {
        super(workBundle);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CreateVirtualPageRequest>() { // from class: com.onyx.android.sdk.universal.editor.request.InsertPageRequest$createRequest$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreateVirtualPageRequest invoke() {
                return new CreateVirtualPageRequest(WorkBundle.this);
            }
        });
        this.createRequest = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<VirtualPage>() { // from class: com.onyx.android.sdk.universal.editor.request.InsertPageRequest$virtualPage$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VirtualPage invoke() {
                CreateVirtualPageRequest m41414f;
                m41414f = InsertPageRequest.this.m41414f();
                return m41414f.getVirtualPage();
            }
        });
        this.virtualPage = lazy2;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        int insertAt = getInsertPageArgs().getInsertAt();
        CreateVirtualPageRequest m41414f = m41414f();
        m41414f.execute2();
        VirtualPage virtualPage = m41414f.getVirtualPage();
        InsertVirtualPageRequest insertVirtualPageRequest = new InsertVirtualPageRequest(workBundle, insertAt, virtualPage, getInsertPageArgs().getAutoApplyPageMargin());
        insertVirtualPageRequest.setScrollTo(getInsertPageArgs().getAutoScrollToInsertPage());
        insertVirtualPageRequest.execute2();
        WorkBundleKt.postEvent(workBundle, new PageInsertedEvent(getInsertPageArgs(), virtualPage));
    }

    /* renamed from: f */
    public final CreateVirtualPageRequest m41414f() {
        return (CreateVirtualPageRequest) this.createRequest.getValue();
    }

    @NotNull
    public final InsertPageArgs getInsertPageArgs() {
        return m41414f().getInsertPageArgs();
    }

    @NotNull
    public final ReaderPageInfo getReaderPageInfo() {
        return m41414f().getReaderPageInfo();
    }

    @NotNull
    public final VirtualPage getVirtualPage() {
        return (VirtualPage) this.virtualPage.getValue();
    }

    public final void setInsertPageArgs(@NotNull InsertPageArgs value) {
        Intrinsics.checkNotNullParameter(value, "value");
        m41414f().setInsertPageArgs(value);
    }

    public final void setReaderPageInfo(@NotNull ReaderPageInfo value) {
        Intrinsics.checkNotNullParameter(value, "value");
        m41414f().setReaderPageInfo(value);
    }
}
