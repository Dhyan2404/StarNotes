package com.onyx.android.sdk.filepicker;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntegerRes;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.fragment.app.Fragment;
import androidx.transition.Transition;
import com.blankj.utilcode.util.ActivityUtils;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.filepicker.GetMultipleDocuments;
import com.onyx.android.sdk.filepicker.sort.SortType;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 B2\u00020\u0001:\u0001BB\u0007¢\u0006\u0004\b@\u0010AJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\b2\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\bH\u0002J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0000J\u0006\u0010\u0018\u001a\u00020\u0000J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0014J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0014J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0004J\u0010\u0010\"\u001a\u00020\u00002\b\b\u0001\u0010!\u001a\u00020\u0004J-\u0010'\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020#2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020#0$2\b\b\u0003\u0010&\u001a\u00020\u0004¢\u0006\u0004\b'\u0010(J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020)J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010-\u001a\u00020,J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0014J\u000e\u00104\u001a\u00020\u00002\u0006\u00103\u001a\u000202J\u0018\u00105\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\b2\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0018\u00105\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004JR\u00105\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00022\b\b\u0002\u00106\u001a\u00020\u00142\b\b\u0002\u0010\u0005\u001a\u00020\u00042.\u0010<\u001a*\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020908j\b\u0012\u0004\u0012\u000209`:\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0;\u0012\u0004\u0012\u00020\u000607JR\u00105\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\b\b\u0002\u00106\u001a\u00020\u00142\b\b\u0002\u0010\u0005\u001a\u00020\u00042.\u0010<\u001a*\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020908j\b\u0012\u0004\u0012\u000209`:\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0;\u0012\u0004\u0012\u00020\u000607R\u0014\u0010?\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010>¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;", "", "Landroidx/fragment/app/Fragment;", "context", "", "requestCode", "", C6997f.f39671c, "Landroid/app/Activity;", "e", "fragment", "d", ActivityChooserModel.f1429r, "c", "a", "b", "maxSize", "setMaxSelectCount", "ofDoc", "ofFont", "", "enable", "multiEnable", "onlyPdf", "onlyNote", "title", "setTitle", "isHidden", "tabLayoutHidden", "fileSystemHidden", "enableFilterDocType", "theme", "setActivityTheme", "orientation", "withOrientation", "", "", "extensions", ResourceManager.f46830c, "addFileSupport", "(Ljava/lang/String;[Ljava/lang/String;I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;", "Lcom/onyx/android/sdk/filepicker/sort/SortType;", "type", "setDocumentsBy", "Ljava/io/File;", "file", "setPickerFilesDir", "setKeepScreenOnEnable", "hide", "setHideStatusBar", "Lcom/onyx/android/sdk/filepicker/FilePickerArgs;", "filePickerArgs", "addFilePickerPageArgs", "pickFile", "resultWithFinish", "Lkotlin/Function2;", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "Lkotlin/collections/ArrayList;", "Ljava/lang/ref/WeakReference;", "callback", "Landroid/os/Bundle;", "Landroid/os/Bundle;", "mPickerOptionsBundle", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class FilePickerBuilder {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Bundle mPickerOptionsBundle = new Bundle();

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0006\u0010\r\u001a\u00020\u000eR\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;", "", "()V", Transition.f10626J0, "Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;", "getInstance$annotations", "getInstance", "()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;", "obtainResult", "", "Landroid/net/Uri;", v6l.f87196g, "Landroid/content/Intent;", "release", "", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getInstance$annotations() {
        }

        @NotNull
        public final FilePickerBuilder getInstance() {
            return new FilePickerBuilder();
        }

        @Nullable
        public final List<Uri> obtainResult(@Nullable Intent intent) {
            ArrayList parcelableArrayListExtra;
            if (intent == null) {
                return null;
            }
            if (!BuildKt.isApiLevelAbove(33)) {
                return intent.getParcelableArrayListExtra(PickerFileConst.EXTRA_RESULT_SELECTION);
            }
            parcelableArrayListExtra = intent.getParcelableArrayListExtra(PickerFileConst.EXTRA_RESULT_SELECTION, Uri.class);
            return parcelableArrayListExtra;
        }

        public final void release() {
            for (Activity activity : ActivityUtils.getActivityList()) {
                if (activity instanceof FilePickerActivity) {
                    activity.finish();
                }
            }
            PickerManager.INSTANCE.release();
        }

        public Companion() {
        }
    }

    public static /* synthetic */ FilePickerBuilder addFileSupport$default(FilePickerBuilder filePickerBuilder, String str, String[] strArr, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = C7453R.drawable.ic_gif;
        }
        return filePickerBuilder.addFileSupport(str, strArr, i);
    }

    /* renamed from: g */
    public static /* synthetic */ void m33070g(FilePickerBuilder filePickerBuilder, Activity activity, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2001;
        }
        filePickerBuilder.m33076e(activity, i);
    }

    @NotNull
    public static final FilePickerBuilder getInstance() {
        return INSTANCE.getInstance();
    }

    /* renamed from: h */
    public static /* synthetic */ void m33071h(FilePickerBuilder filePickerBuilder, Fragment fragment, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2001;
        }
        filePickerBuilder.m33077f(fragment, i);
    }

    public static /* synthetic */ void pickFile$default(FilePickerBuilder filePickerBuilder, Activity activity, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2001;
        }
        filePickerBuilder.pickFile(activity, i);
    }

    /* renamed from: a */
    public final void m33072a(Activity context, int requestCode) {
        Intent intent = new Intent(context, (Class<?>) FilePickerActivity.class);
        intent.putExtras(this.mPickerOptionsBundle);
        context.startActivityForResult(intent, requestCode);
    }

    @NotNull
    public final FilePickerBuilder addFilePickerPageArgs(@NotNull FilePickerArgs filePickerArgs) {
        Intrinsics.checkNotNullParameter(filePickerArgs, "filePickerArgs");
        PickerManager.INSTANCE.addFilePickerArgs(filePickerArgs);
        return this;
    }

    @NotNull
    public final FilePickerBuilder addFileSupport(@NotNull String title, @NotNull String[] extensions, @DrawableRes int drawable) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(extensions, "extensions");
        PickerManager.INSTANCE.addFileTypes(new DocumentType(title, extensions, Integer.valueOf(drawable)));
        return this;
    }

    /* renamed from: b */
    public final void m33073b(Fragment fragment, int requestCode) {
        PickerManager.INSTANCE.setRequestCode(requestCode);
        if (fragment.getContext() != null) {
            Intent intent = new Intent(fragment.getActivity(), (Class<?>) FilePickerActivity.class);
            intent.putExtras(this.mPickerOptionsBundle);
            fragment.startActivityForResult(intent, requestCode);
        }
    }

    /* renamed from: c */
    public final void m33074c(Activity activity) {
        Intent intent = new Intent(activity, (Class<?>) FilePickerActivity.class);
        intent.putExtras(this.mPickerOptionsBundle);
        activity.startActivity(intent);
    }

    /* renamed from: d */
    public final void m33075d(Fragment fragment) {
        Intent intent = new Intent(fragment.getActivity(), (Class<?>) FilePickerActivity.class);
        intent.putExtras(this.mPickerOptionsBundle);
        fragment.startActivity(intent);
    }

    /* renamed from: e */
    public final void m33076e(Activity context, int requestCode) {
        GetMultipleDocuments.Companion companion = GetMultipleDocuments.INSTANCE;
        PickerManager pickerManager = PickerManager.INSTANCE;
        context.startActivityForResult(companion.createOpenDocumentIntent(pickerManager.isMultipleTypeSelect(), pickerManager.getDocumentSupportList()), requestCode);
    }

    @NotNull
    public final FilePickerBuilder enableFilterDocType(boolean enable) {
        PickerManager.INSTANCE.setEnableFilterDocType(enable);
        return this;
    }

    /* renamed from: f */
    public final void m33077f(Fragment context, int requestCode) {
        GetMultipleDocuments.Companion companion = GetMultipleDocuments.INSTANCE;
        PickerManager pickerManager = PickerManager.INSTANCE;
        context.startActivityForResult(companion.createOpenDocumentIntent(pickerManager.isMultipleTypeSelect(), pickerManager.getDocumentSupportList()), requestCode);
    }

    @NotNull
    public final FilePickerBuilder fileSystemHidden(boolean isHidden) {
        PickerManager.INSTANCE.setFileSystemHidden(isHidden);
        return this;
    }

    @NotNull
    public final FilePickerBuilder multiEnable(boolean enable) {
        PickerManager.INSTANCE.setMultiEnable(enable);
        return this;
    }

    @NotNull
    public final FilePickerBuilder ofDoc() {
        PickerManager.INSTANCE.ofDoc();
        return this;
    }

    @NotNull
    public final FilePickerBuilder ofFont() {
        PickerManager.INSTANCE.ofFont();
        return this;
    }

    @NotNull
    public final FilePickerBuilder onlyNote() {
        PickerManager.INSTANCE.onlyNote();
        return this;
    }

    @NotNull
    public final FilePickerBuilder onlyPdf() {
        PickerManager.INSTANCE.onlyPdf();
        return this;
    }

    public final void pickFile(@NotNull Activity context, int requestCode) {
        Intrinsics.checkNotNullParameter(context, "context");
        m33072a(context, requestCode);
    }

    @NotNull
    public final FilePickerBuilder setActivityTheme(int theme) {
        PickerManager.INSTANCE.setActivityTheme(theme);
        return this;
    }

    @NotNull
    public final FilePickerBuilder setDocumentsBy(@NotNull SortType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        PickerManager.INSTANCE.setSortType(type);
        return this;
    }

    @NotNull
    public final FilePickerBuilder setHideStatusBar(boolean hide) {
        PickerManager.INSTANCE.hideStatusBar(hide);
        return this;
    }

    @NotNull
    public final FilePickerBuilder setKeepScreenOnEnable(boolean enable) {
        PickerManager.INSTANCE.setKeepSeenOnEnable(enable);
        return this;
    }

    @NotNull
    public final FilePickerBuilder setMaxSelectCount(int maxSize) {
        PickerManager.INSTANCE.setMaxCount(maxSize);
        return this;
    }

    @NotNull
    public final FilePickerBuilder setPickerFilesDir(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (file.isDirectory() && file.exists()) {
            PickerManager.INSTANCE.setPickerFilesDir(file);
        }
        return this;
    }

    @NotNull
    public final FilePickerBuilder setTitle(int title) {
        PickerManager.INSTANCE.setTitle(title);
        return this;
    }

    @NotNull
    public final FilePickerBuilder tabLayoutHidden(boolean isHidden) {
        PickerManager.INSTANCE.setTabLayoutHidden(isHidden);
        return this;
    }

    @NotNull
    public final FilePickerBuilder withOrientation(@IntegerRes int orientation) {
        PickerManager.INSTANCE.setOrientation(orientation);
        return this;
    }

    public static /* synthetic */ void pickFile$default(FilePickerBuilder filePickerBuilder, Fragment fragment, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2001;
        }
        filePickerBuilder.pickFile(fragment, i);
    }

    public final void pickFile(@NotNull Fragment context, int requestCode) {
        Intrinsics.checkNotNullParameter(context, "context");
        m33073b(context, requestCode);
    }

    public static /* synthetic */ void pickFile$default(FilePickerBuilder filePickerBuilder, Fragment fragment, boolean z, int i, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            i = 2001;
        }
        filePickerBuilder.pickFile(fragment, z, i, (Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit>) function2);
    }

    public final void pickFile(@NotNull Fragment fragment, boolean resultWithFinish, int requestCode, @NotNull Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit> callback) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (GlobalConfig.INSTANCE.isStorageManagerEnable()) {
            PickerManager pickerManager = PickerManager.INSTANCE;
            pickerManager.setResultWithFinish(resultWithFinish);
            pickerManager.setResultCallback(callback);
            m33075d(fragment);
            return;
        }
        m33077f(fragment, requestCode);
    }

    public static /* synthetic */ void pickFile$default(FilePickerBuilder filePickerBuilder, Activity activity, boolean z, int i, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            i = 2001;
        }
        filePickerBuilder.pickFile(activity, z, i, (Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit>) function2);
    }

    public final void pickFile(@NotNull Activity activity, boolean resultWithFinish, int requestCode, @NotNull Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (GlobalConfig.INSTANCE.isStorageManagerEnable()) {
            PickerManager pickerManager = PickerManager.INSTANCE;
            pickerManager.setResultWithFinish(resultWithFinish);
            pickerManager.setResultCallback(callback);
            m33074c(activity);
            return;
        }
        m33076e(activity, requestCode);
    }
}
