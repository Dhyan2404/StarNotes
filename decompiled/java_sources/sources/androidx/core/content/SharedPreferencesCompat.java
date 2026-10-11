package androidx.core.content;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;

@Deprecated
/* loaded from: classes3.dex */
public final class SharedPreferencesCompat {

    @Deprecated
    /* loaded from: classes3.dex */
    public static final class EditorCompat {

        /* renamed from: b */
        public static EditorCompat f5275b;

        /* renamed from: a */
        public final C0639a f5276a = new C0639a();

        /* renamed from: androidx.core.content.SharedPreferencesCompat$EditorCompat$a */
        /* loaded from: classes3.dex */
        public static class C0639a {
            /* renamed from: a */
            public void m2803a(@NonNull SharedPreferences.Editor editor) {
                try {
                    editor.apply();
                } catch (AbstractMethodError unused) {
                    editor.commit();
                }
            }
        }

        @Deprecated
        public static EditorCompat getInstance() {
            if (f5275b == null) {
                f5275b = new EditorCompat();
            }
            return f5275b;
        }

        @Deprecated
        public void apply(@NonNull SharedPreferences.Editor editor) {
            this.f5276a.m2803a(editor);
        }
    }
}
