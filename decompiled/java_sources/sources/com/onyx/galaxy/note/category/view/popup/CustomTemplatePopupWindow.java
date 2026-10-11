package com.onyx.galaxy.note.category.view.popup;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.FilePickerBuilder;
import com.onyx.android.sdk.matisse.Matisse;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.TemplateDisplayType;
import com.onyx.galaxy.note.category.view.popup.CustomTemplatePopupWindow;
import com.onyx.galaxy.note.common.extension.MatisseKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupCustomCoverBinding;
import com.onyx.galaxy.note.editor.action.importfiles.ImportCustomCoverAction;
import com.onyx.galaxy.note.editor.action.importfiles.ImportCustomPaperAction;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.utils.FilePickerExtKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 +2\u00020\u0001:\u0001+BC\u0012\u0006\u0010\u001a\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u0010\u0012\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010 \u0012\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010 ¢\u0006\u0004\b)\u0010*J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J$\u0010\r\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J$\u0010\u000f\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0016\u0010\u0015\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\nH\u0002R\u0017\u0010\u001a\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001eR\u001c\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001c\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\"R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "w", "u", "s", C4921e.f26528e, "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "activityReference", "", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "files", "p", "z", "q", "", "requestCode", "r", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "resultList", "A", "Landroidx/fragment/app/Fragment;", "Landroidx/fragment/app/Fragment;", "getFragment", "()Landroidx/fragment/app/Fragment;", "fragment", "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "templateDisplayType", "I", "type", "Lkotlin/Function0;", "t", "Lkotlin/jvm/functions/Function0;", "pickPic", "pickFile", "Lcom/onyx/galaxy/note/databinding/PopupCustomCoverBinding;", "v", "Lcom/onyx/galaxy/note/databinding/PopupCustomCoverBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CustomTemplatePopupWindow extends BasePopupWindow {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Fragment fragment;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final TemplateDisplayType templateDisplayType;

    /* renamed from: s, reason: from kotlin metadata */
    public final int type;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public final Function0<Unit> pickPic;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public final Function0<Unit> pickFile;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final PopupCustomCoverBinding binding;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow$Companion;", "", "()V", "getTriggerFrom", "", "type", "templateDisplayType", "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getTriggerFrom(int type, @NotNull TemplateDisplayType templateDisplayType) {
            Intrinsics.checkNotNullParameter(templateDisplayType, "templateDisplayType");
            Pair m61535to = TuplesKt.m61535to(Integer.valueOf(type), templateDisplayType);
            TemplateDisplayType templateDisplayType2 = TemplateDisplayType.COVER;
            if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(0, templateDisplayType2))) {
                return 3003;
            }
            TemplateDisplayType templateDisplayType3 = TemplateDisplayType.PAPER;
            if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(5, templateDisplayType3)) ? true : Intrinsics.areEqual(m61535to, TuplesKt.m61535to(0, templateDisplayType3))) {
                return 3002;
            }
            if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(2, templateDisplayType2)) ? true : Intrinsics.areEqual(m61535to, TuplesKt.m61535to(2, templateDisplayType3))) {
                return 3005;
            }
            if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(1, templateDisplayType3))) {
                return 3006;
            }
            if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(1, templateDisplayType2))) {
                return 3007;
            }
            if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(3, templateDisplayType3))) {
                return 3008;
            }
            return Intrinsics.areEqual(m61535to, TuplesKt.m61535to(3, templateDisplayType2)) ? 3009 : 3003;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TemplateDisplayType.values().length];
            try {
                iArr[TemplateDisplayType.COVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TemplateDisplayType.PAPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ CustomTemplatePopupWindow(Fragment fragment, TemplateDisplayType templateDisplayType, int i, Function0 function0, Function0 function02, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, templateDisplayType, i, (i2 & 8) != 0 ? null : function0, (i2 & 16) != 0 ? null : function02);
    }

    /* renamed from: t */
    public static final void m44690t(CustomTemplatePopupWindow this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i = WhenMappings.$EnumSwitchMapping$0[this$0.templateDisplayType.ordinal()];
        if (i == 1) {
            this$0.m44695o();
        } else if (i == 2) {
            this$0.m44702z();
        }
        Function0<Unit> function0 = this$0.pickFile;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* renamed from: v */
    public static final void m44691v(CustomTemplatePopupWindow this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i = WhenMappings.$EnumSwitchMapping$0[this$0.templateDisplayType.ordinal()];
        if (i == 1) {
            this$0.m44698r(1002);
        } else if (i == 2) {
            this$0.m44698r(1001);
        }
        Function0<Unit> function0 = this$0.pickPic;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* renamed from: x */
    public static final void m44692x(CustomTemplatePopupWindow this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44699s();
        this$0.dismiss();
    }

    /* renamed from: y */
    public static final void m44693y(CustomTemplatePopupWindow this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44700u();
        this$0.dismiss();
    }

    /* renamed from: A */
    public final void m44694A(List<DocumentFileEntry> resultList) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(INSTANCE.getTriggerFrom(this.type, this.templateDisplayType))));
        mutableMapOf.put(OnyxStatisticConstant.KEY_DOCUMENT_AMOUNT, Integer.valueOf(resultList.size()));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_PICK_FILE_FINISHED, mutableMapOf);
    }

    @NotNull
    public final Fragment getFragment() {
        return this.fragment;
    }

    /* renamed from: o */
    public final void m44695o() {
        FilePickerExtKt.setCommonConfig(FilePickerBuilder.INSTANCE.getInstance()).setTitle(C10651R.string.import_from_file).onlyPdf().multiEnable(false).setMaxSelectCount(ResManager.INSTANCE.getInteger(C10651R.integer.file_picker_max_count)).pickFile(this.fragment, false, 2002, (Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit>) new Function2<ArrayList<DocumentBean>, WeakReference<Activity>, Unit>() { // from class: com.onyx.galaxy.note.category.view.popup.CustomTemplatePopupWindow$coverFilePicker$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ArrayList<DocumentBean> arrayList, WeakReference<Activity> weakReference) {
                invoke2(arrayList, weakReference);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ArrayList<DocumentBean> files, @NotNull WeakReference<Activity> activityReference) {
                Intrinsics.checkNotNullParameter(files, "files");
                Intrinsics.checkNotNullParameter(activityReference, "activityReference");
                CustomTemplatePopupWindow.this.m44696p(activityReference, files);
            }
        });
    }

    /* renamed from: p */
    public final void m44696p(WeakReference<Activity> activityReference, List<DocumentBean> files) {
        OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new ImportCustomCoverAction(activityReference, files, this.type, this.templateDisplayType).build(), null, null, 3, null);
    }

    /* renamed from: q */
    public final void m44697q(WeakReference<Activity> activityReference, List<DocumentBean> files) {
        OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new ImportCustomPaperAction(activityReference, files, this.type, this.templateDisplayType).build(), null, null, 3, null);
    }

    /* renamed from: r */
    public final void m44698r(int requestCode) {
        Matisse from = Matisse.from(this.fragment);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        MatisseKt.buildSelectionCreator(from).forResult(requestCode);
    }

    /* renamed from: s */
    public final void m44699s() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestStoragePermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_FILE_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_FILE_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.woe
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CustomTemplatePopupWindow.m44690t(CustomTemplatePopupWindow.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: u */
    public final void m44700u() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestImagePermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.xoe
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CustomTemplatePopupWindow.m44691v(CustomTemplatePopupWindow.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: w */
    public final void m44701w() {
        this.binding.tvImportFromFile.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yoe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomTemplatePopupWindow.m44692x(CustomTemplatePopupWindow.this, view);
            }
        });
        this.binding.tvImportFromGallery.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zoe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomTemplatePopupWindow.m44693y(CustomTemplatePopupWindow.this, view);
            }
        });
    }

    /* renamed from: z */
    public final void m44702z() {
        FilePickerExtKt.setCommonConfig(FilePickerBuilder.INSTANCE.getInstance()).setTitle(C10651R.string.import_from_file).onlyPdf().multiEnable(false).setMaxSelectCount(ResManager.INSTANCE.getInteger(C10651R.integer.file_picker_max_count)).pickFile(this.fragment, false, 2003, (Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit>) new Function2<ArrayList<DocumentBean>, WeakReference<Activity>, Unit>() { // from class: com.onyx.galaxy.note.category.view.popup.CustomTemplatePopupWindow$paperFilePicker$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ArrayList<DocumentBean> arrayList, WeakReference<Activity> weakReference) {
                invoke2(arrayList, weakReference);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ArrayList<DocumentBean> files, @NotNull WeakReference<Activity> activityReference) {
                Intrinsics.checkNotNullParameter(files, "files");
                Intrinsics.checkNotNullParameter(activityReference, "activityReference");
                CustomTemplatePopupWindow.this.m44697q(activityReference, files);
            }
        });
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CustomTemplatePopupWindow(@org.jetbrains.annotations.NotNull androidx.fragment.app.Fragment r3, @org.jetbrains.annotations.NotNull com.onyx.galaxy.note.category.data.TemplateDisplayType r4, int r5, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r6, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r7) {
        /*
            r2 = this;
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "templateDisplayType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            android.content.Context r0 = r3.requireContext()
            java.lang.String r1 = "requireContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            com.onyx.galaxy.note.editor.view.toolbar.DockType r1 = com.onyx.galaxy.note.editor.view.toolbar.DockType.RIGHT
            r2.<init>(r0, r1)
            r2.fragment = r3
            r2.templateDisplayType = r4
            r2.type = r5
            r2.pickPic = r6
            r2.pickFile = r7
            android.content.Context r3 = r2.getContext()
            android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
            com.onyx.galaxy.note.databinding.PopupCustomCoverBinding r3 = com.onyx.galaxy.note.databinding.PopupCustomCoverBinding.inflate(r3)
            java.lang.String r4 = "inflate(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r2.binding = r3
            android.view.View r3 = r3.getRoot()
            java.lang.String r4 = "getRoot(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r2.setContentView(r3)
            r2.m44701w()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.popup.CustomTemplatePopupWindow.<init>(androidx.fragment.app.Fragment, com.onyx.galaxy.note.category.data.TemplateDisplayType, int, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0):void");
    }
}
