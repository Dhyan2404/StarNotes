package com.onyx.android.sdk.universal.editor.action.page;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.VirtualPageQueryArgsKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0002H\u0002J\u001e\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0002H\u0002R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "l", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "pageModelList", "", GoogleApiAvailabilityLight.f29016b, "m", C6999h.f39688c, "Ljava/util/List;", "pageIdList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nForceRemoveVirtualPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRemoveVirtualPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1549#2:68\n1620#2,3:69\n1549#2:72\n1620#2,3:73\n766#2:76\n857#2,2:77\n1549#2:79\n1620#2,3:80\n1855#2,2:83\n1855#2,2:85\n*S KotlinDebug\n*F\n+ 1 ForceRemoveVirtualPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction\n*L\n40#1:68\n40#1:69,3\n48#1:72\n48#1:73,3\n50#1:76\n50#1:77,2\n54#1:79\n54#1:80,3\n57#1:83,2\n61#1:85,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ForceRemoveVirtualPagesAction extends RxBaseAppAction<List<? extends String>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIdList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForceRemoveVirtualPagesAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<String>> create() {
        return DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, List<? extends String>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.ForceRemoveVirtualPagesAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<String> invoke(@NotNull WorkBundle it2) {
                List<String> m39459l;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39459l = ForceRemoveVirtualPagesAction.this.m39459l(it2);
                return m39459l;
            }
        });
    }

    /* renamed from: l */
    public final List<String> m39459l(WorkBundle workBundle) {
        List<VirtualPageModel> mutableList;
        int collectionSizeOrDefault;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) workBundle.getVirtualModelProvider().loadVirtualPageModelList(VirtualPageQueryArgsKt.loadVirtualPageById(this.pageIdList)));
        m39460m(workBundle, mutableList);
        m39461n(workBundle, mutableList);
        List<VirtualPageModel> list = mutableList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPageModel) it2.next()).getUniqueId());
        }
        return arrayList;
    }

    /* renamed from: m */
    public final void m39460m(WorkBundle workBundle, List<VirtualPageModel> pageModelList) {
        for (VirtualPageModel virtualPageModel : pageModelList) {
            virtualPageModel.setRevisionId("");
            virtualPageModel.setStatus(2);
        }
        workBundle.getVirtualModelProvider().saveVirtualPageList(pageModelList);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0046 A[SYNTHETIC] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m39461n(com.onyx.android.sdk.universal.editor.WorkBundle r7, java.util.List<com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel> r8) {
        /*
            r6 = this;
            com.onyx.android.sdk.replicator.note.db.VirtualModelProvider r0 = r7.getVirtualModelProvider()
            com.onyx.android.sdk.replicator.note.db.model.VirtualDocModel r0 = r0.loadVirtualDocModel()
            com.onyx.android.sdk.universal.editor.doc.VirtualPage$Companion r1 = com.onyx.android.sdk.universal.editor.doc.VirtualPage.INSTANCE
            com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy r7 = r7.getVirtualPolicy()
            java.util.List r7 = r7.getVirtualPageList()
            java.util.List r7 = r1.toPagePathInfoList(r7)
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = 10
            int r3 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r7, r2)
            r1.<init>(r3)
            java.util.Iterator r7 = r7.iterator()
        L27:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L3b
            java.lang.Object r3 = r7.next()
            com.onyx.android.sdk.universal.editor.doc.VirtualPagePathInfo r3 = (com.onyx.android.sdk.universal.editor.doc.VirtualPagePathInfo) r3
            java.lang.String r3 = r3.getRelativePath()
            r1.add(r3)
            goto L27
        L3b:
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r8 = r8.iterator()
        L46:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto L7e
            java.lang.Object r3 = r8.next()
            r4 = r3
            com.onyx.android.sdk.replicator.note.db.model.VirtualPageModel r4 = (com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel) r4
            java.lang.String r5 = r4.getContentRelativePath()
            boolean r5 = r1.contains(r5)
            if (r5 != 0) goto L77
            if (r0 == 0) goto L6a
            com.onyx.android.sdk.data.common.data.template.TemplateData r5 = r0.getDefaultTemplate()
            if (r5 == 0) goto L6a
            java.lang.String r5 = r5.getContentRelativePath()
            goto L6b
        L6a:
            r5 = 0
        L6b:
            java.lang.String r4 = r4.getContentRelativePath()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r4)
            if (r4 != 0) goto L77
            r4 = 1
            goto L78
        L77:
            r4 = 0
        L78:
            if (r4 == 0) goto L46
            r7.add(r3)
            goto L46
        L7e:
            java.util.ArrayList r8 = new java.util.ArrayList
            int r0 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r7, r2)
            r8.<init>(r0)
            java.util.Iterator r7 = r7.iterator()
        L8b:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto La8
            java.lang.Object r0 = r7.next()
            com.onyx.android.sdk.replicator.note.db.model.VirtualPageModel r0 = (com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel) r0
            com.onyx.android.sdk.universal.editor.doc.VirtualPageRelativePathInfo r1 = new com.onyx.android.sdk.universal.editor.doc.VirtualPageRelativePathInfo
            java.lang.String r2 = r0.getContentType()
            java.lang.String r0 = r0.getContentRelativePath()
            r1.<init>(r2, r0)
            r8.add(r1)
            goto L8b
        La8:
            java.util.List r7 = kotlin.collections.CollectionsKt.distinct(r8)
            com.onyx.android.sdk.universal.editor.action.page.ForceRemoveVirtualPagesAction$removePageTemplateFile$3 r8 = new com.onyx.android.sdk.universal.editor.action.page.ForceRemoveVirtualPagesAction$removePageTemplateFile$3
            r8.<init>()
            java.lang.Object r6 = com.onyx.android.sdk.base.extension.AnyKt.transform(r7, r8)
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.Iterator r6 = r6.iterator()
        Lbb:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto Ld1
            java.lang.Object r7 = r6.next()
            com.onyx.android.sdk.universal.editor.doc.VirtualPagePathInfo r7 = (com.onyx.android.sdk.universal.editor.doc.VirtualPagePathInfo) r7
            com.onyx.android.sdk.base.utils.FileUtils r8 = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE
            java.lang.String r7 = r7.getAbsolutePath()
            r8.deleteFile(r7)
            goto Lbb
        Ld1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.page.ForceRemoveVirtualPagesAction.m39461n(com.onyx.android.sdk.universal.editor.WorkBundle, java.util.List):void");
    }
}
