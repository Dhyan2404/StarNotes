package androidx.databinding;

import androidx.annotation.RestrictTo;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewDataBindingKtx;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.C14063lv;
import com.sunia.HTREnginev2.pek;
import com.sunia.HTREnginev2.r5o;
import com.sunia.HTREnginev2.zge;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ&\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0006H\u0007R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Landroidx/databinding/ViewDataBindingKtx;", "", "Landroidx/databinding/ViewDataBinding;", "viewDataBinding", "", "localFieldId", "Lkotlinx/coroutines/flow/Flow;", "observable", "", "updateStateFlowRegistration", "Lcom/sunia/HTREnginev2/zge;", "a", "Lcom/sunia/HTREnginev2/zge;", "CREATE_STATE_FLOW_LISTENER", Constants.CONSTRUCTOR_NAME, "()V", "StateFlowListener", "databindingKtx_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class ViewDataBindingKtx {

    @NotNull
    public static final ViewDataBindingKtx INSTANCE = new ViewDataBindingKtx();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final zge CREATE_STATE_FLOW_LISTENER = new zge() { // from class: com.sunia.HTREnginev2.d2o
        @Override // com.sunia.HTREnginev2.zge
        /* renamed from: a */
        public final r5o mo4088a(ViewDataBinding viewDataBinding, int i, ReferenceQueue referenceQueue) {
            r5o m4100b;
            m4100b = ViewDataBindingKtx.m4100b(viewDataBinding, i, referenceQueue);
            return m4100b;
        }
    };

    @Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B'\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001e¢\u0006\u0004\b \u0010!J\u0016\u0010\u0005\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0004H\u0016J\u001a\u0010\b\u001a\u00020\u00072\u0010\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\t\u001a\u00020\u00072\u0010\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u0012\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J \u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\n2\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0002R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\"\u0010\u0019\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\""}, m61528d2 = {"Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;", "Lcom/sunia/HTREnginev2/pek;", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/sunia/HTREnginev2/r5o;", "getListener", "target", "", "addListener", "removeListener", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "setLifecycleOwner", "owner", "flow", "a", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "_lifecycleOwnerRef", "Lkotlinx/coroutines/Job;", "b", "Lkotlinx/coroutines/Job;", "observerJob", "c", "Lcom/sunia/HTREnginev2/r5o;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroidx/databinding/ViewDataBinding;", "binder", "", "localFieldId", "Ljava/lang/ref/ReferenceQueue;", "referenceQueue", Constants.CONSTRUCTOR_NAME, "(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V", "databindingKtx_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class StateFlowListener implements pek<Flow<? extends Object>> {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public WeakReference<LifecycleOwner> _lifecycleOwnerRef;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public Job observerJob;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final r5o<Flow<Object>> listener;

        public StateFlowListener(@Nullable ViewDataBinding viewDataBinding, int i, @NotNull ReferenceQueue<ViewDataBinding> referenceQueue) {
            Intrinsics.checkNotNullParameter(referenceQueue, "referenceQueue");
            this.listener = new r5o<>(viewDataBinding, i, this, referenceQueue);
        }

        /* renamed from: a */
        public final void m4101a(LifecycleOwner owner, Flow<? extends Object> flow) {
            Job m55522f;
            Job job = this.observerJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            m55522f = C14063lv.m55522f(LifecycleOwnerKt.getLifecycleScope(owner), null, null, new ViewDataBindingKtx$StateFlowListener$startCollection$1(owner, flow, this, null), 3, null);
            this.observerJob = m55522f;
        }

        @Override // com.sunia.HTREnginev2.pek
        @NotNull
        public r5o<Flow<? extends Object>> getListener() {
            return this.listener;
        }

        @Override // com.sunia.HTREnginev2.pek
        public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
            WeakReference<LifecycleOwner> weakReference = this._lifecycleOwnerRef;
            if ((weakReference != null ? weakReference.get() : null) == lifecycleOwner) {
                return;
            }
            Job job = this.observerJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            if (lifecycleOwner == null) {
                this._lifecycleOwnerRef = null;
                return;
            }
            this._lifecycleOwnerRef = new WeakReference<>(lifecycleOwner);
            Flow<? extends Object> flow = (Flow) this.listener.m56911b();
            if (flow != null) {
                m4101a(lifecycleOwner, flow);
            }
        }

        @Override // com.sunia.HTREnginev2.pek
        public void addListener(@Nullable Flow<? extends Object> target) {
            LifecycleOwner lifecycleOwner;
            WeakReference<LifecycleOwner> weakReference = this._lifecycleOwnerRef;
            if (weakReference == null || (lifecycleOwner = weakReference.get()) == null || target == null) {
                return;
            }
            m4101a(lifecycleOwner, target);
        }

        @Override // com.sunia.HTREnginev2.pek
        public void removeListener(@Nullable Flow<? extends Object> target) {
            Job job = this.observerJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.observerJob = null;
        }
    }

    /* renamed from: b */
    public static final r5o m4100b(ViewDataBinding viewDataBinding, int i, ReferenceQueue referenceQueue) {
        Intrinsics.checkNotNullExpressionValue(referenceQueue, "referenceQueue");
        return new StateFlowListener(viewDataBinding, i, referenceQueue).getListener();
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean updateStateFlowRegistration(@NotNull ViewDataBinding viewDataBinding, int localFieldId, @Nullable Flow<?> observable) {
        Intrinsics.checkNotNullParameter(viewDataBinding, "viewDataBinding");
        viewDataBinding.mInStateFlowRegisterObserver = true;
        try {
            return viewDataBinding.updateRegistration(localFieldId, observable, CREATE_STATE_FLOW_LISTENER);
        } finally {
            viewDataBinding.mInStateFlowRegisterObserver = false;
        }
    }
}
