package retrofit2;

import com.sunia.HTREnginev2.jzn;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.CallAdapter;

/* renamed from: retrofit2.b */
/* loaded from: classes16.dex */
public final class C20497b extends CallAdapter.Factory {

    /* renamed from: a */
    public static final CallAdapter.Factory f116240a = new C20497b();

    /* renamed from: retrofit2.b$a */
    /* loaded from: classes16.dex */
    public class a implements CallAdapter<Call<?>> {

        /* renamed from: a */
        public final /* synthetic */ Type f116241a;

        public a(Type type) {
            this.f116241a = type;
        }

        @Override // retrofit2.CallAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public <R> Call<R> adapt(Call<R> call) {
            return call;
        }

        @Override // retrofit2.CallAdapter
        public Type responseType() {
            return this.f116241a;
        }
    }

    @Override // retrofit2.CallAdapter.Factory
    public CallAdapter<?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (CallAdapter.Factory.getRawType(type) != Call.class) {
            return null;
        }
        return new a(jzn.m55082g(type));
    }
}
