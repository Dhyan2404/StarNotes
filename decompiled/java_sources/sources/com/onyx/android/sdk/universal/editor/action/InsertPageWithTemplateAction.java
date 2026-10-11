package com.onyx.android.sdk.universal.editor.action;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.TemplateData;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "m", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "insertPageArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertPageWithTemplateAction extends RxBaseAppAction<InsertPageWithTemplateAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final InsertPageArgs insertPageArgs;

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;", "", "()V", "findTemplateRectPageByPreviousPage", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "fromPageIndex", "", "initTemplateRectByPreviousPage", "", "insertPageArgs", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "scaleToWidth", "", "targetRect", "Landroid/graphics/RectF;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nInsertPageWithTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertPageWithTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final VirtualPage findTemplateRectPageByPreviousPage(@NotNull EditorBundle editorBundle, int fromPageIndex) {
            VirtualPage virtualPage;
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            int max = Math.max(fromPageIndex - 1, 0);
            while (true) {
                virtualPage = null;
                if (max >= editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPageCount()) {
                    break;
                }
                int i = max + 1;
                VirtualPage virtualPage2 = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(max);
                if (virtualPage2 != null && (!editorBundle.getWorkBundle().getVirtualPolicy().isCoverPage(virtualPage2.getBox().getId()))) {
                    virtualPage = virtualPage2;
                }
                if (virtualPage != null) {
                    break;
                }
                max = i;
            }
            return virtualPage;
        }

        public final boolean initTemplateRectByPreviousPage(@NotNull EditorBundle editorBundle, @NotNull InsertPageArgs insertPageArgs) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
            VirtualPage findTemplateRectPageByPreviousPage = findTemplateRectPageByPreviousPage(editorBundle, insertPageArgs.getInsertAt());
            if (findTemplateRectPageByPreviousPage == null) {
                return false;
            }
            scaleToWidth(insertPageArgs, findTemplateRectPageByPreviousPage.getBox().getOriginRectF());
            return true;
        }

        public final void scaleToWidth(@NotNull InsertPageArgs insertPageArgs, @NotNull RectF targetRect) {
            Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
            Intrinsics.checkNotNullParameter(targetRect, "targetRect");
            if (targetRect.isEmpty()) {
                return;
            }
            RectFKt.scaleRect(insertPageArgs.getPageRect(), targetRect.width() / insertPageArgs.getPageRect().width());
            insertPageArgs.getPageRect().offsetTo(0.0f, 0.0f);
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageWithTemplateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8219a<T> implements Consumer {
        public C8219a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(InsertPageWithTemplateAction.this.getEditorBundle(), new InsertPageEvent(InsertPageWithTemplateAction.this.insertPageArgs));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageWithTemplateAction$b */
    /* loaded from: classes8.dex */
    public static final class C8220b<T, R> implements Function {
        public C8220b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageWithTemplateAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageWithTemplateAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertPageWithTemplateAction(@NotNull EditorBundle editorBundle, @NotNull InsertPageArgs insertPageArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
        this.insertPageArgs = insertPageArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<InsertPageWithTemplateAction> create() {
        Observable<InsertPageWithTemplateAction> map = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.InsertPageWithTemplateAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                InsertPageWithTemplateAction.this.m36826l();
            }
        }).doOnNext(new C8219a()).map(new C8220b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m36826l() {
        ContentConstants contentConstants = ContentConstants.INSTANCE;
        TemplateJsonBean templateJsonBean = this.insertPageArgs.getTemplateJsonBean();
        if (contentConstants.isTemplatePDF(templateJsonBean != null ? templateJsonBean.getContentType() : null)) {
            INSTANCE.initTemplateRectByPreviousPage(getEditorBundle(), this.insertPageArgs);
        } else {
            if (INSTANCE.initTemplateRectByPreviousPage(getEditorBundle(), this.insertPageArgs)) {
                return;
            }
            m36827m();
        }
    }

    /* renamed from: m */
    public final boolean m36827m() {
        TemplateData defaultTemplate;
        VirtualDocModel loadVirtualDocModel = getEditorBundle().getWorkBundle().getVirtualModelProvider().loadVirtualDocModel();
        if (loadVirtualDocModel == null || (defaultTemplate = loadVirtualDocModel.getDefaultTemplate()) == null) {
            return false;
        }
        INSTANCE.scaleToWidth(this.insertPageArgs, defaultTemplate.getContentPageSize());
        return true;
    }
}
