package com.onyx.android.sdk.data.common.error;

import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.C7373R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.List;
import java.util.concurrent.TimeoutException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0002\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0006JB\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00052\u0018\b\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00172\u0018\b\u0002\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u0019J*\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u0004J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0006H\u0002JG\u0010\u001d\u001a\u00070\u001e¢\u0006\u0002\b\u001f*\u0006\u0012\u0002\b\u00030 2\u0018\b\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00172\u0018\b\u0002\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u0019J#\u0010!\u001a\b\u0012\u0004\u0012\u0002H#0\"\"\b\b\u0000\u0010#*\u00020\u0001*\b\u0012\u0004\u0012\u0002H#0\"H\u0086\bJ\n\u0010$\u001a\u00020\u0005*\u00020\u0005J\n\u0010%\u001a\u00020\u000b*\u00020\u0005J\u001a\u0010&\u001a\u00020\u001e\"\b\b\u0000\u0010#*\u00020\u0001*\b\u0012\u0004\u0012\u0002H#0\"JS\u0010'\u001a\u00070\u001e¢\u0006\u0002\b\u001f\"\b\b\u0000\u0010#*\u00020\u0001*\b\u0012\u0004\u0012\u0002H#0\"2\u0018\b\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00172\u0018\b\u0002\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u0019J$\u0010(\u001a\u00020\u0006*\u00020\u00052\u0018\b\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0017R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;", "", "()V", "DefaultErrorTransformer", "Lkotlin/Function1;", "", "Lcom/onyx/android/sdk/base/common/error/OnyxException;", "ignorableTypes", "", "", "assert", "", "assertion", "Lkotlin/Function0;", "", "message", "errorCodeToMessage", "", "code", "errorTypeToMessage", "e", "handle", "transformer", "Lcom/onyx/android/sdk/data/common/error/ErrorTransformer;", "preHandler", "Lcom/onyx/android/sdk/data/common/error/ErrorHandler;", "handleOnErrorCode", "handleFunc", "handleOnyxException", "executeWithErrorHandler", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/annotations/NonNull;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "handleTimeoutError", "Lio/reactivex/rxjava3/core/Observable;", "T", "mergeTimeoutError", "showTimeoutMessage", "subscribeSilently", "subscribeWithErrorHandler", Constants.ELEMNAME_TRANSFORM_STRING, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxErrorHandler {

    @NotNull
    private static final Function1<Throwable, OnyxException> DefaultErrorTransformer;

    @NotNull
    public static final OnyxErrorHandler INSTANCE = new OnyxErrorHandler();

    @NotNull
    private static final List<String> ignorableTypes;

    static {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"None", BaseError.UNDEFINED, BaseError.ACTION_ABORT, BaseError.NULL_OBJECT, BaseError.WORK_ON_MAIN_THREAD, "Timeout", ErrorType.DATA_FORMAT_ERROR, ErrorType.RESOURCE_NOT_FOUND});
        ignorableTypes = listOf;
        DefaultErrorTransformer = new Function1<Throwable, OnyxException>() { // from class: com.onyx.android.sdk.data.common.error.OnyxErrorHandler$DefaultErrorTransformer$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final OnyxException invoke(@NotNull Throwable e) {
                Intrinsics.checkNotNullParameter(e, "e");
                while (e instanceof CompositeException) {
                    e = ((CompositeException) e).getCause();
                    Intrinsics.checkNotNullExpressionValue(e, "<get-cause>(...)");
                }
                if (e instanceof OnyxException) {
                    return (OnyxException) e;
                }
                return OnyxException.INSTANCE.m31895of(e, BaseError.UNDEFINED);
            }
        };
    }

    private OnyxErrorHandler() {
    }

    public static /* synthetic */ void assert$default(OnyxErrorHandler onyxErrorHandler, Function0 function0, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = BaseError.ASSERT_FAIL;
        }
        onyxErrorHandler.m72248assert(function0, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Disposable executeWithErrorHandler$default(OnyxErrorHandler onyxErrorHandler, RxBaseAction rxBaseAction, Function1 function1, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = DefaultErrorTransformer;
        }
        if ((i & 2) != 0) {
            function12 = new Function1<OnyxException, Boolean>() { // from class: com.onyx.android.sdk.data.common.error.OnyxErrorHandler$executeWithErrorHandler$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull OnyxException it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.FALSE;
                }
            };
        }
        return onyxErrorHandler.executeWithErrorHandler(rxBaseAction, function1, function12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean handle$default(OnyxErrorHandler onyxErrorHandler, Throwable th, Function1 function1, Function1 function12, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = DefaultErrorTransformer;
        }
        if ((i & 4) != 0) {
            function12 = new Function1<OnyxException, Boolean>() { // from class: com.onyx.android.sdk.data.common.error.OnyxErrorHandler$handle$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull OnyxException it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.FALSE;
                }
            };
        }
        return onyxErrorHandler.handle(th, function1, function12);
    }

    private final boolean handleOnyxException(OnyxException e) {
        int errorTypeToMessage = errorTypeToMessage(e);
        if (errorTypeToMessage == -1) {
            return false;
        }
        ToastUtils.INSTANCE.show(errorTypeToMessage, true);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Disposable subscribeWithErrorHandler$default(OnyxErrorHandler onyxErrorHandler, Observable observable, Function1 function1, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = DefaultErrorTransformer;
        }
        if ((i & 2) != 0) {
            function12 = new Function1<OnyxException, Boolean>() { // from class: com.onyx.android.sdk.data.common.error.OnyxErrorHandler$subscribeWithErrorHandler$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull OnyxException it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.FALSE;
                }
            };
        }
        return onyxErrorHandler.subscribeWithErrorHandler(observable, function1, function12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OnyxException transform$default(OnyxErrorHandler onyxErrorHandler, Throwable th, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = DefaultErrorTransformer;
        }
        return onyxErrorHandler.transform(th, function1);
    }

    /* renamed from: assert */
    public final void m72248assert(@NotNull Function0<Boolean> assertion, @NotNull String message) {
        Intrinsics.checkNotNullParameter(assertion, "assertion");
        Intrinsics.checkNotNullParameter(message, "message");
        if (!assertion.invoke().booleanValue()) {
            throw OnyxException.INSTANCE.m31892of(BaseError.ASSERT_FAIL, message);
        }
    }

    public final int errorCodeToMessage(int code) {
        switch (code) {
            case ErrorCode.API_REQUEST_FREQUENT /* 100001 */:
                return C7373R.string.http_code_100_001;
            case ErrorCode.ACCOUNT_GOOGLE_UNMATCHED /* 102033 */:
                return C7373R.string.http_code_102_033;
            case ErrorCode.ACCOUNT_NOT_CONSISTENT /* 102100 */:
                return C7373R.string.http_code_102_100;
            case ErrorCode.MEMBER_HAS_BEEN /* 105001 */:
                return C7373R.string.http_code_105_001;
            default:
                switch (code) {
                    case 102001:
                        return C7373R.string.http_code_102_001;
                    case 102002:
                        return C7373R.string.http_code_102_002;
                    case ErrorCode.ACCOUNT_VERIFY_CODE_FREQUENT /* 102003 */:
                        return C7373R.string.http_code_102_003;
                    case ErrorCode.ACCOUNT_QR_CODE_EXPIRED /* 102004 */:
                        return C7373R.string.http_code_102_004;
                    case ErrorCode.ACCOUNT_PHONE_NOT_EXIST /* 102005 */:
                        return C7373R.string.http_code_102_005;
                    case ErrorCode.ACCOUNT_EMAIL_NOT_EXIST /* 102006 */:
                        return C7373R.string.http_code_102_006;
                    case ErrorCode.ACCOUNT_PHONE_NOT_REGISTERED /* 102007 */:
                        return C7373R.string.http_code_102_007;
                    case ErrorCode.ACCOUNT_EMAIL_NOT_REGISTERED /* 102008 */:
                        return C7373R.string.http_code_102_008;
                    case ErrorCode.ACCOUNT_NOT_EXIST /* 102009 */:
                        return C7373R.string.http_code_102_009;
                    case ErrorCode.ACCOUNT_PASSWORD_FAIL /* 102010 */:
                        return C7373R.string.http_code_102_010;
                    case ErrorCode.ACCOUNT_DESTROYED /* 102011 */:
                        return C7373R.string.http_code_102_011;
                    case ErrorCode.ACCOUNT_BANNED /* 102012 */:
                        return C7373R.string.http_code_102_012;
                    case ErrorCode.ACCOUNT_PHONE_BOUND_OTHERS /* 102013 */:
                        return C7373R.string.http_code_102_013;
                    case ErrorCode.ACCOUNT_EMAIL_BOUND_OTHERS /* 102014 */:
                        return C7373R.string.http_code_102_014;
                    case ErrorCode.ACCOUNT_WECHAT_BOUND_OTHERS /* 102015 */:
                        return C7373R.string.http_code_102_015;
                    case ErrorCode.ACCOUNT_HUAWEI_BOUND_OTHERS /* 102016 */:
                        return C7373R.string.http_code_102_016;
                    case ErrorCode.ACCOUNT_PHONE_SAME /* 102017 */:
                        return C7373R.string.http_code_102_017;
                    case ErrorCode.ACCOUNT_EMAIL_SAME /* 102018 */:
                        return C7373R.string.http_code_102_018;
                    case ErrorCode.ACCOUNT_WECHAT_UNMATCHED /* 102019 */:
                        return C7373R.string.http_code_102_019;
                    case ErrorCode.ACCOUNT_HUAWEI_UNMATCHED /* 102020 */:
                        return C7373R.string.http_code_102_020;
                    default:
                        switch (code) {
                            case ErrorCode.ACCOUNT_IMAGE_FORMAT_UNSUPPORTED /* 102023 */:
                                return C7373R.string.http_code_102_023;
                            case ErrorCode.ACCOUNT_SENSITIVE_WORDS /* 102024 */:
                                return C7373R.string.http_code_102_024;
                            case ErrorCode.ACCOUNT_VERIFY_CODE_QUOTA_USED_OUT /* 102025 */:
                                return C7373R.string.http_code_102_025;
                            case ErrorCode.ACCOUNT_EMAIL_FORMAT_ERROR /* 102026 */:
                                return C7373R.string.http_code_102_026;
                            case ErrorCode.ACCOUNT_PHONE_FORMAT_ERROR /* 102027 */:
                                return C7373R.string.http_code_102_027;
                            case ErrorCode.ACCOUNT_PHONE_AREA_FORMAT_ERROR /* 102028 */:
                                return C7373R.string.http_code_102_028;
                            case ErrorCode.ACCOUNT_ILLEGAL_IMAGE /* 102029 */:
                                return C7373R.string.http_code_102_029;
                            default:
                                switch (code) {
                                    case ErrorCode.ACCOUNT_MICROSOFT_UNMATCHED /* 102038 */:
                                        return C7373R.string.http_code_102_038;
                                    case ErrorCode.ACCOUNT_BAN_AREA_CODE /* 102039 */:
                                        return C7373R.string.http_code_102_039;
                                    case ErrorCode.FEEDBACK_SENSITIVE_WORDS /* 102040 */:
                                        return C7373R.string.http_code_102_040;
                                    default:
                                        switch (code) {
                                            case ErrorCode.DATA_NOT_EXIST /* 104001 */:
                                                return C7373R.string.http_code_104_001;
                                            case ErrorCode.DATA_HAS_BEEN /* 104002 */:
                                                return C7373R.string.http_code_104_002;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return errorCodeToMessage(r3.getCode());
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006a, code lost:
    
        if (r0.equals(com.onyx.android.sdk.data.common.error.ErrorType.VERIFY_FAIL) == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        if (r0.equals(com.onyx.android.sdk.data.common.error.ErrorType.REQUEST_FAIL) == false) goto L81;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000d. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int errorTypeToMessage(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.common.error.OnyxException r3) {
        /*
            r2 = this;
            java.lang.String r0 = "e"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = r3.getType()
            int r1 = r0.hashCode()
            switch(r1) {
                case -339952027: goto L64;
                case 4737224: goto L58;
                case 350741825: goto L4c;
                case 621842741: goto L40;
                case 785231124: goto L34;
                case 817055299: goto L28;
                case 1408032335: goto L1f;
                case 1548835742: goto L12;
                default: goto L10;
            }
        L10:
            goto L76
        L12:
            java.lang.String r2 = "Bitmap Too Large"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L1c
            goto L76
        L1c:
            int r2 = com.onyx.android.sdk.data.C7373R.string.bitmap_too_large
            goto L77
        L1f:
            java.lang.String r1 = "Request Fail"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L6d
            goto L76
        L28:
            java.lang.String r2 = "Resource Not Found"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L31
            goto L76
        L31:
            int r2 = com.onyx.android.sdk.data.C7373R.string.http_status_404
            goto L77
        L34:
            java.lang.String r2 = "Unauthorized"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L3d
            goto L76
        L3d:
            int r2 = com.onyx.android.sdk.data.C7373R.string.http_status_401
            goto L77
        L40:
            java.lang.String r2 = "Data Format Error"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L49
            goto L76
        L49:
            int r2 = com.onyx.android.sdk.data.C7373R.string.http_data_format_error
            goto L77
        L4c:
            java.lang.String r2 = "Timeout"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L55
            goto L76
        L55:
            int r2 = com.onyx.android.sdk.data.C7373R.string.http_timeout
            goto L77
        L58:
            java.lang.String r2 = "Network Check Fail"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L61
            goto L76
        L61:
            int r2 = com.onyx.android.sdk.data.C7373R.string.network_bad
            goto L77
        L64:
            java.lang.String r1 = "Verify Fail"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L6d
            goto L76
        L6d:
            int r3 = r3.getCode()
            int r2 = r2.errorCodeToMessage(r3)
            goto L77
        L76:
            r2 = -1
        L77:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.common.error.OnyxErrorHandler.errorTypeToMessage(com.onyx.android.sdk.base.common.error.OnyxException):int");
    }

    @NotNull
    public final Disposable executeWithErrorHandler(@NotNull RxBaseAction<?> rxBaseAction, @NotNull Function1<? super Throwable, OnyxException> transformer, @NotNull Function1<? super OnyxException, Boolean> preHandler) {
        Intrinsics.checkNotNullParameter(rxBaseAction, "<this>");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        Intrinsics.checkNotNullParameter(preHandler, "preHandler");
        return subscribeWithErrorHandler(rxBaseAction.build(), transformer, preHandler);
    }

    public final boolean handle(@NotNull Throwable e, @NotNull Function1<? super Throwable, OnyxException> transformer, @NotNull Function1<? super OnyxException, Boolean> preHandler) {
        Intrinsics.checkNotNullParameter(e, "e");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        Intrinsics.checkNotNullParameter(preHandler, "preHandler");
        OnyxException transform = transform(e, transformer);
        if (preHandler.invoke(transform).booleanValue()) {
            return true;
        }
        if (ignorableTypes.contains(transform.getType())) {
            Debug.INSTANCE.m32035d(OnyxErrorHandler.class, transform.getMessage(), new Object[0]);
            return true;
        }
        if (transform.getIgnorable()) {
            return true;
        }
        return handleOnyxException(transform);
    }

    public final void handleOnErrorCode(@NotNull Throwable e, int code, @NotNull Function1<? super OnyxException, Unit> handleFunc) {
        Intrinsics.checkNotNullParameter(e, "e");
        Intrinsics.checkNotNullParameter(handleFunc, "handleFunc");
        if ((e instanceof OnyxException) && ((OnyxException) e).getCode() == code) {
            handleFunc.invoke(e);
        }
    }

    @NotNull
    public final <T> Observable<T> handleTimeoutError(@NotNull Observable<T> observable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Observable<T> doOnError = observable.doOnError(new Consumer() { // from class: com.onyx.android.sdk.data.common.error.OnyxErrorHandler$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    @NotNull
    public final Throwable mergeTimeoutError(@NotNull Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        return ((th instanceof TimeoutException) || (th instanceof SocketTimeoutException) || (th instanceof UnknownHostException)) ? OnyxException.INSTANCE.m31893of("Timeout", "Timeout", 101).setIgnorable(true) : th;
    }

    public final void showTimeoutMessage(@NotNull Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Throwable mergeTimeoutError = mergeTimeoutError(th);
        OnyxException onyxException = mergeTimeoutError instanceof OnyxException ? (OnyxException) mergeTimeoutError : null;
        if (Intrinsics.areEqual(onyxException != null ? onyxException.getType() : null, "Timeout")) {
            ToastUtils.INSTANCE.show(C7373R.string.http_timeout, true);
        }
    }

    @NotNull
    public final <T> Disposable subscribeSilently(@NotNull Observable<T> observable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        return subscribeWithErrorHandler$default(this, observable, null, new Function1<OnyxException, Boolean>() { // from class: com.onyx.android.sdk.data.common.error.OnyxErrorHandler$subscribeSilently$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull OnyxException it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.TRUE;
            }
        }, 1, null);
    }

    @NotNull
    public final <T> Disposable subscribeWithErrorHandler(@NotNull Observable<T> observable, @NotNull final Function1<? super Throwable, OnyxException> transformer, @NotNull final Function1<? super OnyxException, Boolean> preHandler) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        Intrinsics.checkNotNullParameter(preHandler, "preHandler");
        Disposable subscribe = observable.subscribe(Functions.emptyConsumer(), new Consumer() { // from class: com.onyx.android.sdk.data.common.error.OnyxErrorHandler$subscribeWithErrorHandler$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (OnyxErrorHandler.INSTANCE.handle(it2, transformer, preHandler)) {
                    return;
                }
                Debug.INSTANCE.m32040d(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        return subscribe;
    }

    @NotNull
    public final OnyxException transform(@NotNull Throwable th, @NotNull Function1<? super Throwable, OnyxException> transformer) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        return transformer.invoke(th);
    }
}
