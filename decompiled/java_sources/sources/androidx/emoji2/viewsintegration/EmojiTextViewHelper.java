package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import com.sunia.HTREnginev2.uof;
import com.sunia.HTREnginev2.wof;

/* loaded from: classes3.dex */
public final class EmojiTextViewHelper {

    /* renamed from: a */
    public final C1056b f7134a;

    @RequiresApi(19)
    /* renamed from: androidx.emoji2.viewsintegration.EmojiTextViewHelper$a */
    /* loaded from: classes3.dex */
    public static class C1055a extends C1056b {

        /* renamed from: a */
        public final TextView f7135a;

        /* renamed from: b */
        public final uof f7136b;

        /* renamed from: c */
        public boolean f7137c = true;

        public C1055a(TextView textView) {
            this.f7135a = textView;
            this.f7136b = new uof(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        @NonNull
        /* renamed from: a */
        public InputFilter[] mo4389a(@NonNull InputFilter[] inputFilterArr) {
            return !this.f7137c ? m4397i(inputFilterArr) : m4395g(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        /* renamed from: b */
        public boolean mo4390b() {
            return this.f7137c;
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        /* renamed from: c */
        public void mo4391c(boolean z) {
            if (z) {
                mo4393e();
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        /* renamed from: d */
        public void mo4392d(boolean z) {
            this.f7137c = z;
            mo4393e();
            m4400l();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        /* renamed from: e */
        public void mo4393e() {
            this.f7135a.setTransformationMethod(mo4394f(this.f7135a.getTransformationMethod()));
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        @Nullable
        /* renamed from: f */
        public TransformationMethod mo4394f(@Nullable TransformationMethod transformationMethod) {
            return this.f7137c ? m4401m(transformationMethod) : m4399k(transformationMethod);
        }

        @NonNull
        /* renamed from: g */
        public final InputFilter[] m4395g(@NonNull InputFilter[] inputFilterArr) {
            int length = inputFilterArr.length;
            for (InputFilter inputFilter : inputFilterArr) {
                if (inputFilter == this.f7136b) {
                    return inputFilterArr;
                }
            }
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
            System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
            inputFilterArr2[length] = this.f7136b;
            return inputFilterArr2;
        }

        /* renamed from: h */
        public final SparseArray<InputFilter> m4396h(@NonNull InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArray = new SparseArray<>(1);
            for (int i = 0; i < inputFilterArr.length; i++) {
                InputFilter inputFilter = inputFilterArr[i];
                if (inputFilter instanceof uof) {
                    sparseArray.put(i, inputFilter);
                }
            }
            return sparseArray;
        }

        @NonNull
        /* renamed from: i */
        public final InputFilter[] m4397i(@NonNull InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> m4396h = m4396h(inputFilterArr);
            if (m4396h.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - m4396h.size()];
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (m4396h.indexOfKey(i2) < 0) {
                    inputFilterArr2[i] = inputFilterArr[i2];
                    i++;
                }
            }
            return inputFilterArr2;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* renamed from: j */
        public void m4398j(boolean z) {
            this.f7137c = z;
        }

        @Nullable
        /* renamed from: k */
        public final TransformationMethod m4399k(@Nullable TransformationMethod transformationMethod) {
            return transformationMethod instanceof wof ? ((wof) transformationMethod).m58123a() : transformationMethod;
        }

        /* renamed from: l */
        public final void m4400l() {
            this.f7135a.setFilters(mo4389a(this.f7135a.getFilters()));
        }

        @NonNull
        /* renamed from: m */
        public final TransformationMethod m4401m(@Nullable TransformationMethod transformationMethod) {
            return ((transformationMethod instanceof wof) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new wof(transformationMethod);
        }
    }

    /* renamed from: androidx.emoji2.viewsintegration.EmojiTextViewHelper$b */
    /* loaded from: classes3.dex */
    public static class C1056b {
        @NonNull
        /* renamed from: a */
        public InputFilter[] mo4389a(@NonNull InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        /* renamed from: b */
        public boolean mo4390b() {
            return false;
        }

        /* renamed from: c */
        public void mo4391c(boolean z) {
        }

        /* renamed from: d */
        public void mo4392d(boolean z) {
        }

        /* renamed from: e */
        public void mo4393e() {
        }

        @Nullable
        /* renamed from: f */
        public TransformationMethod mo4394f(@Nullable TransformationMethod transformationMethod) {
            return transformationMethod;
        }
    }

    @RequiresApi(19)
    /* renamed from: androidx.emoji2.viewsintegration.EmojiTextViewHelper$c */
    /* loaded from: classes3.dex */
    public static class C1057c extends C1056b {

        /* renamed from: a */
        public final C1055a f7138a;

        public C1057c(TextView textView) {
            this.f7138a = new C1055a(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        @NonNull
        /* renamed from: a */
        public InputFilter[] mo4389a(@NonNull InputFilter[] inputFilterArr) {
            return m4402g() ? inputFilterArr : this.f7138a.mo4389a(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        /* renamed from: b */
        public boolean mo4390b() {
            return this.f7138a.mo4390b();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        /* renamed from: c */
        public void mo4391c(boolean z) {
            if (m4402g()) {
                return;
            }
            this.f7138a.mo4391c(z);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        /* renamed from: d */
        public void mo4392d(boolean z) {
            if (m4402g()) {
                this.f7138a.m4398j(z);
            } else {
                this.f7138a.mo4392d(z);
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        /* renamed from: e */
        public void mo4393e() {
            if (m4402g()) {
                return;
            }
            this.f7138a.mo4393e();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.C1056b
        @Nullable
        /* renamed from: f */
        public TransformationMethod mo4394f(@Nullable TransformationMethod transformationMethod) {
            return m4402g() ? transformationMethod : this.f7138a.mo4394f(transformationMethod);
        }

        /* renamed from: g */
        public final boolean m4402g() {
            return !EmojiCompat.isConfigured();
        }
    }

    public EmojiTextViewHelper(@NonNull TextView textView) {
        this(textView, true);
    }

    @NonNull
    public InputFilter[] getFilters(@NonNull InputFilter[] inputFilterArr) {
        return this.f7134a.mo4389a(inputFilterArr);
    }

    public boolean isEnabled() {
        return this.f7134a.mo4390b();
    }

    public void setAllCaps(boolean z) {
        this.f7134a.mo4391c(z);
    }

    public void setEnabled(boolean z) {
        this.f7134a.mo4392d(z);
    }

    public void updateTransformationMethod() {
        this.f7134a.mo4393e();
    }

    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return this.f7134a.mo4394f(transformationMethod);
    }

    public EmojiTextViewHelper(@NonNull TextView textView, boolean z) {
        Preconditions.checkNotNull(textView, "textView cannot be null");
        if (!z) {
            this.f7134a = new C1057c(textView);
        } else {
            this.f7134a = new C1055a(textView);
        }
    }
}
