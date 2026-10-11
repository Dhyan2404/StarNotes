package com.onyx.android.sdk.filepicker;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.C14063lv;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)JC\u0010\f\u001a\u00020\u000b21\u0010\n\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u000e\u001a\u00020\bH\u0016J\u0014\u0010\u0012\u001a\u00020\b2\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u0010H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001e\u0010!\u001a\f\u0012\b\u0012\u00060\u000fj\u0002`\u00100\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001e\u0010%\u001a\f\u0012\b\u0012\u00060\u000fj\u0002`\u00100\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/BaseViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/ParameterName;", "name", "scope", "Lkotlin/coroutines/Continuation;", "", "", BreakpointSQLiteHelper.f39283i, "Lkotlinx/coroutines/Job;", "launchDataLoad", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;", "onCleared", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "d", "Lkotlinx/coroutines/CompletableJob;", "i", "Lkotlinx/coroutines/CompletableJob;", "viewModelJob", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "j", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "exceptionHandler", C4921e.f26537n, "Lkotlinx/coroutines/CoroutineScope;", "uiScope", "Landroidx/lifecycle/MutableLiveData;", "l", "Landroidx/lifecycle/MutableLiveData;", "_lvError", "Landroidx/lifecycle/LiveData;", "getLvError", "()Landroidx/lifecycle/LiveData;", "lvError", "Landroid/app/Application;", "application", Constants.CONSTRUCTOR_NAME, "(Landroid/app/Application;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseViewModel.kt\ncom/onyx/android/sdk/filepicker/BaseViewModel\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,51:1\n49#2,4:52\n*S KotlinDebug\n*F\n+ 1 BaseViewModel.kt\ncom/onyx/android/sdk/filepicker/BaseViewModel\n*L\n19#1:52,4\n*E\n"})
/* loaded from: classes7.dex */
public class BaseViewModel extends AndroidViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final CompletableJob viewModelJob;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final CoroutineExceptionHandler exceptionHandler;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final CoroutineScope uiScope;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Exception> _lvError;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewModel(@NotNull Application application) {
        super(application);
        Intrinsics.checkNotNullParameter(application, "application");
        CompletableJob SupervisorJob$default = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null);
        this.viewModelJob = SupervisorJob$default;
        BaseViewModel$special$$inlined$CoroutineExceptionHandler$1 baseViewModel$special$$inlined$CoroutineExceptionHandler$1 = new BaseViewModel$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE);
        this.exceptionHandler = baseViewModel$special$$inlined$CoroutineExceptionHandler$1;
        this.uiScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getMain().plus(SupervisorJob$default).plus(baseViewModel$special$$inlined$CoroutineExceptionHandler$1));
        this._lvError = new MutableLiveData<>();
    }

    /* renamed from: d */
    public final void m33038d(Exception error) {
        error.printStackTrace();
        if (error instanceof CancellationException) {
            return;
        }
        this._lvError.setValue(error);
    }

    @NotNull
    public LiveData<Exception> getLvError() {
        return this._lvError;
    }

    @NotNull
    public final Job launchDataLoad(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Job m55522f;
        Intrinsics.checkNotNullParameter(block, "block");
        m55522f = C14063lv.m55522f(this.uiScope, null, null, new BaseViewModel$launchDataLoad$1(block, this, null), 3, null);
        return m55522f;
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        Job.DefaultImpls.cancel$default((Job) this.viewModelJob, (CancellationException) null, 1, (Object) null);
    }
}
