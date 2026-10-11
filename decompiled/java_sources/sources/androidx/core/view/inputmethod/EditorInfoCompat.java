package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Preconditions;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes3.dex */
public final class EditorInfoCompat {
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;

    /* renamed from: a */
    public static final String[] f6073a = new String[0];

    /* renamed from: b */
    public static final String f6074b = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";

    /* renamed from: c */
    public static final String f6075c = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";

    /* renamed from: d */
    public static final String f6076d = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT";

    /* renamed from: e */
    public static final String f6077e = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD";

    /* renamed from: f */
    public static final String f6078f = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END";

    /* renamed from: g */
    public static final String f6079g = "androidx.core.view.inputmethod.EditorInfoCompat.STYLUS_HANDWRITING_ENABLED";

    /* renamed from: h */
    @VisibleForTesting
    public static final int f6080h = 2048;

    /* renamed from: i */
    @VisibleForTesting
    public static final int f6081i = 1024;

    @RequiresApi(30)
    /* renamed from: androidx.core.view.inputmethod.EditorInfoCompat$a */
    /* loaded from: classes3.dex */
    public static class C0850a {
        /* renamed from: a */
        public static CharSequence m3736a(@NonNull EditorInfo editorInfo, int i) {
            return editorInfo.getInitialSelectedText(i);
        }

        /* renamed from: b */
        public static CharSequence m3737b(@NonNull EditorInfo editorInfo, int i, int i2) {
            return editorInfo.getInitialTextAfterCursor(i, i2);
        }

        /* renamed from: c */
        public static CharSequence m3738c(@NonNull EditorInfo editorInfo, int i, int i2) {
            return editorInfo.getInitialTextBeforeCursor(i, i2);
        }

        /* renamed from: d */
        public static void m3739d(@NonNull EditorInfo editorInfo, CharSequence charSequence, int i) {
            editorInfo.setInitialSurroundingSubText(charSequence, i);
        }
    }

    @Deprecated
    public EditorInfoCompat() {
    }

    /* renamed from: a */
    public static int m3731a(EditorInfo editorInfo) {
        return 1;
    }

    /* renamed from: b */
    public static boolean m3732b(CharSequence charSequence, int i, int i2) {
        if (i2 == 0) {
            return Character.isLowSurrogate(charSequence.charAt(i));
        }
        if (i2 != 1) {
            return false;
        }
        return Character.isHighSurrogate(charSequence.charAt(i));
    }

    /* renamed from: c */
    public static boolean m3733c(int i) {
        int i2 = i & 4095;
        return i2 == 129 || i2 == 225 || i2 == 18;
    }

    /* renamed from: d */
    public static void m3734d(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence(f6076d, charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt(f6077e, i);
        editorInfo.extras.putInt(f6078f, i2);
    }

    /* renamed from: e */
    public static void m3735e(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        int i3 = i2 - i;
        int i4 = i3 > 1024 ? 0 : i3;
        int i5 = 2048 - i4;
        int min = Math.min(charSequence.length() - i2, i5 - Math.min(i, (int) (i5 * 0.8d)));
        int min2 = Math.min(i, i5 - min);
        int i6 = i - min2;
        if (m3732b(charSequence, i6, 0)) {
            i6++;
            min2--;
        }
        if (m3732b(charSequence, (i2 + min) - 1, 1)) {
            min--;
        }
        CharSequence concat = i4 != i3 ? TextUtils.concat(charSequence.subSequence(i6, i6 + min2), charSequence.subSequence(i2, min + i2)) : charSequence.subSequence(i6, min2 + i4 + min + i6);
        int i7 = min2 + 0;
        m3734d(editorInfo, concat, i7, i4 + i7);
    }

    @NonNull
    public static String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
        String[] strArr = editorInfo.contentMimeTypes;
        return strArr != null ? strArr : f6073a;
    }

    @Nullable
    public static CharSequence getInitialSelectedText(@NonNull EditorInfo editorInfo, int i) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return C0850a.m3736a(editorInfo, i);
        }
        if (editorInfo.extras == null) {
            return null;
        }
        int min = Math.min(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int max = Math.max(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int i2 = editorInfo.extras.getInt(f6077e);
        int i3 = editorInfo.extras.getInt(f6078f);
        int i4 = max - min;
        if (editorInfo.initialSelStart < 0 || editorInfo.initialSelEnd < 0 || i3 - i2 != i4 || (charSequence = editorInfo.extras.getCharSequence(f6076d)) == null) {
            return null;
        }
        return (i & 1) != 0 ? charSequence.subSequence(i2, i3) : TextUtils.substring(charSequence, i2, i3);
    }

    @Nullable
    public static CharSequence getInitialTextAfterCursor(@NonNull EditorInfo editorInfo, int i, int i2) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return C0850a.m3737b(editorInfo, i, i2);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(f6076d)) == null) {
            return null;
        }
        int i3 = editorInfo.extras.getInt(f6078f);
        int min = Math.min(i, charSequence.length() - i3);
        return (i2 & 1) != 0 ? charSequence.subSequence(i3, min + i3) : TextUtils.substring(charSequence, i3, min + i3);
    }

    @Nullable
    public static CharSequence getInitialTextBeforeCursor(@NonNull EditorInfo editorInfo, int i, int i2) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return C0850a.m3738c(editorInfo, i, i2);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(f6076d)) == null) {
            return null;
        }
        int i3 = editorInfo.extras.getInt(f6077e);
        int min = Math.min(i, i3);
        return (i2 & 1) != 0 ? charSequence.subSequence(i3 - min, i3) : TextUtils.substring(charSequence, i3 - min, i3);
    }

    public static boolean isStylusHandwritingEnabled(@NonNull EditorInfo editorInfo) {
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return false;
        }
        return bundle.getBoolean(f6079g);
    }

    public static void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
        editorInfo.contentMimeTypes = strArr;
    }

    public static void setInitialSurroundingSubText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence, int i) {
        Preconditions.checkNotNull(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            C0850a.m3739d(editorInfo, charSequence, i);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 - i : i2 - i;
        int i5 = i2 > i3 ? i2 - i : i3 - i;
        int length = charSequence.length();
        if (i < 0 || i4 < 0 || i5 > length) {
            m3734d(editorInfo, null, 0, 0);
            return;
        }
        if (m3733c(editorInfo.inputType)) {
            m3734d(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            m3734d(editorInfo, charSequence, i4, i5);
        } else {
            m3735e(editorInfo, charSequence, i4, i5);
        }
    }

    public static void setInitialSurroundingText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0850a.m3739d(editorInfo, charSequence, 0);
        } else {
            setInitialSurroundingSubText(editorInfo, charSequence, 0);
        }
    }

    public static void setStylusHandwritingEnabled(@NonNull EditorInfo editorInfo, boolean z) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putBoolean(f6079g, z);
    }
}
