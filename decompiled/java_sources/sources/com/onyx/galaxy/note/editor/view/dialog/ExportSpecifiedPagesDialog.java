package com.onyx.galaxy.note.editor.view.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import com.blankj.utilcode.util.FragmentUtils;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.events.note.AllDataSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.EnterSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.PageThumbnailSizeChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectAllDataEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.FragmentExportSpecifiedPagesBinding;
import com.onyx.galaxy.note.editor.action.export.LoadCurNoteExportArgsAction;
import com.onyx.galaxy.note.editor.data.ThumbnailSizeType;
import com.onyx.galaxy.note.editor.p046ui.DocOverviewFragment;
import com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0013J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0002J&\u0010\"\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u00132\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J&\u0010&\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00132\u0006\u0010$\u001a\u00020#2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001bH\u0002R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u0010 \u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onStart", "onDestroy", "Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;", NotificationCompat.CATEGORY_EVENT, "onAllDataSelectedEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "docManagerHandler", "setDocManagerBundle", "K0", "B0", "J0", "", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "getSelectedItems", "", "A0", "docManagerBundle", "selectedItems", "y0", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "pageIdList", "I0", "Lcom/onyx/galaxy/note/databinding/FragmentExportSpecifiedPagesBinding;", "z1", "Lcom/onyx/galaxy/note/databinding/FragmentExportSpecifiedPagesBinding;", "binding", "A1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "B1", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExportSpecifiedPagesDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportSpecifiedPagesDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n1549#2:210\n1620#2,3:211\n1002#2,2:214\n1549#2:216\n1620#2,3:217\n*S KotlinDebug\n*F\n+ 1 ExportSpecifiedPagesDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog\n*L\n107#1:210\n107#1:211,3\n186#1:214,2\n187#1:216\n187#1:217,3\n*E\n"})
/* loaded from: classes17.dex */
public final class ExportSpecifiedPagesDialog extends DialogFragment {

    /* renamed from: A1, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: B1, reason: from kotlin metadata */
    @Nullable
    public EditorBundle docManagerBundle;

    /* renamed from: z1, reason: from kotlin metadata */
    public FragmentExportSpecifiedPagesBinding binding;

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12307a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f59846e;

