package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.ScreenUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.material.C5139R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.page.OpenPdfFileForPagesAction;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.data.ReaderPageDataModel;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;
import com.onyx.galaxy.note.databinding.PopupSelectFilePagesBinding;
import com.onyx.galaxy.note.editor.view.adapter.ReaderPageThumbnailListAdapter;
import com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\b&\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0014¢\u0006\u0004\b,\u0010-J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\n\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010+\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;", "Lcom/google/android/material/bottomsheet/BottomSheetDialog;", "", Constants.ELEMNAME_IMPORT_STRING, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "y", "w", "G", "F", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "v", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "x", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "fileEntry", "", "I", "maxCount", "Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;", "z", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;", "J", "Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;", "getPageListAdapter", "()Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;", "setPageListAdapter", "(Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;)V", "pageListAdapter", "", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getDeleteFileAfterSelected", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setDeleteFileAfterSelected", "(Z)V", "deleteFileAfterSelected", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectFilePagesPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,156:1\n256#2,2:157\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup\n*L\n90#1:157,2\n*E\n"})
/* loaded from: classes9.dex */
public abstract class SelectFilePagesPopup extends BottomSheetDialog {

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public ReaderPageThumbnailListAdapter pageListAdapter;

    /* renamed from: O, reason: from kotlin metadata */
    public boolean deleteFileAfterSelected;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final DocumentFileEntry fileEntry;

    /* renamed from: y, reason: from kotlin metadata */
    public final int maxCount;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12453a<T, R> implements Function {
        public C12453a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectFilePagesPopup apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectFilePagesPopup.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12454b<T> implements Predicate {

        /* renamed from: e */
        public static final C12454b<T> f60526e = new C12454b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull OpenPdfFileForPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getTotalPage() > 0;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12455c<T> implements Consumer {
        public C12455c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenPdfFileForPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectFilePagesPopup.this.m49412v().fileName.setText(FilenameUtils.getBaseName(it2.getFilePath()));
            SelectFilePagesPopup.this.getPageListAdapter().setPath(it2.getFilePath());
            SelectFilePagesPopup.this.getPageListAdapter().setPageCount(it2.getTotalPage());
            SelectFilePagesPopup.this.m49412v().fileSelectAll.setEnabled(true);
        }
    }

    public /* synthetic */ SelectFilePagesPopup(EditorBundle editorBundle, Context context, DocumentFileEntry documentFileEntry, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, documentFileEntry, (i2 & 8) != 0 ? 0 : i);
    }

    /* renamed from: A */
    public static final void m49397A(SelectFilePagesPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mo72421import();
    }

    /* renamed from: B */
    public static final void m49398B(SelectFilePagesPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.pageListAdapter.toggleSelectAll();
    }

