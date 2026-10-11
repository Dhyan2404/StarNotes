package com.onyx.galaxy.note.editor.p046ui;

import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.Observer;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.WindowKt;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.drag.BitmapDragShadowBuilder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.events.app.NoteOverviewStartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.AuthNoteAction;
import com.onyx.galaxy.note.category.action.CreateQuicklyNoteAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.common.view.BaseThemeDialogFragment;
import com.onyx.galaxy.note.databinding.FragmentNoteOverviewBinding;
import com.onyx.galaxy.note.databinding.LayoutDocSearchBinding;
import com.onyx.galaxy.note.editor.p046ui.NoteOverviewFragment;
import com.onyx.galaxy.note.editor.view.adapter.NoteOverviewAdapter;
import com.onyx.galaxy.note.editor.view.popup.NoteOverviewOptionsPopup;
import com.onyx.galaxy.note.editor.viewmodel.NoteOverviewViewModel;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.onyx.galaxy.note.utils.DocOutlineSearchUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u00002\u00020\u00012\u00020\u0002:\u0001gB\u0007¢\u0006\u0004\be\u0010fJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002J\b\u0010\t\u001a\u00020\u0003H\u0002J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\nH\u0002J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\rH\u0002J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\rH\u0002J\b\u0010\u0019\u001a\u00020\u0003H\u0002J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\nH\u0002J\b\u0010\u001c\u001a\u00020\u0003H\u0002J\b\u0010\u001d\u001a\u00020\u0003H\u0002J\b\u0010\u001e\u001a\u00020\u0003H\u0002J\u0010\u0010!\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00010\u001fJ\b\u0010\"\u001a\u00020\u0003H\u0016J\u0012\u0010%\u001a\u00020\u00032\b\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010'\u001a\u00020&2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016J$\u0010,\u001a\u00020\u00132\u0006\u0010)\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010*2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u001a\u0010-\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010$\u001a\u0004\u0018\u00010#H\u0016J\b\u0010.\u001a\u00020\u0003H\u0016J\u0010\u00101\u001a\u00020\u00032\u0006\u00100\u001a\u00020/H\u0007J\u0010\u00104\u001a\u00020\u00032\u0006\u00103\u001a\u000202H\u0016JR\u0010?\u001a\u00020\u00032\b\u00105\u001a\u0004\u0018\u00010\u00132\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u0002062\u0006\u00109\u001a\u0002062\u0006\u0010:\u001a\u0002062\u0006\u0010;\u001a\u0002062\u0006\u0010<\u001a\u0002062\u0006\u0010=\u001a\u0002062\u0006\u0010>\u001a\u000206H\u0016R\u001b\u0010E\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u001b\u0010J\u001a\u00020F8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010B\u001a\u0004\bH\u0010IR\u0014\u0010N\u001a\u00020K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR$\u0010V\u001a\u0004\u0018\u00010O8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\"\u0010]\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010a\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010XR\u0016\u0010d\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010c¨\u0006h"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;", "Lcom/onyx/galaxy/note/common/view/BaseThemeDialogFragment;", "Landroid/view/View$OnLayoutChangeListener;", "", "W0", "L0", "F0", "K0", "G0", "E0", "", "key", "N0", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "note", "R0", "T0", "douId", "O0", "Landroid/view/View;", "view", "selectedItem", "", "P0", "Q0", "y0", EditorConstants.ARGS_DOC_ID, "X0", "z0", "U0", "C0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "onDestroy", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/app/Dialog;", "onCreateDialog", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "onCreateView", "onViewCreated", "onDestroyView", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", NotificationCompat.CATEGORY_EVENT, "onVirtualDocViewInfoEvent", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "v", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "onLayoutChange", "Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;", "z1", "Lkotlin/Lazy;", "A0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;", "binding", "Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;", "A1", "B0", "()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;", "viewmodel", "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;", "B1", "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;", "adapter", "Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;", "C1", "Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;", "getDragListener", "()Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;", "setDragListener", "(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;)V", "dragListener", "D1", Constants.HASIDCALL_INDEX_SIG, "getLocationOnLeft", Constants.BOOLEAN_VALUE_SIG, "setLocationOnLeft", "(Z)V", "locationOnLeft", "E1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "F1", "isShowed", "G1", "I", "translationX", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "DragListenerDelegateListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOverviewFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,359:1\n1#2:360\n256#3,2:361\n256#3,2:363\n*S KotlinDebug\n*F\n+ 1 NoteOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOverviewFragment\n*L\n283#1:361,2\n315#1:363,2\n*E\n"})
/* loaded from: classes17.dex */
public final class NoteOverviewFragment extends BaseThemeDialogFragment implements View.OnLayoutChangeListener {

