package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction;
import com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction;
import com.onyx.galaxy.note.category.p044ui.CoverEditPopup;
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
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0018\u001a\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/CoverEditPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "template", "", "p", C4921e.f26528e, "q", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "getTemplate", "()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "setTemplate", "(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "r", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", "Lcom/onyx/galaxy/note/databinding/PopupTemplateEditBinding;", "s", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupTemplateEditBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CoverEditPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public CoverModel template;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public final NoteTemplateViewModel templateViewModel;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: com.onyx.galaxy.note.category.ui.CoverEditPopup$a */
    /* loaded from: classes9.dex */
    public static final class C11238a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f54553f;

        public C11238a(boolean z) {
            this.f54553f = z;
        }

        /* renamed from: a */
        public final void m43040a(boolean z) {
            Map<String, CoverModel> customCoverMultiSelectList;
            NoteTemplateViewModel templateViewModel = CoverEditPopup.this.getTemplateViewModel();
            if (templateViewModel != null && (customCoverMultiSelectList = templateViewModel.getCustomCoverMultiSelectList()) != null) {
                customCoverMultiSelectList.remove(CoverEditPopup.this.getTemplate().getUniqueId());
            }
            NoteTemplateViewModel templateViewModel2 = CoverEditPopup.this.getTemplateViewModel();
            if (templateViewModel2 != null) {
                templateViewModel2.loadCustomCoverByDelete(this.f54553f);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43040a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.CoverEditPopup$b */
    /* loaded from: classes9.dex */
    public static final class C11239b<T> implements Consumer {

        /* renamed from: e */
        public static final C11239b<T> f54554e = new C11239b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.CoverEditPopup$c */
    /* loaded from: classes9.dex */
    public static final class C11240c<T> implements Consumer {
        public C11240c() {
        }

        /* renamed from: a */
        public final void m43042a(boolean z) {
            NoteTemplateViewModel templateViewModel = CoverEditPopup.this.getTemplateViewModel();
            if (templateViewModel != null) {
                templateViewModel.loadCustomCoverList();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43042a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.CoverEditPopup$d */
    /* loaded from: classes9.dex */
    public static final class C11241d<T> implements Consumer {

        /* renamed from: e */
        public static final C11241d<T> f54556e = new C11241d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) String.valueOf(it2.getMessage()), false, 2, (Object) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoverEditPopup(@NotNull final Context context, @NotNull CoverModel template, @Nullable NoteTemplateViewModel noteTemplateViewModel) {
        super(context, DockType.TOP);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(template, "template");
        this.template = template;
        this.templateViewModel = noteTemplateViewModel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTemplateEditBinding>() { // from class: com.onyx.galaxy.note.category.ui.CoverEditPopup$binding$2
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
        getBinding().tvDelete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CoverEditPopup.m43036m(CoverEditPopup.this, view);
            }
        });
        getBinding().tvRename.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qfe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CoverEditPopup.m43037n(CoverEditPopup.this, view);
            }
        });
    }

    /* renamed from: m */
    public static final void m43036m(CoverEditPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43038o();
        this$0.dismiss();
    }

    /* renamed from: n */
    public static final void m43037n(CoverEditPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43039p(this$0.template);
        this$0.dismiss();
    }

    @NotNull
    public final PopupTemplateEditBinding getBinding() {
        return (PopupTemplateEditBinding) this.binding.getValue();
    }

    @NotNull
    public final CoverModel getTemplate() {
        return this.template;
    }

    @Nullable
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    /* renamed from: o */
    public final void m43038o() {
        List listOf;
        MutableLiveData<CoverModel> coverModel;
        CoverModel value;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        boolean areEqual = Intrinsics.areEqual((noteTemplateViewModel == null || (coverModel = noteTemplateViewModel.getCoverModel()) == null || (value = coverModel.getValue()) == null) ? null : value.getUniqueId(), this.template.getUniqueId());
        Context context = getContext();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.template);
        new DeleteCustomCoverAction(context, listOf).build().doOnNext(new C11238a(areEqual)).doOnError(C11239b.f54554e).subscribe();
    }

    /* renamed from: p */
    public final void m43039p(CoverModel template) {
        new ModifyCustomCoverAction(getContext(), template).build().doOnNext(new C11240c()).doOnError(C11241d.f54556e).subscribe();
    }

    public final void setTemplate(@NotNull CoverModel coverModel) {
        Intrinsics.checkNotNullParameter(coverModel, "<set-?>");
        this.template = coverModel;
    }
}
