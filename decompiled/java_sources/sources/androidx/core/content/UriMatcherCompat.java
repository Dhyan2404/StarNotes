package androidx.core.content;

import android.content.UriMatcher;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.core.content.UriMatcherCompat;
import androidx.core.util.Predicate;

/* loaded from: classes3.dex */
public class UriMatcherCompat {
    @NonNull
    public static Predicate<Uri> asPredicate(@NonNull final UriMatcher uriMatcher) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.cyn
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m2805b;
                m2805b = UriMatcherCompat.m2805b(uriMatcher, (Uri) obj);
                return m2805b;
            }
        };
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m2805b(UriMatcher uriMatcher, Uri uri) {
        return uriMatcher.match(uri) != -1;
    }
}
