package retrofit2;

import okhttp3.Headers;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes16.dex */
public final class Response<T> {

    /* renamed from: a */
    public final okhttp3.Response f116214a;

    /* renamed from: b */
    public final T f116215b;

    /* renamed from: c */
    public final ResponseBody f116216c;

    public Response(okhttp3.Response response, T t, ResponseBody responseBody) {
        this.f116214a = response;
        this.f116215b = t;
        this.f116216c = responseBody;
    }

    public static <T> Response<T> error(int i, ResponseBody responseBody) {
        if (i >= 400) {
            return error(responseBody, new Response.Builder().code(i).protocol(Protocol.HTTP_1_1).request(new Request.Builder().url("http://localhost/").build()).build());
        }
        throw new IllegalArgumentException("code < 400: " + i);
    }

    public static <T> Response<T> success(T t) {
        return success(t, new Response.Builder().code(200).message(HttpStatus.f114656OK).protocol(Protocol.HTTP_1_1).request(new Request.Builder().url("http://localhost/").build()).build());
    }

    public T body() {
        return this.f116215b;
    }

    public int code() {
        return this.f116214a.code();
    }

    public ResponseBody errorBody() {
        return this.f116216c;
    }

    public Headers headers() {
        return this.f116214a.headers();
    }

    public boolean isSuccessful() {
        return this.f116214a.isSuccessful();
    }

    public String message() {
        return this.f116214a.message();
    }

    public okhttp3.Response raw() {
        return this.f116214a;
    }

    public static <T> Response<T> error(ResponseBody responseBody, okhttp3.Response response) {
        if (responseBody == null) {
            throw new NullPointerException("body == null");
        }
        if (response != null) {
            if (!response.isSuccessful()) {
                return new Response<>(response, null, responseBody);
            }
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        throw new NullPointerException("rawResponse == null");
    }

    public static <T> Response<T> success(T t, Headers headers) {
        if (headers != null) {
            return success(t, new Response.Builder().code(200).message(HttpStatus.f114656OK).protocol(Protocol.HTTP_1_1).headers(headers).request(new Request.Builder().url("http://localhost/").build()).build());
        }
        throw new NullPointerException("headers == null");
    }

    public static <T> Response<T> success(T t, okhttp3.Response response) {
        if (response != null) {
            if (response.isSuccessful()) {
                return new Response<>(response, t, null);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        throw new NullPointerException("rawResponse == null");
    }
}
