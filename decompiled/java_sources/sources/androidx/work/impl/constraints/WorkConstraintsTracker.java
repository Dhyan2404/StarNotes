package androidx.work.impl.constraints;

import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\n¢\u0006\u0004\b\u000f\u0010\u0010B\u0011\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u000f\u0010\u0013J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002R\u001e\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0014"}, m61528d2 = {"Landroidx/work/impl/constraints/WorkConstraintsTracker;", "", "Landroidx/work/impl/model/WorkSpec;", "spec", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/work/impl/constraints/ConstraintsState;", "track", "workSpec", "", "areAllConstraintsMet", "", "Landroidx/work/impl/constraints/controllers/ConstraintController;", "a", "Ljava/util/List;", "controllers", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "Landroidx/work/impl/constraints/trackers/Trackers;", "trackers", "(Landroidx/work/impl/constraints/trackers/Trackers;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nWorkConstraintsTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,104:1\n766#2:105\n857#2,2:106\n1549#2:108\n1620#2,3:109\n766#2:117\n857#2,2:118\n287#3:112\n288#3:115\n37#4,2:113\n106#5:116\n*S KotlinDebug\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTracker\n*L\n84#1:105\n84#1:106,2\n84#1:108\n84#1:109,3\n91#1:117\n91#1:118,2\n85#1:112\n85#1:115\n85#1:113,2\n85#1:116\n*E\n"})
/* loaded from: classes3.dex */
public final class WorkConstraintsTracker {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<ConstraintController<?>> controllers;

    /* JADX WARN: Multi-variable type inference failed */
    public WorkConstraintsTracker(@NotNull List<? extends ConstraintController<?>> controllers) {
        Intrinsics.checkNotNullParameter(controllers, "controllers");
        this.controllers = controllers;
    }