    /* renamed from: D */
    public static final void m49399D(final SelectFilePagesPopup this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49412v().swipeContainer.getRecycleView().setAdapter(null);
        Observable<R> map = DocCommonActionsKt.ensureCloseDoc(this$0.docManagerBundle).map(new C12453a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable observeOn = RxjavaKt.onErrorReturnItemWithLog(map, this$0).observeOn(EditorBundleKt.ioSequenceScheduler(this$0.docManagerBundle));
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        RxjavaKt.doOnNextIf(observeOn, new Function1<SelectFilePagesPopup, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup$initView$2$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SelectFilePagesPopup it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SelectFilePagesPopup.this.getDeleteFileAfterSelected());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.udm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SelectFilePagesPopup.m49400E(SelectFilePagesPopup.this, (SelectFilePagesPopup) obj);
            }
        }).subscribe();
    }

    /* renamed from: E */
    public static final void m49400E(SelectFilePagesPopup this$0, SelectFilePagesPopup it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        FileUtils.INSTANCE.deleteFile(this$0.pageListAdapter.getPath());
    }

    /* renamed from: x */
    public static final void m49407x(SelectFilePagesPopup this$0, BaseQuickAdapter it2, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        ReaderPageDataModel readerPageDataModel = (ReaderPageDataModel) it2.getItem(i);
        if (readerPageDataModel == null) {
            return;
        }
        if (this$0.maxCount == 0 || this$0.pageListAdapter.getSelectedItems().size() < this$0.maxCount || this$0.pageListAdapter.contains(readerPageDataModel)) {
            this$0.pageListAdapter.onItemClick(readerPageDataModel);
            this$0.m49411G();
        } else {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.select_max_count_hint), Arrays.copyOf(new Object[]{Integer.valueOf(this$0.maxCount)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            ToastUtils.showLong(format, new Object[0]);
        }
    }

    /* renamed from: z */
    public static final void m49408z(SelectFilePagesPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: C */
    public final void m49409C() {
        setContentView(m49412v().getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        m49414y();
        m49413w();
        m49410F();
        Object parent = m49412v().getRoot().getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior from = BottomSheetBehavior.from((View) parent);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        from.setPeekHeight(ScreenUtils.getScreenHeight());
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
            FrameLayout frameLayout = (FrameLayout) window.getDecorView().findViewById(C5139R.id.design_bottom_sheet);
            if (frameLayout != null) {
                Intrinsics.checkNotNull(frameLayout);
                frameLayout.getLayoutParams().width = -1;
                frameLayout.getLayoutParams().height = -1;
            }
            getBehavior().setState(3);
        }
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.wdm
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SelectFilePagesPopup.m49399D(SelectFilePagesPopup.this, dialogInterface);
            }
        });
    }

    /* renamed from: F */
    public final void m49410F() {
        new OpenPdfFileForPagesAction(this.docManagerBundle, this.fileEntry).build().filter(C12454b.f60526e).doOnNext(new C12455c()).subscribe();
    }

    /* renamed from: G */
    public final void m49411G() {
        m49412v().importAction.setEnabled(!this.pageListAdapter.getSelectedItems().isEmpty());
    }

    public final boolean getDeleteFileAfterSelected() {
        return this.deleteFileAfterSelected;
    }

    @NotNull
    public final ReaderPageThumbnailListAdapter getPageListAdapter() {
        return this.pageListAdapter;
    }

    /* renamed from: import */
    public void mo72421import() {
    }

    public final void setDeleteFileAfterSelected(boolean z) {
        this.deleteFileAfterSelected = z;
    }

    public final void setPageListAdapter(@NotNull ReaderPageThumbnailListAdapter readerPageThumbnailListAdapter) {
        Intrinsics.checkNotNullParameter(readerPageThumbnailListAdapter, "<set-?>");
        this.pageListAdapter = readerPageThumbnailListAdapter;
    }

    /* renamed from: v */
    public final PopupSelectFilePagesBinding m49412v() {
        return (PopupSelectFilePagesBinding) this.binding.getValue();
    }

    /* renamed from: w */
    public final void m49413w() {
        this.pageListAdapter.setEditorBundle(this.docManagerBundle);
        ItemClickUtilsKt.setOnDebouncedItemClick(this.pageListAdapter, ResManager.INSTANCE.getLong(C10651R.integer.pages_preview_click_time_interval), new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.vdm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectFilePagesPopup.m49407x(SelectFilePagesPopup.this, baseQuickAdapter, view, i);
            }
        });
        this.pageListAdapter.setSelectItemChangeCallback(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup$initListView$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SelectFilePagesPopup.this.m49412v().fileSelectAll.setChecked(z);
                SelectFilePagesPopup.this.m49411G();
            }
        });
        if (this.maxCount <= 0) {
            m49412v().swipeContainer.setOnSwipeStateChangeListener(new SwipeRecycleViewContainer.OnSwipeStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup$initListView$3
                @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
                public void onFinished() {
                    SelectFilePagesPopup.this.getPageListAdapter().swipeFinish();
                }

                @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
                public void onStart() {
                    SelectFilePagesPopup.this.getPageListAdapter().swipeStart();
                }

                @Override // com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer.OnSwipeStateChangeListener
                public void onSwiped(int startIndex, int endStartIndex) {
                    SelectFilePagesPopup.this.getPageListAdapter().toggleSwipe(Math.min(startIndex, endStartIndex), Math.max(startIndex, endStartIndex));
                }
            });
        }
        m49412v().swipeContainer.getRecycleView().setAdapter(this.pageListAdapter);
    }

    /* renamed from: y */
    public final void m49414y() {
        m49412v().btnBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xdm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFilePagesPopup.m49408z(SelectFilePagesPopup.this, view);
            }
        });
        m49412v().importAction.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ydm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFilePagesPopup.m49397A(SelectFilePagesPopup.this, view);
            }
        });
        m49412v().fileSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zdm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFilePagesPopup.m49398B(SelectFilePagesPopup.this, view);
            }
        });
        TintCheckBox fileSelectAll = m49412v().fileSelectAll;
        Intrinsics.checkNotNullExpressionValue(fileSelectAll, "fileSelectAll");
        fileSelectAll.setVisibility(this.maxCount <= 0 ? 0 : 8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFilePagesPopup(@NotNull EditorBundle docManagerBundle, @NotNull Context context, @NotNull DocumentFileEntry fileEntry, int i) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileEntry, "fileEntry");
        this.docManagerBundle = docManagerBundle;
        this.context = context;
        this.fileEntry = fileEntry;
        this.maxCount = i;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupSelectFilePagesBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupSelectFilePagesBinding invoke() {
                Context context2;
                context2 = SelectFilePagesPopup.this.context;
                return PopupSelectFilePagesBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.pageListAdapter = new ReaderPageThumbnailListAdapter();
        this.deleteFileAfterSelected = true;
        m49409C();
    }
}
