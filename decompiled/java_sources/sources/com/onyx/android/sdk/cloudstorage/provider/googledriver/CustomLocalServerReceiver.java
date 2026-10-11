package com.onyx.android.sdk.cloudstorage.provider.googledriver;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver;
import com.google.api.client.util.Throwables;
import com.onyx.android.sdk.base.common.CommonConstant;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.Semaphore;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.apache.http.cookie.ClientCookie;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.Connector;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.handler.AbstractHandler;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 &2\u00020\u0001:\u0003$%&B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B+\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\tB3\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u000bJ\b\u0010 \u001a\u00020\u0004H\u0016J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\u0004H\u0016R\u0011\u0010\n\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\r\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\r\"\u0004\b\u0014\u0010\u0011R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\u001d¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;", "Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;", "()V", Http2ExchangeCodec.f103778h, "", ClientCookie.PORT_ATTR, "", "successLandingPageUrl", "failureLandingPageUrl", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "callbackPath", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCallbackPath", "()Ljava/lang/String;", "code", "getCode", "setCode", "(Ljava/lang/String;)V", "error", "getError", "setError", "getHost", "getPort", "()I", "setPort", "(I)V", "server", "Lorg/mortbay/jetty/Server;", "waitUnlessSignaled", "Ljava/util/concurrent/Semaphore;", "getWaitUnlessSignaled", "()Ljava/util/concurrent/Semaphore;", "getRedirectUri", "stop", "", "waitForCode", "Builder", "CallbackHandler", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CustomLocalServerReceiver implements VerificationCodeReceiver {

    @NotNull
    private static final String CALLBACK_PATH = "/Callback";

    @NotNull
    private static final String LOCALHOST = "localhost";

    @NotNull
    private final String callbackPath;

    @Nullable
    private String code;

    @Nullable
    private String error;

    @Nullable
    private final String failureLandingPageUrl;

    @NotNull
    private final String host;
    private int port;

    @Nullable
    private Server server;

    @Nullable
    private final String successLandingPageUrl;

    @NotNull
    private final Semaphore waitUnlessSignaled;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\u0014\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;", "", "()V", "<set-?>", "", "callbackPath", "getCallbackPath", "()Ljava/lang/String;", "failureLandingPageUrl", Http2ExchangeCodec.f103778h, "getHost", "", ClientCookie.PORT_ATTR, "getPort", "()I", "successLandingPageUrl", PrivilegedApp.f6529f, "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;", "setCallbackPath", "setHost", "setLandingPages", "setPort", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {

        @Nullable
        private String failureLandingPageUrl;

        @Nullable
        private String successLandingPageUrl;

        @NotNull
        private String host = CustomLocalServerReceiver.LOCALHOST;
        private int port = -1;

        @NotNull
        private String callbackPath = CustomLocalServerReceiver.CALLBACK_PATH;

        @NotNull
        public final CustomLocalServerReceiver build() {
            return new CustomLocalServerReceiver(this.host, this.port, this.callbackPath, this.successLandingPageUrl, this.failureLandingPageUrl);
        }

        @NotNull
        public final String getCallbackPath() {
            return this.callbackPath;
        }

        @NotNull
        public final String getHost() {
            return this.host;
        }

        public final int getPort() {
            return this.port;
        }

        @NotNull
        public final Builder setCallbackPath(@NotNull String callbackPath) {
            Intrinsics.checkNotNullParameter(callbackPath, "callbackPath");
            this.callbackPath = callbackPath;
            return this;
        }

        @NotNull
        public final Builder setHost(@NotNull String host) {
            Intrinsics.checkNotNullParameter(host, "host");
            this.host = host;
            return this;
        }

        @NotNull
        public final Builder setLandingPages(@Nullable String successLandingPageUrl, @Nullable String failureLandingPageUrl) {
            this.successLandingPageUrl = successLandingPageUrl;
            this.failureLandingPageUrl = failureLandingPageUrl;
            return this;
        }

        @NotNull
        public final Builder setPort(int port) {
            this.port = port;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;", "Lorg/mortbay/jetty/handler/AbstractHandler;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)V", "handle", "", "target", "", AbstractLogger.REQUEST, "Ljavax/servlet/http/HttpServletRequest;", AbstractLogger.RESPONSE, "Ljavax/servlet/http/HttpServletResponse;", "dispatch", "", "writeLandingHtml", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public final class CallbackHandler extends AbstractHandler {
        public CallbackHandler() {
        }

        private final void writeLandingHtml(HttpServletResponse response) throws IOException {
            response.setStatus(200);
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.println("<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><title>OAuth 2.0 Authentication Token Received</title></head><body>" + ResManager.INSTANCE.getString(C7153R.string.google_drive_account_bind_tip) + "</body></html>");
            writer.flush();
        }

        @Override // org.mortbay.jetty.Handler
        public void handle(@NotNull String target, @NotNull HttpServletRequest request, @NotNull HttpServletResponse response, int dispatch) throws IOException {
            Intrinsics.checkNotNullParameter(target, "target");
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(response, "response");
            Debug debug = Debug.INSTANCE;
            debug.m32035d(CustomLocalServerReceiver.class, CustomLocalServerReceiver.this + " handle(), CALLBACK_PATH : /Callback , target : " + target, new Object[0]);
            if (Intrinsics.areEqual(CustomLocalServerReceiver.CALLBACK_PATH, target)) {
                try {
                    debug.m32035d(CustomLocalServerReceiver.class, CustomLocalServerReceiver.this + " request info : url = " + ((Object) request.getRequestURL()), new Object[0]);
                    ((Request) request).setHandled(true);
                    CustomLocalServerReceiver.this.setError(request.getParameter("error"));
                    CustomLocalServerReceiver.this.setCode(request.getParameter("code"));
                    debug.m32035d(CustomLocalServerReceiver.class, CustomLocalServerReceiver.this + " receiver_parameter :  error : " + CustomLocalServerReceiver.this.getError() + " code : " + CustomLocalServerReceiver.this.getCode() + " successLandingPageUrl :  " + CustomLocalServerReceiver.this.successLandingPageUrl + " failureLandingPageUrl : " + CustomLocalServerReceiver.this.failureLandingPageUrl, new Object[0]);
                    if (CustomLocalServerReceiver.this.getError() == null && CustomLocalServerReceiver.this.successLandingPageUrl != null) {
                        response.sendRedirect(CustomLocalServerReceiver.this.successLandingPageUrl);
                    } else if (CustomLocalServerReceiver.this.getError() == null || CustomLocalServerReceiver.this.failureLandingPageUrl == null) {
                        writeLandingHtml(response);
                    } else {
                        response.sendRedirect(CustomLocalServerReceiver.this.failureLandingPageUrl);
                    }
                    response.flushBuffer();
                } finally {
                    CustomLocalServerReceiver.this.getWaitUnlessSignaled().release();
                }
            }
        }
    }

    public CustomLocalServerReceiver(@NotNull String host, int i, @NotNull String callbackPath, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(callbackPath, "callbackPath");
        this.host = host;
        this.port = i;
        this.callbackPath = callbackPath;
        this.successLandingPageUrl = str;
        this.failureLandingPageUrl = str2;
        this.waitUnlessSignaled = new Semaphore(0);
    }

    @NotNull
    public final String getCallbackPath() {
        return this.callbackPath;
    }

    @Nullable
    public final String getCode() {
        return this.code;
    }

    @Nullable
    public final String getError() {
        return this.error;
    }

    @NotNull
    public final String getHost() {
        return this.host;
    }

    public final int getPort() {
        return this.port;
    }

    @Override // com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver
    @NotNull
    public String getRedirectUri() throws IOException {
        int i = this.port;
        if (i == -1) {
            i = 0;
        }
        Server server = new Server(i);
        this.server = server;
        Intrinsics.checkNotNull(server);
        Connector connector = server.getConnectors()[0];
        connector.setHost(this.host);
        Server server2 = this.server;
        Intrinsics.checkNotNull(server2);
        server2.addHandler(new CallbackHandler());
        try {
            Server server3 = this.server;
            Intrinsics.checkNotNull(server3);
            server3.start();
            Debug debug = Debug.INSTANCE;
            debug.m32035d(CustomLocalServerReceiver.class, "getRedirectUri start : ", new Object[0]);
            this.port = connector.getLocalPort();
            debug.m32035d(CustomLocalServerReceiver.class, "RedirectUri : http://" + this.host + ':' + this.port + this.callbackPath, new Object[0]);
            return CommonConstant.SCHEME_HTTP + this.host + ':' + this.port + this.callbackPath;
        } catch (Exception e) {
            Debug.INSTANCE.m32035d(CustomLocalServerReceiver.class, "getRedirectUri error : " + e.getMessage(), new Object[0]);
            Throwables.propagateIfPossible(e);
            throw new IOException(e);
        }
    }

    @NotNull
    public final Semaphore getWaitUnlessSignaled() {
        return this.waitUnlessSignaled;
    }

    public final void setCode(@Nullable String str) {
        this.code = str;
    }

    public final void setError(@Nullable String str) {
        this.error = str;
    }

    public final void setPort(int i) {
        this.port = i;
    }

    @Override // com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver
    public void stop() throws IOException {
        Debug debug = Debug.INSTANCE;
        debug.m32035d(CustomLocalServerReceiver.class, "stop ...... ", new Object[0]);
        this.waitUnlessSignaled.release();
        Server server = this.server;
        if (server != null) {
            try {
                Intrinsics.checkNotNull(server);
                server.stop();
                debug.m32035d(CustomLocalServerReceiver.class, "server stop ...... ", new Object[0]);
                this.server = null;
            } catch (Exception e) {
                Debug.INSTANCE.m32035d(CustomLocalServerReceiver.class, "server.stop() happen exception  : " + e.getMessage(), new Object[0]);
                Throwables.propagateIfPossible(e);
                throw new IOException(e);
            }
        }
    }

    @Override // com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver
    @NotNull
    public String waitForCode() throws IOException {
        this.waitUnlessSignaled.acquireUninterruptibly();
        if (this.error == null) {
            Debug.INSTANCE.m32035d(CustomLocalServerReceiver.class, "code : " + this.code, new Object[0]);
            String str = this.code;
            Intrinsics.checkNotNull(str);
            return str;
        }
        Debug.INSTANCE.m32035d(CustomLocalServerReceiver.class, "User authorization failed (" + this.error + ')', new Object[0]);
        throw new IOException("User authorization failed (" + this.error + ')');
    }

    public CustomLocalServerReceiver() {
        this(LOCALHOST, -1, CALLBACK_PATH, null, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomLocalServerReceiver(@NotNull String host, int i, @Nullable String str, @Nullable String str2) {
        this(host, i, CALLBACK_PATH, str, str2);
        Intrinsics.checkNotNullParameter(host, "host");
    }
}
