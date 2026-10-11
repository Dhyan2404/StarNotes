package androidx.emoji2.viewsintegration;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import com.sunia.HTREnginev2.sof;
import com.sunia.HTREnginev2.vof;

/* loaded from: classes3.dex */
public final class EmojiEditTextHelper {

    /* renamed from: a */
    public final C1054b f7125a;

    /* renamed from: b */
    public int f7126b;

    /* renamed from: c */
    public int f7127c;

    @RequiresApi(19)
    /* renamed from: androidx.emoji2.viewsintegration.EmojiEditTextHelper$a */
    /* loaded from: classes3.dex */
    public static class C1053a extends C1054b {

        /* renamed from: a */
        public final EditText f7128a;

        /* renamed from: b */
        public final vof f7129b;

        public C1053a(@NonNull EditText editText, boolean z) {
            this.f7128a = editText;
            vof vofVar = new vof(editText, z);
            this.f7129b = vofVar;
            editText.addTextChangedListener(vofVar);
            editText.setEditableFactory(sof.getInstance());
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.C1054b
        /* renamed from: a */
        public KeyListener mo4382a(@Nullable KeyListener keyListener) {
            if (keyListener instanceof EmojiKeyListener) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return keyListener instanceof NumberKeyListener ? keyListener : new EmojiKeyListener(keyListener);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.C1054b
        /* renamed from: b */
        public boolean mo4383b() {
            return this.f7129b.m57862d();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.C1054b
        /* renamed from: c */
        public InputConnection mo4384c(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
            return inputConnection instanceof EmojiInputConnection ? inputConnection : new EmojiInputConnection(this.f7128a, inputConnection, editorInfo);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.C1054b
        /* renamed from: d */
        public void mo4385d(int i) {
            this.f7129b.m57863f(i);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.C1054b
        /* renamed from: e */
        public void mo4386e(boolean z) {
            this.f7129b.m57864g(z);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.C1054b
        /* renamed from: f */
        public void mo4387f(int i) {
            this.f7129b.m57865h(i);
        }
    }

    /* renamed from: androidx.emoji2.viewsintegration.EmojiEditTextHelper$b */
    /* loaded from: classes3.dex */
    public static class C1054b {
        @Nullable
        /* renamed from: a */
        public KeyListener mo4382a(@Nullable KeyListener keyListener) {
            return keyListener;
        }

        /* renamed from: b */
        public boolean mo4383b() {
            return false;
        }

        /* renamed from: c */
        public InputConnection mo4384c(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
            return inputConnection;
        }

        /* renamed from: d */
        public void mo4385d(int i) {
        }

        /* renamed from: e */
        public void mo4386e(boolean z) {
        }

        /* renamed from: f */
        public void mo4387f(int i) {
        }
    }

    public EmojiEditTextHelper(@NonNull EditText editText) {
        this(editText, true);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getEmojiReplaceStrategy() {
        return this.f7127c;
    }

    @Nullable
    public KeyListener getKeyListener(@Nullable KeyListener keyListener) {
        return this.f7125a.mo4382a(keyListener);
    }

    public int getMaxEmojiCount() {
        return this.f7126b;
    }

    public boolean isEnabled() {
        return this.f7125a.mo4383b();
    }

    @Nullable
    public InputConnection onCreateInputConnection(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.f7125a.mo4384c(inputConnection, editorInfo);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setEmojiReplaceStrategy(int i) {
        this.f7127c = i;
        this.f7125a.mo4385d(i);
    }

    public void setEnabled(boolean z) {
        this.f7125a.mo4386e(z);
    }

    public void setMaxEmojiCount(@IntRange(from = 0) int i) {
        Preconditions.checkArgumentNonnegative(i, "maxEmojiCount should be greater than 0");
        this.f7126b = i;
        this.f7125a.mo4387f(i);
    }

    public EmojiEditTextHelper(@NonNull EditText editText, boolean z) {
        this.f7126b = Integer.MAX_VALUE;
        this.f7127c = 0;
        Preconditions.checkNotNull(editText, "editText cannot be null");
        this.f7125a = new C1053a(editText, z);
    }
}
