package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class SpannableBuilder extends SpannableStringBuilder {

    /* renamed from: e */
    @NonNull
    public final Class<?> f7001e;

    /* renamed from: f */
    @NonNull
    public final List<C1041a> f7002f;

    /* renamed from: androidx.emoji2.text.SpannableBuilder$a */
    /* loaded from: classes3.dex */
    public static class C1041a implements TextWatcher, SpanWatcher {

        /* renamed from: e */
        public final Object f7003e;

        /* renamed from: f */
        public final AtomicInteger f7004f = new AtomicInteger(0);

        public C1041a(Object obj) {
            this.f7003e = obj;
        }

        /* renamed from: a */
        public final void m4261a() {
            this.f7004f.incrementAndGet();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f7003e).afterTextChanged(editable);
        }

        /* renamed from: b */
        public final boolean m4262b(Object obj) {
            return obj instanceof EmojiSpan;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((TextWatcher) this.f7003e).beforeTextChanged(charSequence, i, i2, i3);
        }

        /* renamed from: c */
        public final void m4263c() {
            this.f7004f.decrementAndGet();
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
            if (this.f7004f.get() <= 0 || !m4262b(obj)) {
                ((SpanWatcher) this.f7003e).onSpanAdded(spannable, obj, i, i2);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
            if (this.f7004f.get() <= 0 || !m4262b(obj)) {
                ((SpanWatcher) this.f7003e).onSpanChanged(spannable, obj, i, i2, i3, i4);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
            if (this.f7004f.get() <= 0 || !m4262b(obj)) {
                ((SpanWatcher) this.f7003e).onSpanRemoved(spannable, obj, i, i2);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((TextWatcher) this.f7003e).onTextChanged(charSequence, i, i2, i3);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public SpannableBuilder(@NonNull Class<?> cls) {
        this.f7002f = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.f7001e = cls;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static SpannableBuilder create(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        return new SpannableBuilder(cls, charSequence);
    }

    /* renamed from: a */
    public final void m4255a() {
        for (int i = 0; i < this.f7002f.size(); i++) {
            this.f7002f.get(i).m4261a();
        }
    }

    /* renamed from: b */
    public final void m4256b() {
        for (int i = 0; i < this.f7002f.size(); i++) {
            this.f7002f.get(i).onTextChanged(this, 0, length(), length());
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void beginBatchEdit() {
        m4255a();
    }

    /* renamed from: c */
    public final C1041a m4257c(Object obj) {
        for (int i = 0; i < this.f7002f.size(); i++) {
            C1041a c1041a = this.f7002f.get(i);
            if (c1041a.f7003e == obj) {
                return c1041a;
            }
        }
        return null;
    }

    /* renamed from: d */
    public final boolean m4258d(@NonNull Class<?> cls) {
        return this.f7001e == cls;
    }

    /* renamed from: e */
    public final boolean m4259e(@Nullable Object obj) {
        return obj != null && m4258d(obj.getClass());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void endBatchEdit() {
        m4260f();
        m4256b();
    }

    /* renamed from: f */
    public final void m4260f() {
        for (int i = 0; i < this.f7002f.size(); i++) {
            this.f7002f.get(i).m4263c();
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(@Nullable Object obj) {
        C1041a m4257c;
        if (m4259e(obj) && (m4257c = m4257c(obj)) != null) {
            obj = m4257c;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(@Nullable Object obj) {
        C1041a m4257c;
        if (m4259e(obj) && (m4257c = m4257c(obj)) != null) {
            obj = m4257c;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(@Nullable Object obj) {
        C1041a m4257c;
        if (m4259e(obj) && (m4257c = m4257c(obj)) != null) {
            obj = m4257c;
        }
        return super.getSpanStart(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public <T> T[] getSpans(int i, int i2, @NonNull Class<T> cls) {
        if (!m4258d(cls)) {
            return (T[]) super.getSpans(i, i2, cls);
        }
        C1041a[] c1041aArr = (C1041a[]) super.getSpans(i, i2, C1041a.class);
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, c1041aArr.length));
        for (int i3 = 0; i3 < c1041aArr.length; i3++) {
            tArr[i3] = c1041aArr[i3].f7003e;
        }
        return tArr;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i, int i2, @Nullable Class cls) {
        if (cls == null || m4258d(cls)) {
            cls = C1041a.class;
        }
        return super.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(@Nullable Object obj) {
        C1041a c1041a;
        if (m4259e(obj)) {
            c1041a = m4257c(obj);
            if (c1041a != null) {
                obj = c1041a;
            }
        } else {
            c1041a = null;
        }
        super.removeSpan(obj);
        if (c1041a != null) {
            this.f7002f.remove(c1041a);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(@Nullable Object obj, int i, int i2, int i3) {
        if (m4259e(obj)) {
            C1041a c1041a = new C1041a(obj);
            this.f7002f.add(c1041a);
            obj = c1041a;
        }
        super.setSpan(obj, i, i2, i3);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public CharSequence subSequence(int i, int i2) {
        return new SpannableBuilder(this.f7001e, this, i, i2);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder delete(int i, int i2) {
        super.delete(i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i, int i2, CharSequence charSequence) {
        m4255a();
        super.replace(i, i2, charSequence);
        m4260f();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i, CharSequence charSequence, int i2, int i3) {
        super.insert(i, charSequence, i2, i3);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public SpannableBuilder(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        super(charSequence);
        this.f7002f = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.f7001e = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        m4255a();
        super.replace(i, i2, charSequence, i3, i4);
        m4260f();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(char c) {
        super.append(c);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public SpannableBuilder(@NonNull Class<?> cls, @NonNull CharSequence charSequence, int i, int i2) {
        super(charSequence, i, i2);
        this.f7002f = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.f7001e = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i) {
        super.append(charSequence, obj, i);
        return this;
    }
}
