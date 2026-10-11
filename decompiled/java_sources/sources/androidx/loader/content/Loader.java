package androidx.loader.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.DebugUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public class Loader<D> {

    /* renamed from: a */
    public int f8041a;

    /* renamed from: b */
    public OnLoadCompleteListener<D> f8042b;

    /* renamed from: c */
    public OnLoadCanceledListener<D> f8043c;

    /* renamed from: d */
    public Context f8044d;

    /* renamed from: e */
    public boolean f8045e = false;

    /* renamed from: f */
    public boolean f8046f = false;

    /* renamed from: g */
    public boolean f8047g = true;

    /* renamed from: h */
    public boolean f8048h = false;

    /* renamed from: i */
    public boolean f8049i = false;

    /* loaded from: classes3.dex */
    public final class ForceLoadContentObserver extends ContentObserver {
        public ForceLoadContentObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Loader.this.onContentChanged();
        }
    }

    /* loaded from: classes3.dex */
    public interface OnLoadCanceledListener<D> {
        void onLoadCanceled(@NonNull Loader<D> loader);
    }

    /* loaded from: classes3.dex */
    public interface OnLoadCompleteListener<D> {
        void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d);
    }

    public Loader(@NonNull Context context) {
        this.f8044d = context.getApplicationContext();
    }

    @MainThread
    public void abandon() {
        this.f8046f = true;
        onAbandon();
    }

    @MainThread
    public boolean cancelLoad() {
        return onCancelLoad();
    }

    public void commitContentChanged() {
        this.f8049i = false;
    }

    @NonNull
    public String dataToString(@Nullable D d) {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(d, sb);
        sb.append("}");
        return sb.toString();
    }

    @MainThread
    public void deliverCancellation() {
        OnLoadCanceledListener<D> onLoadCanceledListener = this.f8043c;
        if (onLoadCanceledListener != null) {
            onLoadCanceledListener.onLoadCanceled(this);
        }
    }

    @MainThread
    public void deliverResult(@Nullable D d) {
        OnLoadCompleteListener<D> onLoadCompleteListener = this.f8042b;
        if (onLoadCompleteListener != null) {
            onLoadCompleteListener.onLoadComplete(this, d);
        }
    }

    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f8041a);
        printWriter.print(" mListener=");
        printWriter.println(this.f8042b);
        if (this.f8045e || this.f8048h || this.f8049i) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f8045e);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f8048h);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f8049i);
        }
        if (this.f8046f || this.f8047g) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f8046f);
            printWriter.print(" mReset=");
            printWriter.println(this.f8047g);
        }
    }

    @MainThread
    public void forceLoad() {
        onForceLoad();
    }

    @NonNull
    public Context getContext() {
        return this.f8044d;
    }

    public int getId() {
        return this.f8041a;
    }

    public boolean isAbandoned() {
        return this.f8046f;
    }

    public boolean isReset() {
        return this.f8047g;
    }

    public boolean isStarted() {
        return this.f8045e;
    }

    @MainThread
    public void onAbandon() {
    }

    @MainThread
    public boolean onCancelLoad() {
        return false;
    }

    @MainThread
    public void onContentChanged() {
        if (this.f8045e) {
            forceLoad();
        } else {
            this.f8048h = true;
        }
    }

    @MainThread
    public void onForceLoad() {
    }

    @MainThread
    public void onReset() {
    }

    @MainThread
    public void onStartLoading() {
    }

    @MainThread
    public void onStopLoading() {
    }

    @MainThread
    public void registerListener(int i, @NonNull OnLoadCompleteListener<D> onLoadCompleteListener) {
        if (this.f8042b != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.f8042b = onLoadCompleteListener;
        this.f8041a = i;
    }

    @MainThread
    public void registerOnLoadCanceledListener(@NonNull OnLoadCanceledListener<D> onLoadCanceledListener) {
        if (this.f8043c != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.f8043c = onLoadCanceledListener;
    }

    @MainThread
    public void reset() {
        onReset();
        this.f8047g = true;
        this.f8045e = false;
        this.f8046f = false;
        this.f8048h = false;
        this.f8049i = false;
    }

    public void rollbackContentChanged() {
        if (this.f8049i) {
            onContentChanged();
        }
    }

    @MainThread
    public final void startLoading() {
        this.f8045e = true;
        this.f8047g = false;
        this.f8046f = false;
        onStartLoading();
    }

    @MainThread
    public void stopLoading() {
        this.f8045e = false;
        onStopLoading();
    }

    public boolean takeContentChanged() {
        boolean z = this.f8048h;
        this.f8048h = false;
        this.f8049i |= z;
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(this, sb);
        sb.append(" id=");
        sb.append(this.f8041a);
        sb.append("}");
        return sb.toString();
    }

    @MainThread
    public void unregisterListener(@NonNull OnLoadCompleteListener<D> onLoadCompleteListener) {
        OnLoadCompleteListener<D> onLoadCompleteListener2 = this.f8042b;
        if (onLoadCompleteListener2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (onLoadCompleteListener2 != onLoadCompleteListener) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.f8042b = null;
    }

    @MainThread
    public void unregisterOnLoadCanceledListener(@NonNull OnLoadCanceledListener<D> onLoadCanceledListener) {
        OnLoadCanceledListener<D> onLoadCanceledListener2 = this.f8043c;
        if (onLoadCanceledListener2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (onLoadCanceledListener2 != onLoadCanceledListener) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.f8043c = null;
    }
}
