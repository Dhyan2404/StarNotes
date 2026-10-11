package com.onyx.android.sdk.filepicker;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.blankj.utilcode.util.AppUtils;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.StringUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.filepicker.FilePickerActivity;
import com.onyx.android.sdk.filepicker.GetMultipleDocuments;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.imagepicker.databinding.ActivityFilePickerBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.p039ui.IFullScreenStyle;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.p039ui.PermissionDialog;
import com.onyx.android.sdk.theme.config.IUnSupportThemeRecreateActivity;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 Q2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001QB\u0007¢\u0006\u0004\bO\u0010PJ(\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\b\u0010\u000f\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\rH\u0002J\b\u0010\u0011\u001a\u00020\rH\u0002J\b\u0010\u0012\u001a\u00020\rH\u0002J\b\u0010\u0013\u001a\u00020\rH\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\rH\u0002J\b\u0010\u0017\u001a\u00020\rH\u0003J\b\u0010\u0018\u001a\u00020\rH\u0002J\b\u0010\u0019\u001a\u00020\rH\u0002J\b\u0010\u001a\u001a\u00020\rH\u0002J\b\u0010\u001b\u001a\u00020\rH\u0002J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0014H\u0002J\b\u0010\u001e\u001a\u00020\rH\u0002J\b\u0010\u001f\u001a\u00020\rH\u0002J\b\u0010 \u001a\u00020\rH\u0002J\b\u0010!\u001a\u00020\u0014H\u0002J\b\u0010\"\u001a\u00020\u0014H\u0002J\u0012\u0010%\u001a\u00020\r2\b\u0010$\u001a\u0004\u0018\u00010#H\u0014J\u0010\u0010(\u001a\u00020\r2\u0006\u0010'\u001a\u00020&H\u0007J\b\u0010)\u001a\u00020\rH\u0016J\b\u0010*\u001a\u00020\rH\u0014J\"\u00100\u001a\u00020\r2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020+2\b\u0010/\u001a\u0004\u0018\u00010.H\u0014R\u001b\u00106\u001a\u0002018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\"\u0010D\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bB\u0010CR&\u0010I\u001a\u0012\u0012\u0004\u0012\u00020\u00060Ej\b\u0012\u0004\u0012\u00020\u0006`F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020K\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010M¨\u0006R"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;", "Lcom/onyx/android/sdk/ui/IFullScreenStyle;", "Landroidx/activity/result/ActivityResultCallback;", "", "Landroid/net/Uri;", "callback", "Landroidx/activity/result/ActivityResultLauncher;", "", "", "G", "uris", "", "H", "J", "Y", "X", Constants.HASIDCALL_INDEX_SIG, "V", "", "W", "S", "M", "a0", "c0", "Q", "b0", "showEmpty", "d0", "R", "L", "K", "T", "U", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onSystemThemeChangedEvent", "resultBack", "onDestroy", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;", "w0", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;", "binding", "Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;", "viewModel", "Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;", "getViewModel", "()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;", "setViewModel", "(Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;)V", "Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;", "x0", "Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;", "filePickerAdapter", "y0", "Landroidx/activity/result/ActivityResultLauncher;", "filePickerLauncher", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "z0", "Ljava/util/ArrayList;", "fileSystemSelectUris", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "A0", "Ljava/lang/ref/WeakReference;", "activityReference", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFilePickerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePickerActivity.kt\ncom/onyx/android/sdk/filepicker/FilePickerActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,428:1\n1855#2:429\n766#2:430\n857#2,2:431\n1856#2:433\n766#2:462\n857#2,2:463\n1855#2,2:471\n262#3,2:434\n262#3,2:465\n262#3,2:467\n262#3,2:469\n262#3,2:473\n58#4,23:436\n93#4,3:459\n*S KotlinDebug\n*F\n+ 1 FilePickerActivity.kt\ncom/onyx/android/sdk/filepicker/FilePickerActivity\n*L\n104#1:429\n108#1:430\n108#1:431,2\n104#1:433\n337#1:462\n337#1:463,2\n354#1:471,2\n240#1:434,2\n347#1:465,2\n351#1:467,2\n352#1:469,2\n367#1:473,2\n285#1:436,23\n285#1:459,3\n*E\n"})
/* loaded from: classes17.dex */
public class FilePickerActivity extends AppCompatActivity implements IUnSupportThemeRecreateActivity, IFullScreenStyle {
    public static final int REQUEST_CODE_OPEN_DOCUMENT = 1001;

    /* renamed from: A0, reason: from kotlin metadata */
    @Nullable
    public WeakReference<Activity> activityReference;
    public FilePickerViewModel viewModel;

    /* renamed from: w0, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: x0, reason: from kotlin metadata */
    @NotNull
    public FilePickerAdapter filePickerAdapter;

    /* renamed from: y0, reason: from kotlin metadata */
    public ActivityResultLauncher<String[]> filePickerLauncher;

    /* renamed from: z0, reason: from kotlin metadata */
    @NotNull
    public ArrayList<Uri> fileSystemSelectUris;

    /* renamed from: com.onyx.android.sdk.filepicker.FilePickerActivity$a */
    /* loaded from: classes7.dex */
    public /* synthetic */ class C7389a implements ActivityResultCallback, FunctionAdapter {
        public C7389a() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            FilePickerActivity.this.m33048H(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, FilePickerActivity.this, FilePickerActivity.class, "handleFileSelect", "handleFileSelect(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.android.sdk.filepicker.FilePickerActivity$b */
    /* loaded from: classes7.dex */
    public static final class C7390b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f42123a;

        public C7390b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f42123a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f42123a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f42123a.invoke(obj);
        }
    }

    public FilePickerActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ActivityFilePickerBinding>() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ActivityFilePickerBinding invoke() {
                ActivityFilePickerBinding inflate = ActivityFilePickerBinding.inflate(LayoutInflater.from(FilePickerActivity.this));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.filePickerAdapter = new FilePickerAdapter();
        this.fileSystemSelectUris = new ArrayList<>();
    }

    /* renamed from: I */
    public static final void m33043I(CommonDialog loadingDialog, FilePickerActivity this$0) {
        Intrinsics.checkNotNullParameter(loadingDialog, "$loadingDialog");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        loadingDialog.dismiss();
        this$0.resultBack();
        PickerManager.INSTANCE.clearSelect();
    }

    /* renamed from: N */
    public static final void m33044N(FilePickerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    /* renamed from: O */
    public static final void m33045O(FilePickerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.resultBack();
    }

    /* renamed from: P */
    public static final void m33046P(FilePickerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m33063a0();
    }

    /* renamed from: G */
    public final ActivityResultLauncher<String[]> m33047G(ActivityResultCallback<List<Uri>> callback) {
        PickerManager pickerManager = PickerManager.INSTANCE;
        ActivityResultLauncher<String[]> registerForActivityResult = registerForActivityResult(new GetMultipleDocuments(pickerManager.isMultipleTypeSelect(), pickerManager.getDocumentSupportList()), callback);
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        return registerForActivityResult;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0055 A[SYNTHETIC] */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33048H(java.util.List<? extends android.net.Uri> r14) {
        /*
            r13 = this;
            java.util.ArrayList<android.net.Uri> r0 = r13.fileSystemSelectUris
            r1 = r14
            java.util.Collection r1 = (java.util.Collection) r1
            r0.addAll(r1)
            boolean r0 = r14.isEmpty()
            if (r0 == 0) goto Lf
            return
        Lf:
            com.onyx.android.sdk.filepicker.PickerManager r0 = com.onyx.android.sdk.filepicker.PickerManager.INSTANCE
            int r1 = r14.size()
            boolean r1 = r0.isSelectedValid(r1)
            if (r1 != 0) goto L1c
            return
        L1c:
            r0.clearSelect()
            java.lang.Iterable r14 = (java.lang.Iterable) r14
            java.util.Iterator r14 = r14.iterator()
        L25:
            boolean r0 = r14.hasNext()
            r1 = 1
            if (r0 == 0) goto La5
            java.lang.Object r0 = r14.next()
            r6 = r0
            android.net.Uri r6 = (android.net.Uri) r6
            android.content.Context r0 = r13.getApplicationContext()
            java.lang.String r2 = "getApplicationContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.String r5 = com.onyx.android.sdk.base.extension.UriKt.getFileName(r6, r0)
            java.lang.String r0 = com.onyx.android.sdk.base.extension.UriKt.getFileExtension(r6, r13)
            if (r0 == 0) goto L25
            com.onyx.android.sdk.filepicker.PickerManager r2 = com.onyx.android.sdk.filepicker.PickerManager.INSTANCE
            java.util.ArrayList r2 = r2.getSupportExtensions()
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r2 = r2.iterator()
        L55:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L78
            java.lang.Object r4 = r2.next()
            r7 = r4
            java.lang.String r7 = (java.lang.String) r7
            boolean r8 = kotlin.text.StringsKt.contains(r7, r0, r1)
            if (r8 != 0) goto L71
            boolean r7 = kotlin.text.StringsKt.endsWith(r5, r7, r1)
            if (r7 == 0) goto L6f
            goto L71
        L6f:
            r7 = 0
            goto L72
        L71:
            r7 = r1
        L72:
            if (r7 == 0) goto L55
            r3.add(r4)
            goto L55
        L78:
            java.lang.Object r0 = kotlin.collections.CollectionsKt.firstOrNull(r3)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L25
            com.onyx.android.sdk.filepicker.PickerManager r0 = com.onyx.android.sdk.filepicker.PickerManager.INSTANCE
            com.onyx.android.sdk.filepicker.DocumentBean r1 = new com.onyx.android.sdk.filepicker.DocumentBean
            int r2 = r6.hashCode()
            long r3 = (long) r2
            com.onyx.android.sdk.base.utils.UriUtils r2 = com.onyx.android.sdk.base.utils.UriUtils.INSTANCE
            java.lang.String r7 = r2.getMimeType(r6)
            java.lang.String r8 = ""
            long r9 = com.onyx.android.sdk.base.extension.UriKt.getFileSize(r6, r13)
            java.lang.String r9 = java.lang.String.valueOf(r9)
            r10 = 0
            r11 = 64
            r12 = 0
            r2 = r1
            r2.<init>(r3, r5, r6, r7, r8, r9, r10, r11, r12)
            r0.selectChange(r1)
            goto L25
        La5:
            com.onyx.android.sdk.filepicker.PickerManager r14 = com.onyx.android.sdk.filepicker.PickerManager.INSTANCE
            java.util.ArrayList r0 = r14.getSelectFile()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lc0
            int r14 = com.onyx.android.sdk.imagepicker.C7453R.string.un_support_file_type
            com.blankj.utilcode.util.ToastUtils.showLong(r14)
            boolean r14 = r13.m33056T()
            if (r14 != 0) goto Lbf
            r13.resultBack()
        Lbf:
            return
        Lc0:
            com.onyx.android.sdk.ui.CommonDialog$Builder r0 = new com.onyx.android.sdk.ui.CommonDialog$Builder
            r0.<init>(r13)
            com.onyx.android.sdk.ui.CommonDialog$Builder r0 = r0.setDialogType(r1)
            r1 = 0
            com.onyx.android.sdk.ui.CommonDialog$Builder r0 = r0.setDimAmount(r1)
            com.onyx.android.sdk.ui.CommonDialog r0 = r0.create()
            r0.show()
            com.onyx.android.sdk.filepicker.PreprocessSelectedFilesAction r1 = new com.onyx.android.sdk.filepicker.PreprocessSelectedFilesAction
            java.util.ArrayList r14 = r14.getSelectFile()
            r1.<init>(r14)
            io.reactivex.rxjava3.core.Observable r14 = r1.build()
            com.sunia.HTREnginev2.ehg r1 = new com.sunia.HTREnginev2.ehg
            r1.<init>()
            io.reactivex.rxjava3.core.Observable r2 = r14.doFinally(r1)
            java.lang.String r13 = "doFinally(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r13)
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 7
            r7 = 0
            com.onyx.android.sdk.base.extension.RxjavaKt.subscribeWithDefault$default(r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.filepicker.FilePickerActivity.m33048H(java.util.List):void");
    }

    /* renamed from: J */
    public final void m33049J() {
        if (!m33056T() || m33059W()) {
            m33058V();
        } else {
            m33061Y();
        }
    }

    /* renamed from: K */
    public final void m33050K() {
        getBinding().rlFileList.setLayoutManager(new LinearLayoutManager(this));
        getBinding().rlFileList.setAdapter(this.filePickerAdapter);
    }

    /* renamed from: L */
    public final void m33051L() {
        TintTextView tvSystemFileManager = getBinding().tvSystemFileManager;
        Intrinsics.checkNotNullExpressionValue(tvSystemFileManager, "tvSystemFileManager");
        tvSystemFileManager.setVisibility(PickerManager.INSTANCE.isFileSystemHidden() ^ true ? 0 : 8);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: M */
    public final void m33052M() {
        getBinding().ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fhg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilePickerActivity.m33044N(FilePickerActivity.this, view);
            }
        });
        getBinding().tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$initListener$2
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(@Nullable TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(@Nullable TabLayout.Tab tab) {
                if (tab != null) {
                    MutableLiveData<DocumentType> selectDocumentType = FilePickerActivity.this.getViewModel().getSelectDocumentType();
                    Object tag = tab.getTag();
                    Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.filepicker.DocumentType");
                    selectDocumentType.postValue((DocumentType) tag);
                }
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(@Nullable TabLayout.Tab tab) {
            }
        });
        this.filePickerAdapter.setCallBack(new Function1<DocumentBean, Unit>() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$initListener$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DocumentBean documentBean) {
                invoke2(documentBean);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull DocumentBean it2) {
                FilePickerAdapter filePickerAdapter;
                Intrinsics.checkNotNullParameter(it2, "it");
                PickerManager pickerManager = PickerManager.INSTANCE;
                pickerManager.selectChange(it2);
                if (!pickerManager.getMultiEnable()) {
                    FilePickerActivity.this.resultBack();
                }
                FilePickerActivity.this.m33065c0();
                filePickerAdapter = FilePickerActivity.this.filePickerAdapter;
                filePickerAdapter.notifyDataSetChanged();
            }
        });
        getBinding().tvImport.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ghg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilePickerActivity.m33045O(FilePickerActivity.this, view);
            }
        });
        TintTextInputEditTextView titleEdit = getBinding().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        titleEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$initListener$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                CharSequence trim;
                FilePickerViewModel viewModel = FilePickerActivity.this.getViewModel();
                trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(s));
                viewModel.setSearchKeyWord(trim.toString());
                FilePickerActivity.this.m33064b0();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        getBinding().tvSystemFileManager.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hhg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilePickerActivity.m33046P(FilePickerActivity.this, view);
            }
        });
    }

    /* renamed from: Q */
    public final void m33053Q() {
        getViewModel().getSelectDocumentType().observe(this, new C7390b(new Function1<DocumentType, Unit>() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$initObserver$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DocumentType documentType) {
                invoke2(documentType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DocumentType documentType) {
                FilePickerActivity.this.m33064b0();
            }
        }));
        getViewModel().getFileData().observe(this, new C7390b(new Function1<HashMap<DocumentType, List<? extends DocumentBean>>, Unit>() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$initObserver$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HashMap<DocumentType, List<? extends DocumentBean>> hashMap) {
                invoke2((HashMap<DocumentType, List<DocumentBean>>) hashMap);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HashMap<DocumentType, List<DocumentBean>> hashMap) {
                FilePickerActivity.this.m33064b0();
            }
        }));
    }

    /* renamed from: R */
    public final void m33054R() {
        TintTabLayoutView tabLayout = getBinding().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        PickerManager pickerManager = PickerManager.INSTANCE;
        tabLayout.setVisibility(pickerManager.isTabLayoutHidden() ^ true ? 0 : 8);
        TintView divider = getBinding().divider;
        Intrinsics.checkNotNullExpressionValue(divider, "divider");
        divider.setVisibility(pickerManager.isTabLayoutHidden() ^ true ? 0 : 8);
        for (DocumentType documentType : pickerManager.getDocTypes()) {
            TabLayout.Tab newTab = getBinding().tabLayout.newTab();
            newTab.setText(documentType.getTitle());
            newTab.setTag(documentType);
            Intrinsics.checkNotNullExpressionValue(newTab, "apply(...)");
            getBinding().tabLayout.addTab(newTab);
        }
        TabLayout.Tab tabAt = getBinding().tabLayout.getTabAt(0);
        if (tabAt != null) {
            MutableLiveData<DocumentType> selectDocumentType = getViewModel().getSelectDocumentType();
            Object tag = tabAt.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.filepicker.DocumentType");
            selectDocumentType.postValue((DocumentType) tag);
        }
    }

    /* renamed from: S */
    public final void m33055S() {
        this.activityReference = new WeakReference<>(this);
        MediumTextView tvImport = getBinding().tvImport;
        Intrinsics.checkNotNullExpressionValue(tvImport, "tvImport");
        PickerManager pickerManager = PickerManager.INSTANCE;
        tvImport.setVisibility(pickerManager.getMultiEnable() ? 0 : 8);
        if (pickerManager.getTitle() != -1) {
            getBinding().tvTitle.setText(pickerManager.getTitle());
        }
        m33054R();
        m33051L();
        m33050K();
    }

    /* renamed from: T */
    public final boolean m33056T() {
        return GlobalConfig.INSTANCE.isStorageManagerEnable();
    }

    /* renamed from: U */
    public final boolean m33057U() {
        return this.fileSystemSelectUris.isEmpty() || this.fileSystemSelectUris.size() > PickerManager.INSTANCE.getMaxCount();
    }

    /* renamed from: V */
    public final void m33058V() {
        FilePickerViewModel viewModel = getViewModel();
        PickerManager pickerManager = PickerManager.INSTANCE;
        viewModel.getDocs(this, pickerManager.getPickerFile(), pickerManager.getDocTypes(), pickerManager.getDocFilterSizeMap(), pickerManager.getSortType());
    }

    /* renamed from: W */
    public final boolean m33059W() {
        boolean isExternalStorageManager;
        if (BuildKt.isApiLevelAbove(30)) {
            isExternalStorageManager = Environment.isExternalStorageManager();
            return isExternalStorageManager;
        }
        if (BuildKt.isApiLevelAbove(23) && BuildKt.isApiLevelBelow(30)) {
            return PermissionUtils.isGranted("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE");
        }
        return true;
    }

    /* renamed from: X */
    public final void m33060X() {
        ToastUtils.showLong(C7453R.string.permission_denied);
        setResult(0);
        finish();
    }

    /* renamed from: Y */
    public final void m33061Y() {
        if (BuildKt.isApiLevelAbove(30)) {
            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
            intent.setData(Uri.parse("package:" + AppUtils.getAppPackageName()));
            startActivityForResult(intent, 2005);
        }
        if (BuildKt.isApiLevelAbove(23) && BuildKt.isApiLevelBelow(30)) {
            PermissionUtils.permission("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").callback(new PermissionUtils.FullCallback() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$requestPermission$1
                @Override // com.blankj.utilcode.util.PermissionUtils.FullCallback
                public void onDenied(@NotNull List<String> deniedForever, @NotNull List<String> denied) {
                    Intrinsics.checkNotNullParameter(deniedForever, "deniedForever");
                    Intrinsics.checkNotNullParameter(denied, "denied");
                    if (!deniedForever.isEmpty()) {
                        FilePickerActivity.this.m33062Z();
                    } else {
                        FilePickerActivity.this.m33060X();
                    }
                }

                @Override // com.blankj.utilcode.util.PermissionUtils.FullCallback
                public void onGranted(@NotNull List<String> granted) {
                    Intrinsics.checkNotNullParameter(granted, "granted");
                    FilePickerActivity.this.m33058V();
                }
            }).request();
        }
    }

    /* renamed from: Z */
    public final void m33062Z() {
        new PermissionDialog.Builder(this).setConfirmTextRes(C8037R.string.go_to_setting).setMessageTextRes(C8037R.string.permission_deny_and_guide_desc).setCancelCallback(new Function0<Unit>() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$requestPermissionSettings$1
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
                Debug.INSTANCE.m32037d("request denied!");
                FilePickerActivity.this.m33060X();
            }
        }).setConfirmCallback(new Function0<Unit>() { // from class: com.onyx.android.sdk.filepicker.FilePickerActivity$requestPermissionSettings$2
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
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.parse("package:" + FilePickerActivity.this.getPackageName()));
                FilePickerActivity.this.startActivityForResult(intent, 2008);
            }
        }).create();
    }

    /* renamed from: a0 */
    public final void m33063a0() {
        if (!BuildKt.isApiLevelAbove(32)) {
            GetMultipleDocuments.Companion companion = GetMultipleDocuments.INSTANCE;
            PickerManager pickerManager = PickerManager.INSTANCE;
            startActivityForResult(companion.createOpenDocumentIntent(pickerManager.isMultipleTypeSelect(), pickerManager.getDocumentSupportList()), 1001);
        } else {
            this.fileSystemSelectUris.clear();
            ActivityResultLauncher<String[]> activityResultLauncher = this.filePickerLauncher;
            if (activityResultLauncher == null) {
                Intrinsics.throwUninitializedPropertyAccessException("filePickerLauncher");
                activityResultLauncher = null;
            }
            activityResultLauncher.launch(new String[]{FileExtensionUtils.DEFAULT_MIMETYPE_ALL});
        }
    }

    /* renamed from: b0 */
    public final void m33064b0() {
        List<DocumentBean> list;
        boolean contains;
        HashMap<DocumentType, List<DocumentBean>> value = getViewModel().getFileData().getValue();
        if (value == null || (list = value.get(getViewModel().getSelectDocumentType().getValue())) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            contains = StringsKt__StringsKt.contains((CharSequence) ((DocumentBean) next).getName(), (CharSequence) getViewModel().getSearchKeyWord(), true);
            if (contains) {
                arrayList.add(next);
            }
        }
        m33066d0(arrayList.isEmpty() && !StringUtils.isEmpty(getViewModel().getSearchKeyWord()));
        this.filePickerAdapter.submitList(arrayList);
    }

    /* renamed from: c0 */
    public final void m33065c0() {
        getBinding().tvImport.setEnabled(PickerManager.INSTANCE.getCurrentCount() > 0);
    }

    /* renamed from: d0 */
    public final void m33066d0(boolean showEmpty) {
        LinearLayout llEmptyContainer = getBinding().llEmptyContainer;
        Intrinsics.checkNotNullExpressionValue(llEmptyContainer, "llEmptyContainer");
        llEmptyContainer.setVisibility(showEmpty ? 0 : 8);
    }

    @NotNull
    public final ActivityFilePickerBinding getBinding() {
        return (ActivityFilePickerBinding) this.binding.getValue();
    }

    @NotNull
    public final FilePickerViewModel getViewModel() {
        FilePickerViewModel filePickerViewModel = this.viewModel;
        if (filePickerViewModel != null) {
            return filePickerViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        return null;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        List<Uri> clipDataUris$sdk_imagepicker_overseasRelease;
        boolean isExternalStorageManager;
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1001) {
            if (resultCode != -1 || data == null || (clipDataUris$sdk_imagepicker_overseasRelease = GetMultipleDocuments.INSTANCE.getClipDataUris$sdk_imagepicker_overseasRelease(data)) == null) {
                return;
            }
            m33048H(clipDataUris$sdk_imagepicker_overseasRelease);
            return;
        }
        if (requestCode == 2005) {
            if (BuildKt.isApiLevelAbove(30)) {
                isExternalStorageManager = Environment.isExternalStorageManager();
                if (!isExternalStorageManager) {
                    ToastUtils.showLong(C7453R.string.permission_denied);
                    return;
                }
            }
            m33058V();
            return;
        }
        if (requestCode == 2008) {
            if (m33059W()) {
                m33058V();
                return;
            } else {
                m33060X();
                return;
            }
        }
        if (m33056T() || !m33057U()) {
            return;
        }
        PickerManager.INSTANCE.clearSelect();
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063349, this, savedInstanceState);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ThemeBundle.INSTANCE.unRegister(this);
        PickerManager.INSTANCE.release();
        WeakReference<Activity> weakReference = this.activityReference;
        if (weakReference != null) {
            weakReference.clear();
        }
        ActivityResultLauncher<String[]> activityResultLauncher = null;
        this.activityReference = null;
        ActivityResultLauncher<String[]> activityResultLauncher2 = this.filePickerLauncher;
        if (activityResultLauncher2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("filePickerLauncher");
        } else {
            activityResultLauncher = activityResultLauncher2;
        }
        activityResultLauncher.unregister();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSystemThemeChangedEvent(@NotNull SystemThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ThemeUtils.refreshUI(this);
    }

    public void resultBack() {
        PickerManager pickerManager = PickerManager.INSTANCE;
        if (pickerManager.getResultCallback() == null) {
            Intent intent = new Intent();
            intent.putExtra(PickerFileConst.EXTRA_RESULT_SELECTION, pickerManager.getSelectFile());
            setResult(-1, intent);
            finish();
            return;
        }
        WeakReference<Activity> weakReference = this.activityReference;
        if (weakReference != null) {
            Function2<ArrayList<DocumentBean>, WeakReference<Activity>, Unit> resultCallback = pickerManager.getResultCallback();
            if (resultCallback != null) {
                resultCallback.invoke(pickerManager.getSelectFile(), weakReference);
            }
            if (pickerManager.getResultWithFinish()) {
                finish();
            }
        }
    }

    public final void setViewModel(@NotNull FilePickerViewModel filePickerViewModel) {
        Intrinsics.checkNotNullParameter(filePickerViewModel, "<set-?>");
        this.viewModel = filePickerViewModel;
    }
}
