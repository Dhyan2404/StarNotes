package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction;
import com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction;
import com.onyx.galaxy.note.category.p044ui.PaperEditPopup;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupTemplateEditBinding;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0018\u001a\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "template", "", "p", C4921e.f26528e, "q", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "getTemplate", "()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "setTemplate", "(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "r", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", "Lcom/onyx/galaxy/note/databinding/PopupTemplateEditBinding;", "s", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupTemplateEditBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PaperEditPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public TemplateModel template;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public final NoteTemplateViewModel templateViewModel;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: com.onyx.galaxy.note.category.ui.PaperEditPopup$a */
    /* loaded from: classes9.dex */
    public static final class C11341a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f54898f;

        public C11341a(boolean z) {
            this.f54898f = z;
        }

        /* renamed from: a */
        public final void m43787a(boolean z) {
            Map<String, TemplateModel> customPaperMultiSelectList;
            NoteTemplateViewModel templateViewModel = PaperEditPopup.this.getTemplateViewModel();
            if (templateViewModel != null && (customPaperMultiSelectList = templateViewModel.getCustomPaperMultiSelectList()) != null) {
                customPaperMultiSelectList.remove(PaperEditPopup.this.getTemplate().getUniqueId());
            }
            NoteTemplateViewModel templateViewModel2 = PaperEditPopup.this.getTemplateViewModel();
            if (templateViewModel2 != null) {
                templateViewModel2.loadCustomPaperByDelete(this.f54898f);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43787a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.PaperEditPopup$b */
    /* loaded from: classes9.dex */
    public static final class C11342b<T> implements Consumer {

        /* renamed from: e */
        public static final C11342b<T> f54899e = new C11342b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.PaperEditPopup$c */
    /* loaded from: classes9.dex */
    public static final class C11343c<T> implements Consumer {
        public C11343c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel templateViewModel = PaperEditPopup.this.getTemplateViewModel();
            if (templateViewModel != null) {
                templateViewModel.loadCustomPaperList();
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.PaperEditPopup$d */
    /* loaded from: classes9.dex */
    public static final class C11344d<T> implements Consumer {

        /* renamed from: e */
        public static final C11344d<T> f54901e = new C11344d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) String.valueOf(it2.getMessage()), false, 2, (Object) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaperEditPopup(@NotNull final Context context, @NotNull TemplateModel template, @Nullable NoteTemplateViewModel noteTemplateViewModel) {
        super(context, DockType.TOP);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(template, "template");
        this.template = template;
        this.templateViewModel = noteTemplateViewModel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTemplateEditBinding>() { // from class: com.onyx.galaxy.note.category.ui.PaperEditPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTemplateEditBinding invoke() {
                PopupTemplateEditBinding inflate = PopupTemplateEditBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        getBinding().tvDelete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tuk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PaperEditPopup.m43783m(PaperEditPopup.this, view);
            }
        });
        getBinding().tvRename.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uuk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PaperEditPopup.m43784n(PaperEditPopup.this, view);
            }
        });
    }

    /* renamed from: m */
    public static final void m43783m(PaperEditPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43785o();
        this$0.dismiss();
    }

    /* renamed from: n */
    public static final void m43784n(PaperEditPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TemplateModel templateModel = this$0.template;
        Intrinsics.checkNotNull(templateModel, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.TemplateModel");
        this$0.m43786p(templateModel);
        this$0.dismiss();
    }

    @NotNull
    public final PopupTemplateEditBinding getBinding() {
        return (PopupTemplateEditBinding) this.binding.getValue();
    }

    @NotNull
    public final TemplateModel getTemplate() {
        return this.template;
    }

    @Nullable
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    /* renamed from: o */
    public final void m43785o() {
        List listOf;
        MutableLiveData<TemplateModel> paperModel;
        TemplateModel value;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        boolean areEqual = Intrinsics.areEqual((noteTemplateViewModel == null || (paperModel = noteTemplateViewModel.getPaperModel()) == null || (value = paperModel.getValue()) == null) ? null : value.getUniqueId(), this.template.getUniqueId());
        Context context = getContext();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.template);
        new DeleteCustomTemplateAction(context, listOf).build().doOnNext(new C11341a(areEqual)).doOnError(C11342b.f54899e).subscribe();
    }

    /* renamed from: p */
    public final void m43786p(TemplateModel template) {
        new ModifyCustomPaperAction(getContext(), template).build().doOnNext(new C11343c()).doOnError(C11344d.f54901e).subscribe();
    }

    public final void setTemplate(@NotNull TemplateModel templateModel) {
        Intrinsics.checkNotNullParameter(templateModel, "<set-?>");
        this.template = templateModel;
    }
}
