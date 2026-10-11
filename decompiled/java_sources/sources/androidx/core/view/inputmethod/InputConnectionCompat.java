package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes3.dex */
public final class InputConnectionCompat {
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    /* renamed from: a */
    public static final String f6082a = "InputConnectionCompat";

    /* renamed from: b */
    public static final String f6083b = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";

    /* renamed from: c */
    public static final String f6084c = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";

    /* renamed from: d */
    public static final String f6085d = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI";

    /* renamed from: e */
    public static final String f6086e = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";

    /* renamed from: f */
    public static final String f6087f = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";

    /* renamed from: g */
    public static final String f6088g = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";

    /* renamed from: h */
    public static final String f6089h = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";

    /* renamed from: i */
    public static final String f6090i = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";

    /* renamed from: j */
    public static final String f6091j = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";

    /* renamed from: k */
    public static final String f6092k = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";

    /* renamed from: l */
    public static final String f6093l = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";

    /* renamed from: m */
    public static final String f6094m = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";

    /* renamed from: n */
    public static final String f6095n = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";

    /* renamed from: o */
    public static final String f6096o = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";

    /* renamed from: p */
    public static final String f6097p = "androidx.core.view.extra.INPUT_CONTENT_INFO";

    /* loaded from: classes3.dex */
    public interface OnCommitContentListener {
        boolean onCommitContent(@NonNull InputContentInfoCompat inputContentInfoCompat, int i, @Nullable Bundle bundle);
    }

    /* renamed from: androidx.core.view.inputmethod.InputConnectionCompat$a */
    /* loaded from: classes3.dex */
    public class C0851a extends InputConnectionWrapper {

        /* renamed from: a */
        public final /* synthetic */ OnCommitContentListener f6098a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0851a(InputConnection inputConnection, boolean z, OnCommitContentListener onCommitContentListener) {
            super(inputConnection, z);
            this.f6098a = onCommitContentListener;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
            if (this.f6098a.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), i, bundle)) {
                return true;
            }
            return super.commitContent(inputContentInfo, i, bundle);
        }
    }

    /* renamed from: androidx.core.view.inputmethod.InputConnectionCompat$b */
    /* loaded from: classes3.dex */
    public class C0852b extends InputConnectionWrapper {

        /* renamed from: a */
        public final /* synthetic */ OnCommitContentListener f6099a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0852b(InputConnection inputConnection, boolean z, OnCommitContentListener onCommitContentListener) {
            super(inputConnection, z);
            this.f6099a = onCommitContentListener;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean performPrivateCommand(String str, Bundle bundle) {
            if (InputConnectionCompat.m3742c(str, bundle, this.f6099a)) {
                return true;
            }
            return super.performPrivateCommand(str, bundle);
        }
    }

    @RequiresApi(25)
    /* renamed from: androidx.core.view.inputmethod.InputConnectionCompat$c */
    /* loaded from: classes3.dex */
    public static class C0853c {
        @DoNotInline
        /* renamed from: a */
        public static boolean m3744a(InputConnection inputConnection, InputContentInfo inputContentInfo, int i, Bundle bundle) {
            return inputConnection.commitContent(inputContentInfo, i, bundle);
        }
    }

    @Deprecated
    public InputConnectionCompat() {
    }

    @NonNull
    /* renamed from: b */
    public static OnCommitContentListener m3741b(@NonNull final View view) {
        Preconditions.checkNotNull(view);
        return new OnCommitContentListener() { // from class: com.sunia.HTREnginev2.wki
            @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
            public final boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
                boolean m3743d;
                m3743d = InputConnectionCompat.m3743d(view, inputContentInfoCompat, i, bundle);
                return m3743d;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* renamed from: c */
    public static boolean m3742c(@Nullable String str, @Nullable Bundle bundle, @NonNull OnCommitContentListener onCommitContentListener) {
        boolean z;
        ResultReceiver resultReceiver;
        ?? r0 = 0;
        r0 = 0;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals(f6083b, str)) {
            z = false;
        } else {
            if (!TextUtils.equals(f6084c, str)) {
                return false;
            }
            z = true;
        }
        try {
            resultReceiver = (ResultReceiver) bundle.getParcelable(z ? f6096o : f6095n);
            try {
                Uri uri = (Uri) bundle.getParcelable(z ? f6086e : f6085d);
                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(z ? f6088g : f6087f);
                Uri uri2 = (Uri) bundle.getParcelable(z ? f6090i : f6089h);
                int i = bundle.getInt(z ? f6094m : f6093l);
                Bundle bundle2 = (Bundle) bundle.getParcelable(z ? f6092k : f6091j);
                if (uri != null && clipDescription != null) {
                    r0 = onCommitContentListener.onCommitContent(new InputContentInfoCompat(uri, clipDescription, uri2), i, bundle2);
                }
                if (resultReceiver != 0) {
                    resultReceiver.send(r0, null);
                }
                return r0;
            } catch (Throwable th) {
                th = th;
                if (resultReceiver != 0) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = 0;
        }
    }

    public static boolean commitContent(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull InputContentInfoCompat inputContentInfoCompat, int i, @Nullable Bundle bundle) {
        return C0853c.m3744a(inputConnection, (InputContentInfo) inputContentInfoCompat.unwrap(), i, bundle);
    }

    @NonNull
    @Deprecated
    public static InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull OnCommitContentListener onCommitContentListener) {
        ObjectsCompat.requireNonNull(inputConnection, "inputConnection must be non-null");
        ObjectsCompat.requireNonNull(editorInfo, "editorInfo must be non-null");
        ObjectsCompat.requireNonNull(onCommitContentListener, "onCommitContentListener must be non-null");
        return new C0851a(inputConnection, false, onCommitContentListener);
    }

    /* renamed from: d */
    public static /* synthetic */ boolean m3743d(View view, InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
        if ((i & 1) != 0) {
            try {
                inputContentInfoCompat.requestPermission();
                Parcelable parcelable = (Parcelable) inputContentInfoCompat.unwrap();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable(f6097p, parcelable);
            } catch (Exception e) {
                Log.w(f6082a, "Can't insert content from IME; requestPermission() failed", e);
                return false;
            }
        }
        return ViewCompat.performReceiveContent(view, new ContentInfoCompat.Builder(new ClipData(inputContentInfoCompat.getDescription(), new ClipData.Item(inputContentInfoCompat.getContentUri())), 2).setLinkUri(inputContentInfoCompat.getLinkUri()).setExtras(bundle).build()) == null;
    }

    @NonNull
    public static InputConnection createWrapper(@NonNull View view, @NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        return createWrapper(inputConnection, editorInfo, m3741b(view));
    }
}
