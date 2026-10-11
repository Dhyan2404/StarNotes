package org.apache.http.auth;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.util.Queue;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class AuthState {

    /* renamed from: a */
    public AuthProtocolState f110109a = AuthProtocolState.UNCHALLENGED;

    /* renamed from: b */
    public AuthScheme f110110b;

    /* renamed from: c */
    public AuthScope f110111c;

    /* renamed from: d */
    public Credentials f110112d;

    /* renamed from: e */
    public Queue<AuthOption> f110113e;

    public Queue<AuthOption> getAuthOptions() {
        return this.f110113e;
    }

    public AuthScheme getAuthScheme() {
        return this.f110110b;
    }

    @Deprecated
    public AuthScope getAuthScope() {
        return this.f110111c;
    }

    public Credentials getCredentials() {
        return this.f110112d;
    }

    public AuthProtocolState getState() {
        return this.f110109a;
    }

    public boolean hasAuthOptions() {
        Queue<AuthOption> queue = this.f110113e;
        return (queue == null || queue.isEmpty()) ? false : true;
    }

    @Deprecated
    public void invalidate() {
        reset();
    }

    public boolean isConnectionBased() {
        AuthScheme authScheme = this.f110110b;
        return authScheme != null && authScheme.isConnectionBased();
    }

    @Deprecated
    public boolean isValid() {
        return this.f110110b != null;
    }

    public void reset() {
        this.f110109a = AuthProtocolState.UNCHALLENGED;
        this.f110113e = null;
        this.f110110b = null;
        this.f110111c = null;
        this.f110112d = null;
    }

    @Deprecated
    public void setAuthScheme(AuthScheme authScheme) {
        if (authScheme == null) {
            reset();
        } else {
            this.f110110b = authScheme;
        }
    }

    @Deprecated
    public void setAuthScope(AuthScope authScope) {
        this.f110111c = authScope;
    }

    @Deprecated
    public void setCredentials(Credentials credentials) {
        this.f110112d = credentials;
    }

    public void setState(AuthProtocolState authProtocolState) {
        if (authProtocolState == null) {
            authProtocolState = AuthProtocolState.UNCHALLENGED;
        }
        this.f110109a = authProtocolState;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("state:");
        sb.append(this.f110109a);
        sb.append(AndroidTreeView.f47214k);
        if (this.f110110b != null) {
            sb.append("auth scheme:");
            sb.append(this.f110110b.getSchemeName());
            sb.append(AndroidTreeView.f47214k);
        }
        if (this.f110112d != null) {
            sb.append("credentials present");
        }
        return sb.toString();
    }

    public void update(AuthScheme authScheme, Credentials credentials) {
        Args.notNull(authScheme, "Auth scheme");
        Args.notNull(credentials, "Credentials");
        this.f110110b = authScheme;
        this.f110112d = credentials;
        this.f110113e = null;
    }

    public void update(Queue<AuthOption> queue) {
        Args.notEmpty(queue, "Queue of auth options");
        this.f110113e = queue;
        this.f110110b = null;
        this.f110112d = null;
    }
}
