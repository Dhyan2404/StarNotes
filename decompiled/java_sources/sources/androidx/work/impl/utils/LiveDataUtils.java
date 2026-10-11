package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class LiveDataUtils {

    /* JADX INFO: Add missing generic type declarations: [In] */
    /* renamed from: androidx.work.impl.utils.LiveDataUtils$a */
    /* loaded from: classes3.dex */
    public class C1667a<In> implements Observer<In> {

        /* renamed from: a */
        public Out f11933a = null;

        /* renamed from: b */
        public final /* synthetic */ TaskExecutor f11934b;

        /* renamed from: c */
        public final /* synthetic */ Object f11935c;

        /* renamed from: d */
        public final /* synthetic */ Function f11936d;

        /* renamed from: e */
        public final /* synthetic */ MediatorLiveData f11937e;

        /* renamed from: androidx.work.impl.utils.LiveDataUtils$a$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Object f11938e;

            public a(final Object val$input) {
                this.f11938e = val$input;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, Out] */
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C1667a.this.f11935c) {
                    ?? apply = C1667a.this.f11936d.apply(this.f11938e);
                    C1667a c1667a = C1667a.this;
                    Out out = c1667a.f11933a;
                    if (out == 0 && apply != 0) {
                        c1667a.f11933a = apply;
                        c1667a.f11937e.postValue(apply);
                    } else if (out != 0 && !out.equals(apply)) {
                        C1667a c1667a2 = C1667a.this;
                        c1667a2.f11933a = apply;
                        c1667a2.f11937e.postValue(apply);
                    }
                }
            }
        }

        public C1667a(final TaskExecutor val$workTaskExecutor, final Object val$lock, final Function val$mappingMethod, final MediatorLiveData val$outputLiveData) {
            this.f11934b = val$workTaskExecutor;
            this.f11935c = val$lock;
            this.f11936d = val$mappingMethod;
            this.f11937e = val$outputLiveData;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable final In input) {
            this.f11934b.executeOnTaskThread(new a(input));
        }
    }

    @NonNull
    @SuppressLint({"LambdaLast"})
    public static <In, Out> LiveData<Out> dedupedMappedLiveDataFor(@NonNull LiveData<In> inputLiveData, @NonNull final Function<In, Out> mappingMethod, @NonNull final TaskExecutor workTaskExecutor) {
        Object obj = new Object();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(inputLiveData, new C1667a(workTaskExecutor, obj, mappingMethod, mediatorLiveData));
        return mediatorLiveData;
    }
}