    /* renamed from: A1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewmodel;

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public final NoteOverviewAdapter adapter;

    /* renamed from: C1, reason: from kotlin metadata */
    @Nullable
    public DragListenerDelegateListener dragListener;

    /* renamed from: D1, reason: from kotlin metadata */
    public boolean locationOnLeft;

    /* renamed from: E1, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: F1, reason: from kotlin metadata */
    public boolean isShowed;

    /* renamed from: G1, reason: from kotlin metadata */
    public int translationX;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;", "", "onDragData", "", "dragEvent", "Landroid/view/DragEvent;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface DragListenerDelegateListener {
        boolean onDragData(@NotNull DragEvent dragEvent);
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12198a<T, R> implements Function {

        /* renamed from: e */
        public static final C12198a<T, R> f59130e = new C12198a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateNoteAction> apply(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CreateNoteAction(DocCollectionBundle.INSTANCE.docManagerBundle(), it2).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12199b<T> implements Consumer {
        public C12199b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteOverviewFragment.this.m46889O0(it2.getNoteModel().getUniqueId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12200c implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f59132a;

        public C12200c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f59132a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return this.f59132a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f59132a.invoke(obj);
        }
    }

    public NoteOverviewFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteOverviewBinding>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteOverviewBinding invoke() {
                FragmentNoteOverviewBinding inflate = FragmentNoteOverviewBinding.inflate(LayoutInflater.from(NoteOverviewFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteOverviewViewModel>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$viewmodel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteOverviewViewModel invoke() {
                return (NoteOverviewViewModel) FragmentKt.getViewModel(NoteOverviewFragment.this, NoteOverviewViewModel.class);
            }
        });
        this.viewmodel = lazy2;
        this.adapter = new NoteOverviewAdapter();
    }

    /* renamed from: D0 */
    public static final void m46866D0(NoteOverviewFragment this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        this$0.m46880A0().llyContent.setTranslationX(intValue);
        if (intValue == this$0.translationX) {
            this$0.dismiss();
        }
    }

    /* renamed from: H0 */
    public static final void m46867H0(NoteOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46882C0();
    }

    /* renamed from: I0 */
    public static final void m46868I0(NoteOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46882C0();
    }

    /* renamed from: J0 */
    public static final void m46869J0(NoteOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46893T0();
    }

    /* renamed from: M0 */
    public static final void m46870M0(NoteOverviewFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46894U0();
    }

    /* renamed from: S0 */
    public static final void m46871S0(NoteModelBean note, NoteOverviewFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(note, "$note");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AutoReLockNoteManager.INSTANCE.addAutoReLockNoteTask(note.getUniqueId());
        this$0.m46889O0(note.getUniqueId());
    }

    /* renamed from: V0 */
    public static final void m46872V0(NoteOverviewFragment this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNull(it2.getAnimatedValue(), "null cannot be cast to non-null type kotlin.Int");
        this$0.m46880A0().llyContent.setTranslationX(((Integer) r2).intValue());
    }

    /* renamed from: A0 */
    public final FragmentNoteOverviewBinding m46880A0() {
        return (FragmentNoteOverviewBinding) this.binding.getValue();
    }

    /* renamed from: B0 */
    public final NoteOverviewViewModel m46881B0() {
        return (NoteOverviewViewModel) this.viewmodel.getValue();
    }

    /* renamed from: C0 */
    public final void m46882C0() {
        if (this.isShowed) {
            this.isShowed = false;
            ValueAnimator ofInt = ValueAnimator.ofInt(0, this.translationX);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.wzj
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    NoteOverviewFragment.m46866D0(NoteOverviewFragment.this, valueAnimator);
                }
            });
            ofInt.start();
        }
    }