        public C12307a(LoadingDialog loadingDialog) {
            this.f59846e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ExportSpecifiedPagesDialog it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadingDialog loadingDialog = this.f59846e;
            if (loadingDialog != null) {
                loadingDialog.show();
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12308b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f59847e;

        public C12308b(EditorBundle editorBundle) {
            this.f59847e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteExportArgs> apply(@NotNull ExportSpecifiedPagesDialog it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadCurNoteExportArgsAction(this.f59847e).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog$c */
    /* loaded from: classes9.dex */
    public static final class C12309c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f59848e;

        public C12309c(LoadingDialog loadingDialog) {
            this.f59848e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteExportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadingDialog loadingDialog = this.f59848e;
            if (loadingDialog != null) {
                loadingDialog.dismiss();
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog$d */
    /* loaded from: classes9.dex */
    public static final class C12310d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f59850f;

        /* renamed from: g */
        public final /* synthetic */ List<String> f59851g;

        public C12310d(EditorBundle editorBundle, List<String> list) {
            this.f59850f = editorBundle;
            this.f59851g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteExportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportSpecifiedPagesDialog.this.m47967I0(this.f59850f, it2.getNoteModel(), this.f59851g);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog$e */
    /* loaded from: classes9.dex */
    public static final class C12311e<T> implements Consumer {
        public C12311e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(ExportSpecifiedPagesDialog.this.getContext(), C10651R.string.export_fail), false, 2, (Object) null);
        }
    }

    /* renamed from: C0 */
    public static final void m47951C0(ExportSpecifiedPagesDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* renamed from: D0 */
    public static final void m47952D0(ExportSpecifiedPagesDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* renamed from: E0 */
    public static final void m47953E0(ExportSpecifiedPagesDialog this$0, EditorBundle editorBundle, EditorBundle docManagerBundle, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        Intrinsics.checkNotNullParameter(docManagerBundle, "$docManagerBundle");
        this$0.m47970y0(editorBundle, docManagerBundle, this$0.getSelectedItems());
    }

    /* renamed from: F0 */
    public static final void m47954F0(ExportSpecifiedPagesDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47968J0();
    }

    /* renamed from: G0 */
    public static final void m47955G0(ExportSpecifiedPagesDialog this$0, EditorBundle editorBundle, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        ThumbnailSizeType thumbnailSizeType = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().toggleExportPagesThumbnailSize();
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding = this$0.binding;
        if (fragmentExportSpecifiedPagesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding = null;
        }
        fragmentExportSpecifiedPagesBinding.ivThumbSize.setBackgroundDrawable(ThemeUtils.getThemeDrawable(thumbnailSizeType.getImageRes()));
        EditorBundleKt.postEvent(editorBundle, new PageThumbnailSizeChangedEvent(thumbnailSizeType));
    }

    /* renamed from: H0 */
    public static final void m47956H0(ExportSpecifiedPagesDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundle editorBundle = this$0.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new EnterSelectionModeEvent());
        }
    }

    /* renamed from: z0 */
    public static final void m47964z0(LoadingDialog loadingDialog) {
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
    }

    /* renamed from: A0 */
    public final String m47965A0() {
        return Reflection.getOrCreateKotlinClass(ExportSpecifiedPagesDialog.class).getQualifiedName();
    }

    /* renamed from: B0 */
    public final void m47966B0() {
        final EditorBundle editorBundle;
        final EditorBundle editorBundle2 = this.editorBundle;
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding = null;
        if (editorBundle2 == null || (editorBundle = this.docManagerBundle) == null) {
            FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding2 = this.binding;
            if (fragmentExportSpecifiedPagesBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentExportSpecifiedPagesBinding = fragmentExportSpecifiedPagesBinding2;
            }
            fragmentExportSpecifiedPagesBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.f2g
                @Override // java.lang.Runnable
                public final void run() {
                    ExportSpecifiedPagesDialog.m47951C0(ExportSpecifiedPagesDialog.this);
                }
            });
            return;
        }
        if (editorBundle2 == null || editorBundle == null) {
            return;
        }
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding3 = this.binding;
        if (fragmentExportSpecifiedPagesBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding3 = null;
        }
        fragmentExportSpecifiedPagesBinding3.closeText.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g2g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExportSpecifiedPagesDialog.m47952D0(ExportSpecifiedPagesDialog.this, view);
            }
        });
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding4 = this.binding;
        if (fragmentExportSpecifiedPagesBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding4 = null;
        }
        fragmentExportSpecifiedPagesBinding4.finish.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.h2g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExportSpecifiedPagesDialog.m47953E0(ExportSpecifiedPagesDialog.this, editorBundle2, editorBundle, view);
            }
        });
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding5 = this.binding;
        if (fragmentExportSpecifiedPagesBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding5 = null;
        }
        fragmentExportSpecifiedPagesBinding5.selectAll.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i2g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExportSpecifiedPagesDialog.m47954F0(ExportSpecifiedPagesDialog.this, view);
            }
        });
        Fragment findFragmentByTag = getChildFragmentManager().findFragmentByTag(m47965A0());
        DocOverviewFragment docOverviewFragment = findFragmentByTag instanceof DocOverviewFragment ? (DocOverviewFragment) findFragmentByTag : null;
        if (docOverviewFragment == null) {
            docOverviewFragment = new DocOverviewFragment();
            docOverviewFragment.setEditBundle(editorBundle2);
            docOverviewFragment.setDocManagerBundle(editorBundle);
            docOverviewFragment.setSelectable(true);
            docOverviewFragment.setThumbnailSizeType(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getExportPagesThumbnailSizeType());
            docOverviewFragment.setShowActionMenu(false);
            docOverviewFragment.setCloseOnSelect(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog$initView$fragment$1$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            });
        }
        FragmentUtils.replace(getChildFragmentManager(), docOverviewFragment, C10651R.id.container, m47965A0());
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding6 = this.binding;
        if (fragmentExportSpecifiedPagesBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding6 = null;
        }
        fragmentExportSpecifiedPagesBinding6.selectAll.setChecked(false);
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding7 = this.binding;
        if (fragmentExportSpecifiedPagesBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding7 = null;
        }
        fragmentExportSpecifiedPagesBinding7.ivThumbSize.setBackgroundDrawable(ThemeUtils.getThemeDrawable(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getExportPagesThumbnailSizeType().getImageRes()));
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding8 = this.binding;
        if (fragmentExportSpecifiedPagesBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentExportSpecifiedPagesBinding = fragmentExportSpecifiedPagesBinding8;
        }
        fragmentExportSpecifiedPagesBinding.ivThumbSize.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j2g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExportSpecifiedPagesDialog.m47955G0(ExportSpecifiedPagesDialog.this, editorBundle2, view);
            }
        });
    }

    /* renamed from: I0 */
    public final void m47967I0(EditorBundle docManagerBundle, SyncNoteModel noteModel, List<String> pageIdList) {
        List listOf;
        String valueOf;
        NoteExportArgs noteExportArgs = new NoteExportArgs(noteModel, pageIdList, null, false, 12, null);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteExportArgs);
        NoteExportDialog noteExportDialog = new NoteExportDialog(docManagerBundle, requireContext, listOf);
        EditorBundle editorBundle = this.editorBundle;
        boolean z = false;
        if (editorBundle != null && EditorBundleKt.pageCount(editorBundle) == pageIdList.size()) {
            z = true;
        }
        if (z) {
            valueOf = ResManager.INSTANCE.getStringSafely(C10651R.string.export_document_entire);
        } else {
            FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding = this.binding;
            if (fragmentExportSpecifiedPagesBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentExportSpecifiedPagesBinding = null;
            }
            valueOf = String.valueOf(fragmentExportSpecifiedPagesBinding.tvSelectedPages.getText());
        }
        noteExportDialog.setExportPageRangeText(valueOf).show();
    }

    /* renamed from: J0 */
    public final void m47968J0() {
        Boolean valueOf;
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding = this.binding;
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding2 = null;
        if (fragmentExportSpecifiedPagesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding = null;
        }
        if (((Boolean) ViewKt.getTagSafely(fragmentExportSpecifiedPagesBinding.selectAll)) == null) {
            FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding3 = this.binding;
            if (fragmentExportSpecifiedPagesBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentExportSpecifiedPagesBinding3 = null;
            }
            valueOf = Boolean.valueOf(fragmentExportSpecifiedPagesBinding3.selectAll.isChecked());
        } else {
            valueOf = Boolean.valueOf(!r0.booleanValue());
        }
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding4 = this.binding;
        if (fragmentExportSpecifiedPagesBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding4 = null;
        }
        fragmentExportSpecifiedPagesBinding4.selectAll.setChecked(valueOf.booleanValue());
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding5 = this.binding;
        if (fragmentExportSpecifiedPagesBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentExportSpecifiedPagesBinding2 = fragmentExportSpecifiedPagesBinding5;
        }
        fragmentExportSpecifiedPagesBinding2.selectAll.setTag(valueOf);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new SelectAllDataEvent(valueOf.booleanValue()));
        }
        m47969K0();
    }

    /* renamed from: K0 */
    public final void m47969K0() {
        int collectionSizeOrDefault;
        int[] intArray;
        String joinToString$default;
        List<PageDataModel> selectedItems = getSelectedItems();
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding = this.binding;
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding2 = null;
        if (fragmentExportSpecifiedPagesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding = null;
        }
        TintTextView tintTextView = fragmentExportSpecifiedPagesBinding.tvSelectedPages;
        List<PageDataModel> list = selectedItems;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((PageDataModel) it2.next()).getPageIndex() + 1));
        }
        intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(TypeExtKt.mergeConsecutiveIntegers(intArray), ", ", null, null, 0, null, null, 62, null);
        tintTextView.setText(joinToString$default);
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding3 = this.binding;
        if (fragmentExportSpecifiedPagesBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentExportSpecifiedPagesBinding2 = fragmentExportSpecifiedPagesBinding3;
        }
        fragmentExportSpecifiedPagesBinding2.finish.setEnabled(!getSelectedItems().isEmpty());
    }

    public final List<PageDataModel> getSelectedItems() {
        List<PageDataModel> emptyList;
        List<PageDataModel> selectedItems;
        Fragment findFragmentByTag = getChildFragmentManager().findFragmentByTag(m47965A0());
        DocOverviewFragment docOverviewFragment = findFragmentByTag instanceof DocOverviewFragment ? (DocOverviewFragment) findFragmentByTag : null;
        if (docOverviewFragment != null && (selectedItems = docOverviewFragment.getSelectedItems()) != null) {
            return selectedItems;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAllDataSelectedEvent(@NotNull AllDataSelectedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47969K0();
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding = this.binding;
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding2 = null;
        if (fragmentExportSpecifiedPagesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding = null;
        }
        fragmentExportSpecifiedPagesBinding.selectAll.setChecked(event.getSelected());
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding3 = this.binding;
        if (fragmentExportSpecifiedPagesBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentExportSpecifiedPagesBinding2 = fragmentExportSpecifiedPagesBinding3;
        }
        fragmentExportSpecifiedPagesBinding2.selectAll.setTag(Boolean.valueOf(event.getSelected()));
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063279, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentExportSpecifiedPagesBinding inflate = FragmentExportSpecifiedPagesBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        m47966B0();
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding = this.binding;
        if (fragmentExportSpecifiedPagesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding = null;
        }
        View root = fragmentExportSpecifiedPagesBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.unregister(editorBundle, this);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setLayout(-1, -1);
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.register(editorBundle, this);
        }
        m47969K0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        FragmentExportSpecifiedPagesBinding fragmentExportSpecifiedPagesBinding = this.binding;
        if (fragmentExportSpecifiedPagesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentExportSpecifiedPagesBinding = null;
        }
        fragmentExportSpecifiedPagesBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.k2g
            @Override // java.lang.Runnable
            public final void run() {
                ExportSpecifiedPagesDialog.m47956H0(ExportSpecifiedPagesDialog.this);
            }
        });
    }

    @NotNull
    public final ExportSpecifiedPagesDialog setDocManagerBundle(@NotNull EditorBundle docManagerHandler) {
        Intrinsics.checkNotNullParameter(docManagerHandler, "docManagerHandler");
        this.docManagerBundle = docManagerHandler;
        return this;
    }

    @NotNull
    public final ExportSpecifiedPagesDialog setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        return this;
    }

    /* renamed from: y0 */
    public final void m47970y0(EditorBundle editorBundle, EditorBundle docManagerBundle, List<PageDataModel> selectedItems) {
        List mutableList;
        int collectionSizeOrDefault;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) selectedItems);
        if (mutableList.isEmpty()) {
            dismissAllowingStateLoss();
            return;
        }
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog$export$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((PageDataModel) t).getPageIndex()), Integer.valueOf(((PageDataModel) t2).getPageIndex()));
                    return compareValues;
                }
            });
        }
        List list = mutableList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageDataModel) it2.next()).getPageId());
        }
        Activity activity = editorBundle.getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        final LoadingDialog createLoadingDialog = activity != null ? ContextExtKt.createLoadingDialog(activity) : null;
        Observable.just(this).doOnNext(new C12307a(createLoadingDialog)).flatMap(new C12308b(editorBundle)).doOnNext(new C12309c(createLoadingDialog)).doOnNext(new C12310d(docManagerBundle, arrayList)).doOnError(new C12311e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.l2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportSpecifiedPagesDialog.m47964z0(LoadingDialog.this);
            }
        }).subscribe();
    }
}
