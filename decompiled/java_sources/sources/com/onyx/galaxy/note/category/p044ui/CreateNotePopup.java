package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.action.CreateQuicklyNoteAction;
import com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateFragmentArgs;
import com.onyx.galaxy.note.category.event.NCreateCameraEvent;
import com.onyx.galaxy.note.category.event.NCreateFileImportEvent;
import com.onyx.galaxy.note.category.event.NCreateNoteFolderEvent;
import com.onyx.galaxy.note.category.event.NCreatePictureImportEvent;
import com.onyx.galaxy.note.category.event.NCreateScannerEvent;
import com.onyx.galaxy.note.category.event.NCreateScribbleNoteEvent;
import com.onyx.galaxy.note.category.p044ui.CreateNotePopup;
import com.onyx.galaxy.note.category.viewmodel.NoteQuotaViewModel;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupCreateNoteBinding;
import com.onyx.galaxy.note.editor.view.PalmCollectionLinearLayout;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0019\u001a\u00020\u0017\u0012\u0006\u0010/\u001a\u00020.\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\b\b\u0002\u00101\u001a\u000200\u0012\u0006\u0010\"\u001a\u00020 ¢\u0006\u0004\b2\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u001e\u0010\u000b\u001a\u00020\u0002*\u00020\u00072\u0010\u0010\n\u001a\f\u0012\u0004\u0012\u00020\u00020\bj\u0002`\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0002J$\u0010\u0014\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u000fH\u0002R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0018R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010!R\u0017\u0010(\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b*\u0010,¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "x", "u", "s", "q", "Landroid/view/View;", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "onClickHandler", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "y", "", "folderId", CouchFieldKey.KEY_TAG_ID, "", "templateType", "A", "eventId", "z", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", "r", Constants.STRING_SIG, "", "t", Constants.HASIDCALL_INDEX_SIG, "showCreateFolder", "Landroidx/fragment/app/FragmentManager;", "Landroidx/fragment/app/FragmentManager;", "parentFragmentManager", "Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;", "v", "Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "w", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "noteQuotaViewModel", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroidx/fragment/app/FragmentManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateNotePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateNotePopup.kt\ncom/onyx/galaxy/note/category/ui/CreateNotePopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,213:1\n256#2,2:214\n*S KotlinDebug\n*F\n+ 1 CreateNotePopup.kt\ncom/onyx/galaxy/note/category/ui/CreateNotePopup\n*L\n71#1:214,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CreateNotePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public final String folderId;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public final String tagId;

    /* renamed from: t, reason: from kotlin metadata */
    public final boolean showCreateFolder;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final FragmentManager parentFragmentManager;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final PopupCreateNoteBinding binding;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteQuotaViewModel;

    public /* synthetic */ CreateNotePopup(EditorBundle editorBundle, Context context, String str, String str2, boolean z, DockType dockType, FragmentManager fragmentManager, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, str, str2, z, (i & 32) != 0 ? DockType.BOTTOM : dockType, fragmentManager);
    }

    /* renamed from: p */
    public static final void m43048p(CreateNotePopup this$0, View this_checkAndClick, Function0 onClickHandler, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_checkAndClick, "$this_checkAndClick");
        Intrinsics.checkNotNullParameter(onClickHandler, "$onClickHandler");
        this$0.dismiss();
        NoteQuotaViewModel m43057w = this$0.m43057w();
        Context context = this_checkAndClick.getRootView().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        if (m43057w.checkGuideRegister(context)) {
            return;
        }
        NoteQuotaViewModel m43057w2 = this$0.m43057w();
        View rootView = this_checkAndClick.getRootView();
        Intrinsics.checkNotNullExpressionValue(rootView, "getRootView(...)");
        if (m43057w2.checkNoteQuotaUsedOut(rootView)) {
            onClickHandler.invoke();
        }
    }

    /* renamed from: r */
    public static final void m43049r(boolean z) {
        DocCollectionBundle.INSTANCE.postEvent(new NCreateCameraEvent());
    }

    /* renamed from: t */
    public static final void m43050t(boolean z) {
        DocCollectionBundle.INSTANCE.postEvent(new NCreateFileImportEvent(3001));
    }

    /* renamed from: v */
    public static final void m43051v(boolean z) {
        DocCollectionBundle.INSTANCE.postEvent(new NCreatePictureImportEvent());
    }

    /* renamed from: A */
    public final void m43052A(String folderId, String tagId, int templateType) {
        List<String> listOfNotNull;
        TemplateFragmentArgs templateFragmentArgs = new TemplateFragmentArgs();
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        templateFragmentArgs.setCoverTemplateJsonBean((TemplateJsonBean) MMKVNote.getCoverOption$default(mMKVNote, null, 1, null).get());
        templateFragmentArgs.setPaperTemplateJsonBean((TemplateJsonBean) MMKVNote.getTemplateOption$default(mMKVNote, null, templateType, 1, null).get());
        templateFragmentArgs.setChangeContainsCover(NoteConfigManager.INSTANCE.getContainsCoverOption().get());
        templateFragmentArgs.setType(templateType == 1 ? 5 : 0);
        templateFragmentArgs.setFolderId(folderId);
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(tagId);
        templateFragmentArgs.setTagIdList(listOfNotNull);
        NoteTemplateFragment.INSTANCE.newInstance(templateFragmentArgs).show(this.parentFragmentManager, Reflection.getOrCreateKotlinClass(NoteTemplateFragment.class).getSimpleName());
    }

    @NotNull
    public final PopupCreateNoteBinding getBinding() {
        return this.binding;
    }

    /* renamed from: o */
    public final void m43053o(final View view, final Function0<Unit> function0) {
        ViewKt.click$default(view, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nge
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CreateNotePopup.m43048p(CreateNotePopup.this, view, function0, view2);
            }
        }, 1, null);
    }

    /* renamed from: q */
    public final void m43054q() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestCameraPermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_CAMERA_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_CAMERA_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.oge
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CreateNotePopup.m43049r(((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: s */
    public final void m43055s() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestStoragePermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_FILE_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_FILE_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.mge
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CreateNotePopup.m43050t(((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: u */
    public final void m43056u() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestImagePermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.pge
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CreateNotePopup.m43051v(((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: w */
    public final NoteQuotaViewModel m43057w() {
        return (NoteQuotaViewModel) this.noteQuotaViewModel.getValue();
    }

    /* renamed from: x */
    public final void m43058x() {
        PalmCollectionLinearLayout llCreateNote = this.binding.llCreateNote;
        Intrinsics.checkNotNullExpressionValue(llCreateNote, "llCreateNote");
        m43053o(llCreateNote, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                String str;
                String str2;
                CreateNotePopup.this.m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_CREATE_NOTE_CLICK);
                CreateNotePopup createNotePopup = CreateNotePopup.this;
                str = createNotePopup.folderId;
                str2 = CreateNotePopup.this.tagId;
                createNotePopup.m43052A(str, str2, 0);
            }
        });
        PalmCollectionLinearLayout llCreateNoBonds = this.binding.llCreateNoBonds;
        Intrinsics.checkNotNullExpressionValue(llCreateNoBonds, "llCreateNoBonds");
        m43053o(llCreateNoBonds, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                String str;
                String str2;
                CreateNotePopup.this.m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_CREATE_UNBOUND_NOTE_CLICK);
                CreateNotePopup createNotePopup = CreateNotePopup.this;
                str = createNotePopup.folderId;
                str2 = CreateNotePopup.this.tagId;
                createNotePopup.m43052A(str, str2, 1);
            }
        });
        PalmCollectionLinearLayout llCreateFileImport = this.binding.llCreateFileImport;
        Intrinsics.checkNotNullExpressionValue(llCreateFileImport, "llCreateFileImport");
        m43053o(llCreateFileImport, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CreateNotePopup.this.m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_IMPORT_CLICK);
                CreateNotePopup.this.m43055s();
            }
        });
        PalmCollectionLinearLayout llCreatePicImport = this.binding.llCreatePicImport;
        Intrinsics.checkNotNullExpressionValue(llCreatePicImport, "llCreatePicImport");
        m43053o(llCreatePicImport, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CreateNotePopup.this.m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_IMPORT_PIC_CLICK);
                CreateNotePopup.this.m43056u();
            }
        });
        PalmCollectionLinearLayout llCreateCamera = this.binding.llCreateCamera;
        Intrinsics.checkNotNullExpressionValue(llCreateCamera, "llCreateCamera");
        m43053o(llCreateCamera, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$5
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CreateNotePopup.this.m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_IMPORT_TAKE_PHONE_CLICK);
                CreateNotePopup.this.m43054q();
            }
        });
        TintLinearLayout llScanner = this.binding.llScanner;
        Intrinsics.checkNotNullExpressionValue(llScanner, "llScanner");
        m43053o(llScanner, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$6
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CreateNotePopup.this.m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_SCAN_CLICK);
                DocCollectionBundle.INSTANCE.postEvent(new NCreateScannerEvent());
            }
        });
        PalmCollectionLinearLayout llQuickly = this.binding.llQuickly;
        Intrinsics.checkNotNullExpressionValue(llQuickly, "llQuickly");
        m43053o(llQuickly, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$7

            /* renamed from: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$7$a */
            /* loaded from: classes9.dex */
            public static final class C11242a<T> implements Consumer {

                /* renamed from: e */
                public static final C11242a<T> f54564e = new C11242a<>();

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull NoteCreateInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    DocCollectionBundle.INSTANCE.postEvent(new NCreateScribbleNoteEvent(it2, NoteCreateFrom.QUICK_CREATE_NOTE));
                }
            }

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                String str;
                String str2;
                CreateNotePopup.this.m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_QUICK_NOTE_CLICK);
                str = CreateNotePopup.this.folderId;
                str2 = CreateNotePopup.this.tagId;
                new CreateQuicklyNoteAction(str, str2).build().doOnNext(C11242a.f54564e).subscribe();
            }
        });
        TintImageView quicklySettings = this.binding.quicklySettings;
        Intrinsics.checkNotNullExpressionValue(quicklySettings, "quicklySettings");
        m43053o(quicklySettings, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$8

            /* renamed from: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$8$a */
            /* loaded from: classes9.dex */
            public static final class C11243a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ CreateNotePopup f54565e;

                public C11243a(CreateNotePopup createNotePopup) {
                    this.f54565e = createNotePopup;
                }

                /* renamed from: a */
                public final void m43062a(@NotNull NoteCreateInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f54565e.m43059y(it2);
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    m43062a((NoteCreateInfo) obj);
                    return Unit.INSTANCE;
                }
            }

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CreateNotePopup.this.m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_QUICK_NOTE_SETTINGS_CLICK);
                new LoadQuicklyCreateInfoAction().build().map(new C11243a(CreateNotePopup.this)).subscribe();
            }
        });
        PalmCollectionLinearLayout llCreateFolder = this.binding.llCreateFolder;
        Intrinsics.checkNotNullExpressionValue(llCreateFolder, "llCreateFolder");
        m43053o(llCreateFolder, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$initListener$9
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                DocCollectionBundle.INSTANCE.postEvent(new NCreateNoteFolderEvent());
            }
        });
        m43060z(OnyxStatisticConstant.ID_CREATE_NOTE_POPUP_VIEW);
    }

    /* renamed from: y */
    public final void m43059y(NoteCreateInfo noteCreateInfo) {
        TemplateFragmentArgs templateFragmentArgs = new TemplateFragmentArgs();
        templateFragmentArgs.setCoverTemplateJsonBean(noteCreateInfo.getCoverJsonBean());
        templateFragmentArgs.setPaperTemplateJsonBean(noteCreateInfo.firstPaperJsonBean());
        templateFragmentArgs.setChangeContainsCover(noteCreateInfo.isContainsCover());
        templateFragmentArgs.setType(3);
        NoteTemplateFragment.INSTANCE.newInstance(templateFragmentArgs).show(this.parentFragmentManager, Reflection.getOrCreateKotlinClass(NoteTemplateFragment.class).getSimpleName());
    }

    /* renamed from: z */
    public final void m43060z(String eventId) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(NoteTreeBundle.INSTANCE.activeFilterInfo().getType())));
        StatisticsBundle.INSTANCE.reportEvent(eventId, mutableMapOf);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateNotePopup(@NotNull EditorBundle docManagerBundle, @NotNull final Context context, @Nullable String str, @Nullable String str2, boolean z, @NotNull DockType dockType, @NotNull FragmentManager parentFragmentManager) {
        super(context, dockType);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        Intrinsics.checkNotNullParameter(parentFragmentManager, "parentFragmentManager");
        this.docManagerBundle = docManagerBundle;
        this.folderId = str;
        this.tagId = str2;
        this.showCreateFolder = z;
        this.parentFragmentManager = parentFragmentManager;
        PopupCreateNoteBinding inflate = PopupCreateNoteBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NoteQuotaViewModel>() { // from class: com.onyx.galaxy.note.category.ui.CreateNotePopup$noteQuotaViewModel$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteQuotaViewModel invoke() {
                Context context2 = context;
                Intrinsics.checkNotNull(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                return (NoteQuotaViewModel) FragmentActivityKt.getViewModel((FragmentActivity) context2, NoteQuotaViewModel.class);
            }
        });
        this.noteQuotaViewModel = lazy;
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        inflate.setQuotaModel(m43057w());
        PalmCollectionLinearLayout llCreateFolder = inflate.llCreateFolder;
        Intrinsics.checkNotNullExpressionValue(llCreateFolder, "llCreateFolder");
        llCreateFolder.setVisibility(z ? 0 : 8);
        m43058x();
    }
}