    public final boolean areAllConstraintsMet(@NotNull WorkSpec workSpec) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        List<ConstraintController<?>> list = this.controllers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ConstraintController) obj).isConstrained(workSpec)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            Logger logger = Logger.get();
            String access$getTAG$p = WorkConstraintsTrackerKt.access$getTAG$p();
            StringBuilder sb = new StringBuilder();
            sb.append("Work ");
            sb.append(workSpec.id);
            sb.append(" constrained by ");
            joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, new Function1<ConstraintController<?>, CharSequence>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$areAllConstraintsMet$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final CharSequence invoke(@NotNull ConstraintController<?> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    String simpleName = it2.getClass().getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "it.javaClass.simpleName");
                    return simpleName;
                }
            }, 31, null);
            sb.append(joinToString$default);
            logger.debug(access$getTAG$p, sb.toString());
        }
        return arrayList.isEmpty();
    }

    @NotNull
    public final Flow<ConstraintsState> track(@NotNull WorkSpec spec) {
        int collectionSizeOrDefault;
        List list;
        Intrinsics.checkNotNullParameter(spec, "spec");
        List<ConstraintController<?>> list2 = this.controllers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (((ConstraintController) obj).hasConstraint(spec)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((ConstraintController) it2.next()).track());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        final Flow[] flowArr = (Flow[]) list.toArray(new Flow[0]);
        return FlowKt.distinctUntilChanged(new Flow<ConstraintsState>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1

            @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¨\u0006\u0006"}, m61528d2 = {"T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "", OcrValues.LANG_ITALIAN, "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2", "<anonymous>"}, m61529k = 3, m61530mv = {1, 8, 0})
            @DebugMetadata(m61542c = "androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3", m61543f = "WorkConstraintsTracker.kt", m61544i = {}, m61545l = {292}, m61546m = "invokeSuspend", m61547n = {}, m61548s = {})
            @SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2\n+ 2 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTracker\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,332:1\n86#2:333\n1282#3,2:334\n*S KotlinDebug\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTracker\n*L\n86#1:334,2\n*E\n"})
            /* renamed from: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3 */
            /* loaded from: classes3.dex */
            public static final class C16093 extends SuspendLambda implements Function3<FlowCollector<? super ConstraintsState>, ConstraintsState[], Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                public C16093(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object coroutine_suspended;
                    ConstraintsState constraintsState;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        FlowCollector flowCollector = (FlowCollector) this.L$0;
                        ConstraintsState[] constraintsStateArr = (ConstraintsState[]) ((Object[]) this.L$1);
                        int length = constraintsStateArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                constraintsState = null;
                                break;
                            }
                            constraintsState = constraintsStateArr[i2];
                            if (!Intrinsics.areEqual(constraintsState, ConstraintsState.ConstraintsMet.INSTANCE)) {
                                break;
                            }
                            i2++;
                        }
                        if (constraintsState == null) {
                            constraintsState = ConstraintsState.ConstraintsMet.INSTANCE;
                        }
                        this.label = 1;
                        if (flowCollector.emit(constraintsState, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function3
                @Nullable
                public final Object invoke(@NotNull FlowCollector<? super ConstraintsState> flowCollector, @NotNull ConstraintsState[] constraintsStateArr, @Nullable Continuation<? super Unit> continuation) {
                    C16093 c16093 = new C16093(continuation);
                    c16093.L$0 = flowCollector;
                    c16093.L$1 = constraintsStateArr;
                    return c16093.invokeSuspend(Unit.INSTANCE);
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            @Nullable
            public Object collect(@NotNull FlowCollector<? super ConstraintsState> flowCollector, @NotNull Continuation continuation) {
                Object coroutine_suspended;
                final Flow[] flowArr2 = flowArr;
                Object combineInternal = CombineKt.combineInternal(flowCollector, flowArr2, new Function0<ConstraintsState[]>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    @Nullable
                    public final ConstraintsState[] invoke() {
                        return new ConstraintsState[flowArr2.length];
                    }
                }, new C16093(null), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return combineInternal == coroutine_suspended ? combineInternal : Unit.INSTANCE;
            }
        });
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WorkConstraintsTracker(@org.jetbrains.annotations.NotNull androidx.work.impl.constraints.trackers.Trackers r4) {
        /*
            r3 = this;
            java.lang.String r0 = "trackers"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r0 = 7
            androidx.work.impl.constraints.controllers.ConstraintController[] r0 = new androidx.work.impl.constraints.controllers.ConstraintController[r0]
            androidx.work.impl.constraints.controllers.BatteryChargingController r1 = new androidx.work.impl.constraints.controllers.BatteryChargingController
            androidx.work.impl.constraints.trackers.ConstraintTracker r2 = r4.getBatteryChargingTracker()
            r1.<init>(r2)
            r2 = 0
            r0[r2] = r1
            androidx.work.impl.constraints.controllers.BatteryNotLowController r1 = new androidx.work.impl.constraints.controllers.BatteryNotLowController
            androidx.work.impl.constraints.trackers.BatteryNotLowTracker r2 = r4.getBatteryNotLowTracker()
            r1.<init>(r2)
            r2 = 1
            r0[r2] = r1
            androidx.work.impl.constraints.controllers.StorageNotLowController r1 = new androidx.work.impl.constraints.controllers.StorageNotLowController
            androidx.work.impl.constraints.trackers.ConstraintTracker r2 = r4.getStorageNotLowTracker()
            r1.<init>(r2)
            r2 = 2
            r0[r2] = r1
            androidx.work.impl.constraints.controllers.NetworkConnectedController r1 = new androidx.work.impl.constraints.controllers.NetworkConnectedController
            androidx.work.impl.constraints.trackers.ConstraintTracker r2 = r4.getNetworkStateTracker()
            r1.<init>(r2)
            r2 = 3
            r0[r2] = r1
            androidx.work.impl.constraints.controllers.NetworkUnmeteredController r1 = new androidx.work.impl.constraints.controllers.NetworkUnmeteredController
            androidx.work.impl.constraints.trackers.ConstraintTracker r2 = r4.getNetworkStateTracker()
            r1.<init>(r2)
            r2 = 4
            r0[r2] = r1
            androidx.work.impl.constraints.controllers.NetworkNotRoamingController r1 = new androidx.work.impl.constraints.controllers.NetworkNotRoamingController
            androidx.work.impl.constraints.trackers.ConstraintTracker r2 = r4.getNetworkStateTracker()
            r1.<init>(r2)
            r2 = 5
            r0[r2] = r1
            androidx.work.impl.constraints.controllers.NetworkMeteredController r1 = new androidx.work.impl.constraints.controllers.NetworkMeteredController
            androidx.work.impl.constraints.trackers.ConstraintTracker r4 = r4.getNetworkStateTracker()
            r1.<init>(r4)
            r4 = 6
            r0[r4] = r1
            java.util.List r4 = kotlin.collections.CollectionsKt.listOf(r0)
            r3.<init>(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.constraints.WorkConstraintsTracker.<init>(androidx.work.impl.constraints.trackers.Trackers):void");
    }
}
