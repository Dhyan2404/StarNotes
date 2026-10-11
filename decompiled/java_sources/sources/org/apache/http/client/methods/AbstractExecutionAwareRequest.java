package org.apache.http.client.methods;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicMarkableReference;
import org.apache.http.HttpRequest;
import org.apache.http.client.utils.CloneUtils;
import org.apache.http.concurrent.Cancellable;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.HeaderGroup;
import org.apache.http.params.HttpParams;

/* loaded from: classes12.dex */
public abstract class AbstractExecutionAwareRequest extends AbstractHttpMessage implements HttpExecutionAware, AbortableHttpRequest, Cloneable, HttpRequest {
    private final AtomicMarkableReference<Cancellable> cancellableRef = new AtomicMarkableReference<>(null, false);

    /* renamed from: org.apache.http.client.methods.AbstractExecutionAwareRequest$a */
    /* loaded from: classes12.dex */
    public class C19335a implements Cancellable {

        /* renamed from: e */
        public final /* synthetic */ ClientConnectionRequest f110166e;

        public C19335a(ClientConnectionRequest clientConnectionRequest) {
            this.f110166e = clientConnectionRequest;
        }

        @Override // org.apache.http.concurrent.Cancellable
        public boolean cancel() {
            this.f110166e.abortRequest();
            return true;
        }
    }

    /* renamed from: org.apache.http.client.methods.AbstractExecutionAwareRequest$b */
    /* loaded from: classes12.dex */
    public class C19336b implements Cancellable {

        /* renamed from: e */
        public final /* synthetic */ ConnectionReleaseTrigger f110168e;

        public C19336b(ConnectionReleaseTrigger connectionReleaseTrigger) {
            this.f110168e = connectionReleaseTrigger;
        }

        @Override // org.apache.http.concurrent.Cancellable
        public boolean cancel() {
            try {
                this.f110168e.abortConnection();
                return true;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // org.apache.http.client.methods.AbortableHttpRequest
    public void abort() {
        while (!this.cancellableRef.isMarked()) {
            Cancellable reference = this.cancellableRef.getReference();
            if (this.cancellableRef.compareAndSet(reference, reference, false, true) && reference != null) {
                reference.cancel();
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        AbstractExecutionAwareRequest abstractExecutionAwareRequest = (AbstractExecutionAwareRequest) super.clone();
        abstractExecutionAwareRequest.headergroup = (HeaderGroup) CloneUtils.cloneObject(this.headergroup);
        abstractExecutionAwareRequest.params = (HttpParams) CloneUtils.cloneObject(this.params);
        return abstractExecutionAwareRequest;
    }

    @Deprecated
    public void completed() {
        this.cancellableRef.set(null, false);
    }

    @Override // org.apache.http.client.methods.HttpExecutionAware
    public boolean isAborted() {
        return this.cancellableRef.isMarked();
    }

    public void reset() {
        boolean isMarked;
        Cancellable reference;
        do {
            isMarked = this.cancellableRef.isMarked();
            reference = this.cancellableRef.getReference();
            if (reference != null) {
                reference.cancel();
            }
        } while (!this.cancellableRef.compareAndSet(reference, null, isMarked, false));
    }

    @Override // org.apache.http.client.methods.HttpExecutionAware
    public void setCancellable(Cancellable cancellable) {
        if (this.cancellableRef.compareAndSet(this.cancellableRef.getReference(), cancellable, false, false)) {
            return;
        }
        cancellable.cancel();
    }

    @Override // org.apache.http.client.methods.AbortableHttpRequest
    @Deprecated
    public void setConnectionRequest(ClientConnectionRequest clientConnectionRequest) {
        setCancellable(new C19335a(clientConnectionRequest));
    }

    @Override // org.apache.http.client.methods.AbortableHttpRequest
    @Deprecated
    public void setReleaseTrigger(ConnectionReleaseTrigger connectionReleaseTrigger) {
        setCancellable(new C19336b(connectionReleaseTrigger));
    }
}
