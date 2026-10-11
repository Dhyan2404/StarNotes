package retrofit2;

import com.sunia.HTREnginev2.jzn;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import okhttp3.Request;
import retrofit2.CallAdapter;

/* renamed from: retrofit2.c */
/* loaded from: classes16.dex */
public final class C20498c extends CallAdapter.Factory {

    /* renamed from: a */
    public final Executor f116243a;

    /* renamed from: retrofit2.c$a */
    /* loaded from: classes16.dex */
    public class a implements CallAdapter<Call<?>> {

        /* renamed from: a */
        public final /* synthetic */ Type f116244a;

        public a(Type type) {
            this.f116244a = type;
        }

        @Override // retrofit2.CallAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public <R> Call<R> adapt(Call<R> call) {
            return new b(C20498c.this.f116243a, call);
        }

        @Override // retrofit2.CallAdapter
        public Type responseType() {
            return this.f116244a;
        }
    }

    /* renamed from: retrofit2.c$b */
    /* loaded from: classes16.dex */
    public static final class b<T> implements Call<T> {

        /* renamed from: e */
        public final Executor f116246e;

        /* renamed from: f */
        public final Call<T> f116247f;

        /* renamed from: retrofit2.c$b$a */
        /* loaded from: classes16.dex */
        public class a implements Callback<T> {

            /* renamed from: a */
            public final /* synthetic */ Callback f116248a;

            /* renamed from: retrofit2.c$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes16.dex */
            public class RunnableC20624a implements Runnable {

                /* renamed from: e */
                public final /* synthetic */ Response f116250e;

                public RunnableC20624a(Response response) {
                    this.f116250e = response;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.f116247f.isCanceled()) {
                        a aVar = a.this;
                        aVar.f116248a.onFailure(b.this, new IOException("Canceled"));
                    } else {
                        a aVar2 = a.this;
                        aVar2.f116248a.onResponse(b.this, this.f116250e);
                    }
                }
            }

            /* renamed from: retrofit2.c$b$a$b, reason: collision with other inner class name */
            /* loaded from: classes16.dex */
            public class RunnableC20625b implements Runnable {

                /* renamed from: e */
                public final /* synthetic */ Throwable f116252e;

                public RunnableC20625b(Throwable th) {
                    this.f116252e = th;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a aVar = a.this;
                    aVar.f116248a.onFailure(b.this, this.f116252e);
                }
            }

            public a(Callback callback) {
                this.f116248a = callback;
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<T> call, Throwable th) {
                b.this.f116246e.execute(new RunnableC20625b(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call, Response<T> response) {
                b.this.f116246e.execute(new RunnableC20624a(response));
            }
        }

        public b(Executor executor, Call<T> call) {
            this.f116246e = executor;
            this.f116247f = call;
        }

        @Override // retrofit2.Call
        public void cancel() {
            this.f116247f.cancel();
        }

        @Override // retrofit2.Call
        public void enqueue(Callback<T> callback) {
            if (callback == null) {
                throw new NullPointerException("callback == null");
            }
            this.f116247f.enqueue(new a(callback));
        }

        @Override // retrofit2.Call
        public Response<T> execute() throws IOException {
            return this.f116247f.execute();
        }

        @Override // retrofit2.Call
        public boolean isCanceled() {
            return this.f116247f.isCanceled();
        }

        @Override // retrofit2.Call
        public boolean isExecuted() {
            return this.f116247f.isExecuted();
        }

        @Override // retrofit2.Call
        public Request request() {
            return this.f116247f.request();
        }

        @Override // retrofit2.Call
        public Call<T> clone() {
            return new b(this.f116246e, this.f116247f.clone());
        }
    }

    public C20498c(Executor executor) {
        this.f116243a = executor;
    }

    @Override // retrofit2.CallAdapter.Factory
    public CallAdapter<Call<?>> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (CallAdapter.Factory.getRawType(type) != Call.class) {
            return null;
        }
        return new a(jzn.m55082g(type));
    }
}