    /* renamed from: E0 */
    public final void m46883E0() {
        m46881B0().getNoteListData().observe(getViewLifecycleOwner(), new C12200c(new NoteOverviewFragment$initData$1(this)));
        m46881B0().getNoteTabListData().observe(getViewLifecycleOwner(), new C12200c(new Function1<List<? extends NoteTabData>, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$initData$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends NoteTabData> list) {
                invoke2((List<NoteTabData>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<NoteTabData> list) {
                NoteOverviewAdapter noteOverviewAdapter;
                noteOverviewAdapter = NoteOverviewFragment.this.adapter;
                noteOverviewAdapter.notifyDataSetChanged();
            }
        }));
    }

    /* renamed from: F0 */
    public final void m46884F0() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46880A0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        DocOutlineSearchUtils.initLayout$default(docOutlineSearchUtils, layoutSearch, false, false, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$initInputLayout$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteOverviewFragment.this.m46888N0(it2);
            }
        }, 3, null);
        m46880A0().layoutSearch.inputEditTextView.setHint(C10651R.string.search_note_hint);
    }

    /* renamed from: G0 */
    public final void m46885G0() {
        TintImageView ivClose = m46880A0().ivClose;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        ViewKt.click$default(ivClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewFragment.m46867H0(NoteOverviewFragment.this, view);
            }
        }, 1, null);
        View root = m46880A0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.click$default(root, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.szj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewFragment.m46868I0(NoteOverviewFragment.this, view);
            }
        }, 1, null);
        TintLinearLayout llyQuickCreate = m46880A0().llyQuickCreate;
        Intrinsics.checkNotNullExpressionValue(llyQuickCreate, "llyQuickCreate");
        ViewKt.click$default(llyQuickCreate, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewFragment.m46869J0(NoteOverviewFragment.this, view);
            }
        }, 1, null);
        m46880A0().getRoot().setOnDragListener(new View.OnDragListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$initListener$4
            @Override // android.view.View.OnDragListener
            public boolean onDrag(@Nullable View v, @NotNull DragEvent event) {
                FragmentNoteOverviewBinding m46880A0;
                FragmentNoteOverviewBinding m46880A02;
                FragmentNoteOverviewBinding m46880A03;
                Intrinsics.checkNotNullParameter(event, "event");
                NoteOverviewFragment.DragListenerDelegateListener dragListener = NoteOverviewFragment.this.getDragListener();
                if (dragListener == null) {
                    return false;
                }
                int action = event.getAction();
                if (action == 1) {
                    m46880A0 = NoteOverviewFragment.this.m46880A0();
                    m46880A0.getRoot().setBackgroundColor(0);
                } else if (action == 4) {
                    m46880A03 = NoteOverviewFragment.this.m46880A0();
                    m46880A03.getRoot().setBackgroundColor(ResManager.INSTANCE.getColor(C10651R.color.note_overview_background));
                }
                m46880A02 = NoteOverviewFragment.this.m46880A0();
                TintLinearLayout llyContent = m46880A02.llyContent;
                Intrinsics.checkNotNullExpressionValue(llyContent, "llyContent");
                if (!com.onyx.android.sdk.base.extension.ViewKt.globalVisibleRectF(llyContent).contains(event.getX(), event.getY()) || event.getAction() == 4) {
                    return dragListener.onDragData(event);
                }
                return true;
            }
        });
    }

    /* renamed from: K0 */
    public final void m46886K0() {
        this.adapter.setViewmodel(m46881B0());
        m46880A0().rvContent.getAutoFitRecycleView().setAdapter(this.adapter);
        m46880A0().rvContent.getAutoFitRecycleView().setDisplayType(NoteDisplayType.DISPLAY_LIST);
        this.adapter.setListener(new NoteOverviewAdapter.NoteOverviewListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$initRecyclerView$1
            @Override // com.onyx.galaxy.note.editor.view.adapter.NoteOverviewAdapter.NoteOverviewListener
            public void onItemClick(@NotNull NoteModelBean item) {
                NoteOverviewAdapter noteOverviewAdapter;
                Intrinsics.checkNotNullParameter(item, "item");
                noteOverviewAdapter = NoteOverviewFragment.this.adapter;
                if (Intrinsics.areEqual(noteOverviewAdapter.getSelectedId(), item.getUniqueId())) {
                    return;
                }
                NoteOverviewFragment.this.m46892R0(item);
            }

            @Override // com.onyx.galaxy.note.editor.view.adapter.NoteOverviewAdapter.NoteOverviewListener
            public void onItemLongClick(@NotNull View view, @NotNull NoteModelBean item) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(item, "item");
                NoteOverviewFragment.this.m46890P0(view, item);
            }

            @Override // com.onyx.galaxy.note.editor.view.adapter.NoteOverviewAdapter.NoteOverviewListener
            public void onItemMore(@NotNull View view, @NotNull NoteModelBean item) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(item, "item");
                NoteOverviewFragment.this.m46891Q0(view, item);
            }
        });
    }

    /* renamed from: L0 */
    public final void m46887L0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            WindowKt.hideNavigationBar(window);
        }
        m46880A0().getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.vzj
            @Override // java.lang.Runnable
            public final void run() {
                NoteOverviewFragment.m46870M0(NoteOverviewFragment.this);
            }
        });
        m46884F0();
        m46886K0();
        m46880A0().searchEmptyView.setIconSize(ResManager.INSTANCE.getDimens(C7384R.dimen.dp_148));
    }

    /* renamed from: N0 */
    public final void m46888N0(String key) {
        m46881B0().loadNoteData(key);
    }

    /* renamed from: O0 */
    public final void m46889O0(String douId) {
        NoteOverviewStartActivateDocumentEvent noteOverviewStartActivateDocumentEvent = new NoteOverviewStartActivateDocumentEvent(douId);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, noteOverviewStartActivateDocumentEvent);
        }
        m46882C0();
    }

    /* renamed from: P0 */
    public final boolean m46890P0(View view, NoteModelBean selectedItem) {
        if (!ViewCompat.isLaidOut(view)) {
            this.adapter.notifyDataSetChanged();
            return false;
        }
        Intent intent = new Intent();
        intent.putExtra(EditorConstants.ARGS_DOC_ID, selectedItem.getUniqueId());
        ViewCompat.startDragAndDrop(view, new ClipData("", new String[]{FileExtensionUtils.DEFAULT_MIMETYPE_TEXT}, new ClipData.Item(intent)), new BitmapDragShadowBuilder(androidx.core.view.ViewKt.drawToBitmap$default(view, null, 1, null)), EditorConstants.LOCAL_STATE_START_SPLIT_SCREEN, 0);
        return true;
    }

    /* renamed from: Q0 */
    public final void m46891Q0(final View view, final NoteModelBean selectedItem) {
        Object obj;
        NoteModelBean noteModelBean;
        Iterator<T> it2 = this.adapter.getItems().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            NoteModelBean noteModelBean2 = ((NotePageBean) next).getNoteModelBean();
            if (Intrinsics.areEqual(noteModelBean2 != null ? noteModelBean2.getUniqueId() : null, this.adapter.getSelectedId())) {
                obj = next;
                break;
            }
        }
        NotePageBean notePageBean = (NotePageBean) obj;
        if (notePageBean == null || (noteModelBean = notePageBean.getNoteModelBean()) == null) {
            noteModelBean = selectedItem;
        }
        m46881B0().loadNoteTabList(noteModelBean).observe(getViewLifecycleOwner(), new C12200c(new Function1<List<? extends NoteTabData>, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$onMore$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends NoteTabData> list) {
                invoke2((List<NoteTabData>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<NoteTabData> list) {
                Context requireContext = NoteOverviewFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                Intrinsics.checkNotNull(list);
                new NoteOverviewOptionsPopup(requireContext, list, selectedItem).safeShowAsDropDown(view);
            }
        }));
    }

    /* renamed from: R0 */
    public final void m46892R0(final NoteModelBean note) {
        List listOf;
        if (!m46881B0().isNoteReLocked(note)) {
            m46889O0(note.getUniqueId());
            return;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(note.getUniqueId());
        RxjavaKt.doOnNextIf(new AuthNoteAction(requireContext, listOf).build(), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOverviewFragment$onOpenNote$1
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.uzj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteOverviewFragment.m46871S0(NoteModelBean.this, this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: T0 */
    public final void m46893T0() {
        new CreateQuicklyNoteAction(null, null).build().flatMap(C12198a.f59130e).doOnNext(new C12199b()).subscribe();
    }

    /* renamed from: U0 */
    public final void m46894U0() {
        ViewGroup.LayoutParams layoutParams = m46880A0().llyContent.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        if (this.locationOnLeft) {
            layoutParams2.rightToRight = -1;
            layoutParams2.leftToLeft = 0;
        } else {
            layoutParams2.leftToLeft = -1;
            layoutParams2.rightToRight = 0;
        }
        m46880A0().llyContent.setTranslationX(this.translationX);
        m46880A0().llyContent.setLayoutParams(layoutParams2);
        TintLinearLayout llyContent = m46880A0().llyContent;
        Intrinsics.checkNotNullExpressionValue(llyContent, "llyContent");
        llyContent.setVisibility(0);
        ValueAnimator ofInt = ValueAnimator.ofInt(this.translationX, 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.qzj
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NoteOverviewFragment.m46872V0(NoteOverviewFragment.this, valueAnimator);
            }
        });
        ofInt.start();
        this.isShowed = true;
    }

    /* renamed from: W0 */
    public final void m46895W0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -1);
    }

    /* renamed from: X0 */
    public final void m46896X0(String docId) {
        if (Intrinsics.areEqual(this.adapter.getSelectedId(), docId)) {
            return;
        }
        this.adapter.updateSelected(docId);
    }

    @Nullable
    public final DragListenerDelegateListener getDragListener() {
        return this.dragListener;
    }

    public final boolean getLocationOnLeft() {
        return this.locationOnLeft;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m46895W0();
    }

    @Override // com.onyx.galaxy.note.common.view.BaseThemeDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063283, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        return new Dialog(requireContext(), C10651R.style.TransparentDialog);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m46880A0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.view.BaseThemeDialogFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.unregister(editorBundle, this);
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        requireActivity().getWindow().getDecorView().removeOnLayoutChangeListener(this);
        super.onDestroyView();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(@Nullable View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        if (left == oldLeft && oldRight == right && top == oldTop && bottom == oldBottom) {
            return;
        }
        m46895W0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (this.dragListener == null) {
            dismiss();
            return;
        }
        requireActivity().getWindow().getDecorView().addOnLayoutChangeListener(this);
        m46895W0();
        m46898z0();
        m46887L0();
        m46885G0();
        m46883E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46896X0(event.getVirtualDocViewInfo().getDocId());
    }

    public final void setDragListener(@Nullable DragListenerDelegateListener dragListenerDelegateListener) {
        this.dragListener = dragListenerDelegateListener;
    }

    public final void setEditorBundle(@Nullable EditorBundle editorBundle) {
        this.editorBundle = editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.register(editorBundle, this);
        }
    }

    public final void setLocationOnLeft(boolean z) {
        this.locationOnLeft = z;
    }

    /* renamed from: y0 */
    public final void m46897y0() {
        boolean isEmpty = this.adapter.getItems().isEmpty();
        CommonEmptyView searchEmptyView = m46880A0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(isEmpty ? 0 : 8);
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        TintTextView searchResult = m46880A0().layoutSearch.searchResult;
        Intrinsics.checkNotNullExpressionValue(searchResult, "searchResult");
        docOutlineSearchUtils.setSearchMatchingData(searchResult, this.adapter.getItemCount(), m46881B0().isSearchMode());
    }

    /* renamed from: z0 */
    public final void m46898z0() {
        this.translationX = this.locationOnLeft ? -ResManager.INSTANCE.getDimens(C7384R.dimen.dp_280) : ResManager.INSTANCE.getDimens(C7384R.dimen.dp_280);
    }
}
