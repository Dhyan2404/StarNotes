package androidx.loader.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContentResolverCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.OperationCanceledException;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class CursorLoader extends AsyncTaskLoader<Cursor> {

    /* renamed from: r */
    public final Loader<Cursor>.ForceLoadContentObserver f8033r;

    /* renamed from: s */
    public Uri f8034s;

    /* renamed from: t */
    public String[] f8035t;

    /* renamed from: u */
    public String f8036u;

    /* renamed from: v */
    public String[] f8037v;

    /* renamed from: w */
    public String f8038w;

    /* renamed from: x */
    public Cursor f8039x;

    /* renamed from: y */
    public CancellationSignal f8040y;

    public CursorLoader(@NonNull Context context) {
        super(context);
        this.f8033r = new Loader.ForceLoadContentObserver();
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public void cancelLoadInBackground() {
        super.cancelLoadInBackground();
        synchronized (this) {
            CancellationSignal cancellationSignal = this.f8040y;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
            }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader, androidx.loader.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.f8034s);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.f8035t));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.f8036u);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.f8037v));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.f8038w);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.f8039x);
        printWriter.print(str);
        printWriter.print("mContentChanged=");
        printWriter.println(this.f8048h);
    }

    @Nullable
    public String[] getProjection() {
        return this.f8035t;
    }

    @Nullable
    public String getSelection() {
        return this.f8036u;
    }

    @Nullable
    public String[] getSelectionArgs() {
        return this.f8037v;
    }

    @Nullable
    public String getSortOrder() {
        return this.f8038w;
    }

    @NonNull
    public Uri getUri() {
        return this.f8034s;
    }

    @Override // androidx.loader.content.Loader
    public void onReset() {
        super.onReset();
        onStopLoading();
        Cursor cursor = this.f8039x;
        if (cursor != null && !cursor.isClosed()) {
            this.f8039x.close();
        }
        this.f8039x = null;
    }

    @Override // androidx.loader.content.Loader
    public void onStartLoading() {
        Cursor cursor = this.f8039x;
        if (cursor != null) {
            deliverResult(cursor);
        }
        if (takeContentChanged() || this.f8039x == null) {
            forceLoad();
        }
    }

    @Override // androidx.loader.content.Loader
    public void onStopLoading() {
        cancelLoad();
    }

    public void setProjection(@Nullable String[] strArr) {
        this.f8035t = strArr;
    }

    public void setSelection(@Nullable String str) {
        this.f8036u = str;
    }

    public void setSelectionArgs(@Nullable String[] strArr) {
        this.f8037v = strArr;
    }

    public void setSortOrder(@Nullable String str) {
        this.f8038w = str;
    }

    public void setUri(@NonNull Uri uri) {
        this.f8034s = uri;
    }

    @Override // androidx.loader.content.Loader
    public void deliverResult(Cursor cursor) {
        if (isReset()) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        Cursor cursor2 = this.f8039x;
        this.f8039x = cursor;
        if (isStarted()) {
            super.deliverResult((CursorLoader) cursor);
        }
        if (cursor2 == null || cursor2 == cursor || cursor2.isClosed()) {
            return;
        }
        cursor2.close();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.loader.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        synchronized (this) {
            if (!isLoadInBackgroundCanceled()) {
                this.f8040y = new CancellationSignal();
            } else {
                throw new OperationCanceledException();
            }
        }
        try {
            Cursor query = ContentResolverCompat.query(getContext().getContentResolver(), this.f8034s, this.f8035t, this.f8036u, this.f8037v, this.f8038w, this.f8040y);
            if (query != null) {
                try {
                    query.getCount();
                    query.registerContentObserver(this.f8033r);
                } catch (RuntimeException e) {
                    query.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.f8040y = null;
            }
            return query;
        } catch (Throwable th) {
            synchronized (this) {
                this.f8040y = null;
                throw th;
            }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public void onCanceled(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    public CursorLoader(@NonNull Context context, @NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        super(context);
        this.f8033r = new Loader.ForceLoadContentObserver();
        this.f8034s = uri;
        this.f8035t = strArr;
        this.f8036u = str;
        this.f8037v = strArr2;
        this.f8038w = str2;
    }
}
