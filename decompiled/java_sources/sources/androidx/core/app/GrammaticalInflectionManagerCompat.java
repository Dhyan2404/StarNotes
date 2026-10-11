package androidx.core.app;

import android.app.GrammaticalInflectionManager;
import android.content.Context;
import android.os.Build;
import androidx.annotation.AnyThread;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.os.BuildCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public final class GrammaticalInflectionManagerCompat {
    public static final int GRAMMATICAL_GENDER_FEMININE = 2;
    public static final int GRAMMATICAL_GENDER_MASCULINE = 3;
    public static final int GRAMMATICAL_GENDER_NEUTRAL = 1;
    public static final int GRAMMATICAL_GENDER_NOT_SPECIFIED = 0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface GrammaticalGender {
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.app.GrammaticalInflectionManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0535a {
        @DoNotInline
        /* renamed from: a */
        public static int m2351a(Context context) {
            return m2352b(context).getApplicationGrammaticalGender();
        }

        /* renamed from: b */
        public static GrammaticalInflectionManager m2352b(Context context) {
            return (GrammaticalInflectionManager) context.getSystemService(GrammaticalInflectionManager.class);
        }

        @DoNotInline
        /* renamed from: c */
        public static void m2353c(Context context, int i) {
            m2352b(context).setRequestedApplicationGrammaticalGender(i);
        }
    }

    @AnyThread
    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public static int getApplicationGrammaticalGender(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 34) {
            return C0535a.m2351a(context);
        }
        return 0;
    }

    @AnyThread
    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public static void setRequestedApplicationGrammaticalGender(@NonNull Context context, int i) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0535a.m2353c(context, i);
        }
    }
}
