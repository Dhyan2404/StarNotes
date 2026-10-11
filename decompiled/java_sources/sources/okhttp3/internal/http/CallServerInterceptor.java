package okhttp3.internal.http;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import okhttp3.Interceptor;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "", "code", "", "a", Constants.HASIDCALL_INDEX_SIG, "forWebSocket", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class CallServerInterceptor implements Interceptor {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean forWebSocket;

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    /* renamed from: a */
    public final boolean m64886a(int code) {
        if (code == 100) {
            return true;
        }
        return 102 <= code && code < 200;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0151, code lost:
    
        if (r14 != false) goto L58;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0 A[Catch: IOException -> 0x019f, TryCatch #3 {IOException -> 0x019f, blocks: (B:63:0x00a9, B:65:0x00b2, B:22:0x00b6, B:24:0x00e0, B:26:0x00e9, B:27:0x00ec, B:28:0x0110, B:32:0x011b, B:33:0x013a, B:35:0x0148, B:43:0x015e, B:45:0x0164, B:48:0x0171, B:50:0x018b, B:51:0x0193, B:52:0x019d, B:60:0x0153, B:61:0x012a), top: B:62:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0148 A[Catch: IOException -> 0x019f, TryCatch #3 {IOException -> 0x019f, blocks: (B:63:0x00a9, B:65:0x00b2, B:22:0x00b6, B:24:0x00e0, B:26:0x00e9, B:27:0x00ec, B:28:0x0110, B:32:0x011b, B:33:0x013a, B:35:0x0148, B:43:0x015e, B:45:0x0164, B:48:0x0171, B:50:0x018b, B:51:0x0193, B:52:0x019d, B:60:0x0153, B:61:0x012a), top: B:62:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0164 A[Catch: IOException -> 0x019f, TryCatch #3 {IOException -> 0x019f, blocks: (B:63:0x00a9, B:65:0x00b2, B:22:0x00b6, B:24:0x00e0, B:26:0x00e9, B:27:0x00ec, B:28:0x0110, B:32:0x011b, B:33:0x013a, B:35:0x0148, B:43:0x015e, B:45:0x0164, B:48:0x0171, B:50:0x018b, B:51:0x0193, B:52:0x019d, B:60:0x0153, B:61:0x012a), top: B:62:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0171 A[Catch: IOException -> 0x019f, TryCatch #3 {IOException -> 0x019f, blocks: (B:63:0x00a9, B:65:0x00b2, B:22:0x00b6, B:24:0x00e0, B:26:0x00e9, B:27:0x00ec, B:28:0x0110, B:32:0x011b, B:33:0x013a, B:35:0x0148, B:43:0x015e, B:45:0x0164, B:48:0x0171, B:50:0x018b, B:51:0x0193, B:52:0x019d, B:60:0x0153, B:61:0x012a), top: B:62:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v21, types: [okhttp3.Response$Builder] */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    @Override // okhttp3.Interceptor
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(@org.jetbrains.annotations.NotNull okhttp3.Interceptor.Chain r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.CallServerInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
