package com.onyx.android.sdk.base.extension;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel$penType$1;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\b¢\u0006\u0002\u0010\u0004\u001a<\u0010\u0005\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u001c\u0010\n\u001a\u0018\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00060\u000bj\b\u0012\u0004\u0012\u0002H\u0001`\f\u001aK\u0010\r\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\b\u001a\u00020\t2\u001a\u0010\u0010\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00120\u0011\"\u0006\u0012\u0002\b\u00030\u00122\u0010\u0010\n\u001a\f\u0012\u0004\u0012\u00020\u00060\u0013j\u0002`\u0014¢\u0006\u0002\u0010\u0015¨\u0006\u0016"}, m61528d2 = {"getViewModel", "T", "Landroidx/lifecycle/ViewModel;", "Landroidx/lifecycle/ViewModelStoreOwner;", "(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModel;", "observeOnce", "", "Landroidx/lifecycle/MutableLiveData;", "owner", "Landroidx/lifecycle/LifecycleOwner;", Constants.TRANSLET_OUTPUT_PNAME, "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "observeOnceAll", "Landroidx/lifecycle/MediatorLiveData;", "", "sources", "", "Landroidx/lifecycle/LiveData;", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LifecycleOwner;[Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function0;)V", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nDataBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,65:1\n13374#2,3:66\n*S KotlinDebug\n*F\n+ 1 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n*L\n48#1:66,3\n*E\n"})
/* loaded from: classes7.dex */
public final class DataBindingKt {
    /* renamed from: d */
    public static final void m31918d(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* renamed from: e */
    public static final void m31919e(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* renamed from: f */
    public static final void m31920f(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final /* synthetic */ <T extends ViewModel> T getViewModel(ViewModelStoreOwner viewModelStoreOwner) {
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "<this>");
        ViewModelProvider viewModelProvider = new ViewModelProvider(viewModelStoreOwner);
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) viewModelProvider.get(ViewModel.class);
    }

    public static final <T> void observeOnce(@NotNull final MutableLiveData<T> mutableLiveData, @NotNull final LifecycleOwner owner, @NotNull final Function1<? super T, Unit> handler) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(handler, "handler");
        final Function1<T, Unit> function1 = new Function1<T, Unit>() { // from class: com.onyx.android.sdk.base.extension.DataBindingKt$observeOnce$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2((DataBindingKt$observeOnce$1<T>) obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(T t) {
                if (t == null) {
                    return;
                }
                handler.invoke(t);
            }
        };
        mutableLiveData.observe(owner, new Observer() { // from class: com.sunia.HTREnginev2.kse
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DataBindingKt.m31918d(Function1.this, obj);
            }
        });
        owner.getLifecycle().addObserver(new LifecycleDestroyObserver(new Function1<LifecyclePointObserver, Unit>() { // from class: com.onyx.android.sdk.base.extension.DataBindingKt$observeOnce$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LifecyclePointObserver lifecyclePointObserver) {
                invoke2(lifecyclePointObserver);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LifecyclePointObserver it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                mutableLiveData.setValue(null);
                owner.getLifecycle().removeObserver(it2);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void observeOnceAll(@NotNull final MediatorLiveData<Integer> mediatorLiveData, @NotNull final LifecycleOwner owner, @NotNull LiveData<?>[] sources, @NotNull final Function0<Unit> handler) {
        Intrinsics.checkNotNullParameter(mediatorLiveData, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(sources, "sources");
        Intrinsics.checkNotNullParameter(handler, "handler");
        final Ref.IntRef intRef = new Ref.IntRef();
        int length = sources.length;
        int i = 0;
        final int i2 = 0;
        while (i < length) {
            final PenViewModel$penType$1 penViewModel$penType$1 = sources[i];
            intRef.element += i2;
            final Function1 function1 = new Function1() { // from class: com.onyx.android.sdk.base.extension.DataBindingKt$observeOnceAll$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    m72176invoke(obj);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m72176invoke(Object obj) {
                    mediatorLiveData.removeSource(penViewModel$penType$1);
                    MediatorLiveData<Integer> mediatorLiveData2 = mediatorLiveData;
                    mediatorLiveData2.setValue(Integer.valueOf(((Number) AnyKt.getOrElse(mediatorLiveData2.getValue(), new Function0<Integer>() { // from class: com.onyx.android.sdk.base.extension.DataBindingKt$observeOnceAll$1$1.1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final Integer invoke() {
                            return 0;
                        }
                    })).intValue() + i2));
                }
            };
            mediatorLiveData.addSource(penViewModel$penType$1, new Observer() { // from class: com.sunia.HTREnginev2.ise
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    DataBindingKt.m31919e(Function1.this, obj);
                }
            });
            i++;
            i2++;
        }
        final Function1<Integer, Unit> function12 = new Function1<Integer, Unit>() { // from class: com.onyx.android.sdk.base.extension.DataBindingKt$observeOnceAll$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                Intrinsics.checkNotNull(num);
                if (num.intValue() >= Ref.IntRef.this.element) {
                    handler.invoke();
                    mediatorLiveData.removeObservers(owner);
                }
            }
        };
        mediatorLiveData.observe(owner, new Observer() { // from class: com.sunia.HTREnginev2.jse
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DataBindingKt.m31920f(Function1.this, obj);
            }
        });
    }
}
