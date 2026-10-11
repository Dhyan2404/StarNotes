package com.onyx.android.sdk.filepicker;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.filepicker.sort.SortType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%JB\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u000e\u001a\u00020\rR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R/\u0010\u001a\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00060\u00160\u00118\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015R\"\u0010!\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;", "Lcom/onyx/android/sdk/filepicker/BaseViewModel;", "Landroid/content/Context;", "activityContext", "Ljava/io/File;", "scannerFile", "", "Lcom/onyx/android/sdk/filepicker/DocumentType;", "selectDocumentType", "", "", "", "docFilterSizeMap", "Lcom/onyx/android/sdk/filepicker/sort/SortType;", "sortType", "", "getDocs", "Landroidx/lifecycle/MutableLiveData;", "m", "Landroidx/lifecycle/MutableLiveData;", "getSelectDocumentType", "()Landroidx/lifecycle/MutableLiveData;", "Ljava/util/HashMap;", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", GoogleApiAvailabilityLight.f29016b, "getFileData", "fileData", C4921e.f26528e, Constants.STRING_SIG, "getSearchKeyWord", "()Ljava/lang/String;", "setSearchKeyWord", "(Ljava/lang/String;)V", "searchKeyWord", "Landroid/app/Application;", "application", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/app/Application;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class FilePickerViewModel extends BaseViewModel {

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<DocumentType> selectDocumentType;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<HashMap<DocumentType, List<DocumentBean>>> fileData;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public String searchKeyWord;

    /* renamed from: com.onyx.android.sdk.filepicker.FilePickerViewModel$a */
    /* loaded from: classes7.dex */
    public static final class C7391a<T> implements Consumer {
        public C7391a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HashMap<DocumentType, List<DocumentBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FilePickerViewModel.this.getFileData().postValue(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilePickerViewModel(@NotNull Application application) {
        super(application);
        Intrinsics.checkNotNullParameter(application, "application");
        this.selectDocumentType = new MutableLiveData<>();
        this.fileData = new MutableLiveData<>();
        this.searchKeyWord = "";
    }

    public final void getDocs(@NotNull Context activityContext, @Nullable File scannerFile, @NotNull List<DocumentType> selectDocumentType, @NotNull Map<String, Long> docFilterSizeMap, @NotNull SortType sortType) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(selectDocumentType, "selectDocumentType");
        Intrinsics.checkNotNullParameter(docFilterSizeMap, "docFilterSizeMap");
        Intrinsics.checkNotNullParameter(sortType, "sortType");
        new QueryDocAction(activityContext, scannerFile, selectDocumentType, docFilterSizeMap, sortType).build().doOnNext(new C7391a()).subscribe();
    }

    @NotNull
    public final MutableLiveData<HashMap<DocumentType, List<DocumentBean>>> getFileData() {
        return this.fileData;
    }

    @NotNull
    public final String getSearchKeyWord() {
        return this.searchKeyWord;
    }

    @NotNull
    public final MutableLiveData<DocumentType> getSelectDocumentType() {
        return this.selectDocumentType;
    }

    public final void setSearchKeyWord(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.searchKeyWord = str;
    }
}
