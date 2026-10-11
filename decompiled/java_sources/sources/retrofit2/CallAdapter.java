package retrofit2;

import com.sunia.HTREnginev2.jzn;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes16.dex */
public interface CallAdapter<T> {

    /* loaded from: classes16.dex */
    public static abstract class Factory {
        public static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return jzn.m55084i(i, parameterizedType);
        }

        public static Class<?> getRawType(Type type) {
            return jzn.m55085j(type);
        }

        public abstract CallAdapter<?> get(Type type, Annotation[] annotationArr, Retrofit retrofit);
    }

    <R> T adapt(Call<R> call);

    Type responseType();
}
