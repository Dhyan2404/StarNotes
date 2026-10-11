package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import com.sunia.HTREnginev2.cun;
import java.util.Arrays;
import java.util.Set;

@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: androidx.emoji2.text.b */
/* loaded from: classes3.dex */
public final class C1043b {

    /* renamed from: f */
    public static final int f7017f = 1;

    /* renamed from: g */
    public static final int f7018g = 2;

    /* renamed from: h */
    public static final int f7019h = 3;

    /* renamed from: i */
    public static final int f7020i = 16;

    /* renamed from: a */
    @NonNull
    public final EmojiCompat.SpanFactory f7021a;

    /* renamed from: b */
    @NonNull
    public final MetadataRepo f7022b;

    /* renamed from: c */
    @NonNull
    public EmojiCompat.GlyphChecker f7023c;

    /* renamed from: d */
    public final boolean f7024d;

    /* renamed from: e */
    @Nullable
    public final int[] f7025e;

    @RequiresApi(19)
    /* renamed from: androidx.emoji2.text.b$a */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a */
        public static final int f7026a = -1;

        /* renamed from: a */
        public static int m4282a(CharSequence charSequence, int i, int i2) {
            int length = charSequence.length();
            if (i < 0 || length < i || i2 < 0) {
                return -1;
            }
            while (true) {
                boolean z = false;
                while (i2 != 0) {
                    i--;
                    if (i < 0) {
                        return z ? -1 : 0;
                    }
                    char charAt = charSequence.charAt(i);
                    if (z) {
                        if (!Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        i2--;
                    } else if (!Character.isSurrogate(charAt)) {
                        i2--;
                    } else {
                        if (Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        z = true;
                    }
                }
                return i;
            }
        }

        /* renamed from: b */
        public static int m4283b(CharSequence charSequence, int i, int i2) {
            int length = charSequence.length();
            if (i < 0 || length < i || i2 < 0) {
                return -1;
            }
            while (true) {
                boolean z = false;
                while (i2 != 0) {
                    if (i >= length) {
                        if (z) {
                            return -1;
                        }
                        return length;
                    }
                    char charAt = charSequence.charAt(i);
                    if (z) {
                        if (!Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i2--;
                        i++;
                    } else if (!Character.isSurrogate(charAt)) {
                        i2--;
                        i++;
                    } else {
                        if (Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i++;
                        z = true;
                    }
                }
                return i;
            }
        }
    }

    /* renamed from: androidx.emoji2.text.b$b */
    /* loaded from: classes3.dex */
    public static class b implements c<cun> {

        /* renamed from: a */
        @Nullable
        public cun f7027a;

        /* renamed from: b */
        public final EmojiCompat.SpanFactory f7028b;

        public b(@Nullable cun cunVar, EmojiCompat.SpanFactory spanFactory) {
            this.f7027a = cunVar;
            this.f7028b = spanFactory;
        }

        @Override // androidx.emoji2.text.C1043b.c
        /* renamed from: a */
        public boolean mo4284a(@NonNull CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (typefaceEmojiRasterizer.isPreferredSystemRender()) {
                return true;
            }
            if (this.f7027a == null) {
                this.f7027a = new cun(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
            }
            this.f7027a.setSpan(this.f7028b.createSpan(typefaceEmojiRasterizer), i, i2, 33);
            return true;
        }

        @Override // androidx.emoji2.text.C1043b.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public cun getResult() {
            return this.f7027a;
        }
    }

    /* renamed from: androidx.emoji2.text.b$c */
    /* loaded from: classes3.dex */
    public interface c<T> {
        /* renamed from: a */
        boolean mo4284a(@NonNull CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer);

        T getResult();
    }

    /* renamed from: androidx.emoji2.text.b$d */
    /* loaded from: classes3.dex */
    public static class d implements c<d> {

        /* renamed from: a */
        public final int f7029a;

        /* renamed from: b */
        public int f7030b = -1;

        /* renamed from: c */
        public int f7031c = -1;

        public d(int i) {
            this.f7029a = i;
        }

        @Override // androidx.emoji2.text.C1043b.c
        /* renamed from: a */
        public boolean mo4284a(@NonNull CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            int i3 = this.f7029a;
            if (i > i3 || i3 >= i2) {
                return i2 <= i3;
            }
            this.f7030b = i;
            this.f7031c = i2;
            return false;
        }

        @Override // androidx.emoji2.text.C1043b.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public d getResult() {
            return this;
        }
    }

    /* renamed from: androidx.emoji2.text.b$e */
    /* loaded from: classes3.dex */
    public static class e implements c<e> {

        /* renamed from: a */
        public final String f7032a;

        public e(String str) {
            this.f7032a = str;
        }

        @Override // androidx.emoji2.text.C1043b.c
        /* renamed from: a */
        public boolean mo4284a(@NonNull CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (!TextUtils.equals(charSequence.subSequence(i, i2), this.f7032a)) {
                return true;
            }
            typefaceEmojiRasterizer.setExclusion(true);
            return false;
        }

        @Override // androidx.emoji2.text.C1043b.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public e getResult() {
            return this;
        }
    }

    /* renamed from: androidx.emoji2.text.b$f */
    /* loaded from: classes3.dex */
    public static final class f {

        /* renamed from: i */
        public static final int f7033i = 1;

        /* renamed from: j */
        public static final int f7034j = 2;

        /* renamed from: a */
        public int f7035a = 1;

        /* renamed from: b */
        public final MetadataRepo.C1040a f7036b;

        /* renamed from: c */
        public MetadataRepo.C1040a f7037c;

        /* renamed from: d */
        public MetadataRepo.C1040a f7038d;

        /* renamed from: e */
        public int f7039e;

        /* renamed from: f */
        public int f7040f;

        /* renamed from: g */
        public final boolean f7041g;

        /* renamed from: h */
        public final int[] f7042h;

        public f(MetadataRepo.C1040a c1040a, boolean z, int[] iArr) {
            this.f7036b = c1040a;
            this.f7037c = c1040a;
            this.f7041g = z;
            this.f7042h = iArr;
        }

        /* renamed from: d */
        public static boolean m4288d(int i) {
            return i == 65039;
        }

        /* renamed from: f */
        public static boolean m4289f(int i) {
            return i == 65038;
        }

        /* renamed from: a */
        public int m4290a(int i) {
            MetadataRepo.C1040a m4252a = this.f7037c.m4252a(i);
            int i2 = 2;
            if (this.f7035a != 2) {
                if (m4252a == null) {
                    i2 = m4294g();
                } else {
                    this.f7035a = 2;
                    this.f7037c = m4252a;
                    this.f7040f = 1;
                }
            } else if (m4252a != null) {
                this.f7037c = m4252a;
                this.f7040f++;
            } else if (m4289f(i)) {
                i2 = m4294g();
            } else if (!m4288d(i)) {
                if (this.f7037c.m4253b() != null) {
                    i2 = 3;
                    if (this.f7040f != 1) {
                        this.f7038d = this.f7037c;
                        m4294g();
                    } else if (m4295h()) {
                        this.f7038d = this.f7037c;
                        m4294g();
                    } else {
                        i2 = m4294g();
                    }
                } else {
                    i2 = m4294g();
                }
            }
            this.f7039e = i;
            return i2;
        }

        /* renamed from: b */
        public TypefaceEmojiRasterizer m4291b() {
            return this.f7037c.m4253b();
        }

        /* renamed from: c */
        public TypefaceEmojiRasterizer m4292c() {
            return this.f7038d.m4253b();
        }

        /* renamed from: e */
        public boolean m4293e() {
            return this.f7035a == 2 && this.f7037c.m4253b() != null && (this.f7040f > 1 || m4295h());
        }

        /* renamed from: g */
        public final int m4294g() {
            this.f7035a = 1;
            this.f7037c = this.f7036b;
            this.f7040f = 0;
            return 1;
        }

        /* renamed from: h */
        public final boolean m4295h() {
            if (this.f7037c.m4253b().isDefaultEmoji() || m4288d(this.f7039e)) {
                return true;
            }
            if (this.f7041g) {
                if (this.f7042h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.f7042h, this.f7037c.m4253b().getCodepointAt(0)) < 0) {
                    return true;
                }
            }
            return false;
        }
    }

    public C1043b(@NonNull MetadataRepo metadataRepo, @NonNull EmojiCompat.SpanFactory spanFactory, @NonNull EmojiCompat.GlyphChecker glyphChecker, boolean z, @Nullable int[] iArr, @NonNull Set<int[]> set) {
        this.f7021a = spanFactory;
        this.f7022b = metadataRepo;
        this.f7023c = glyphChecker;
        this.f7024d = z;
        this.f7025e = iArr;
        m4279k(set);
    }

    /* renamed from: a */
    public static boolean m4269a(@NonNull Editable editable, @NonNull KeyEvent keyEvent, boolean z) {
        EmojiSpan[] emojiSpanArr;
        if (m4273j(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!m4272i(selectionStart, selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: f */
    public static boolean m4270f(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, boolean z) {
        int max;
        int min;
        if (editable != null && inputConnection != null && i >= 0 && i2 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (m4272i(selectionStart, selectionEnd)) {
                return false;
            }
            if (z) {
                max = a.m4282a(editable, selectionStart, Math.max(i, 0));
                min = a.m4283b(editable, selectionEnd, Math.max(i2, 0));
                if (max == -1 || min == -1) {
                    return false;
                }
            } else {
                max = Math.max(selectionStart - i, 0);
                min = Math.min(selectionEnd + i2, editable.length());
            }
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(max, min, EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    max = Math.min(spanStart, max);
                    min = Math.max(spanEnd, min);
                }
                int max2 = Math.max(max, 0);
                int min2 = Math.min(min, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(max2, min2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public static boolean m4271g(@NonNull Editable editable, int i, @NonNull KeyEvent keyEvent) {
        if (!(i != 67 ? i != 112 ? false : m4269a(editable, keyEvent, true) : m4269a(editable, keyEvent, false))) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    /* renamed from: i */
    public static boolean m4272i(int i, int i2) {
        return i == -1 || i2 == -1 || i != i2;
    }

    /* renamed from: j */
    public static boolean m4273j(@NonNull KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    /* renamed from: b */
    public int m4274b(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
        if (i < 0 || i >= charSequence.length()) {
            return -1;
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i, i + 1, EmojiSpan.class);
            if (emojiSpanArr.length > 0) {
                return spanned.getSpanEnd(emojiSpanArr[0]);
            }
        }
        return ((d) m4281m(charSequence, Math.max(0, i - 16), Math.min(charSequence.length(), i + 16), Integer.MAX_VALUE, true, new d(i))).f7031c;
    }

    /* renamed from: c */
    public int m4275c(@NonNull CharSequence charSequence) {
        return m4276d(charSequence, this.f7022b.m4248b());
    }

    /* renamed from: d */
    public int m4276d(@NonNull CharSequence charSequence, int i) {
        f fVar = new f(this.f7022b.m4249c(), this.f7024d, this.f7025e);
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            int codePointAt = Character.codePointAt(charSequence, i2);
            int m4290a = fVar.m4290a(codePointAt);
            TypefaceEmojiRasterizer m4291b = fVar.m4291b();
            if (m4290a == 1) {
                i2 += Character.charCount(codePointAt);
                i4 = 0;
            } else if (m4290a == 2) {
                i2 += Character.charCount(codePointAt);
            } else if (m4290a == 3) {
                m4291b = fVar.m4292c();
                if (m4291b.getCompatAdded() <= i) {
                    i3++;
                }
            }
            if (m4291b != null && m4291b.getCompatAdded() <= i) {
                i4++;
            }
        }
        if (i3 != 0) {
            return 2;
        }
        if (!fVar.m4293e() || fVar.m4291b().getCompatAdded() > i) {
            return i4 == 0 ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: e */
    public int m4277e(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
        if (i < 0 || i >= charSequence.length()) {
            return -1;
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i, i + 1, EmojiSpan.class);
            if (emojiSpanArr.length > 0) {
                return spanned.getSpanStart(emojiSpanArr[0]);
            }
        }
        return ((d) m4281m(charSequence, Math.max(0, i - 16), Math.min(charSequence.length(), i + 16), Integer.MAX_VALUE, true, new d(i))).f7030b;
    }

    /* renamed from: h */
    public final boolean m4278h(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if (typefaceEmojiRasterizer.getHasGlyph() == 0) {
            typefaceEmojiRasterizer.setHasGlyph(this.f7023c.hasGlyph(charSequence, i, i2, typefaceEmojiRasterizer.getSdkAdded()));
        }
        return typefaceEmojiRasterizer.getHasGlyph() == 2;
    }

    /* renamed from: k */
    public final void m4279k(@NonNull Set<int[]> set) {
        if (set.isEmpty()) {
            return;
        }
        for (int[] iArr : set) {
            String str = new String(iArr, 0, iArr.length);
            m4281m(str, 0, str.length(), 1, true, new e(str));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a8, code lost:
    
        ((androidx.emoji2.text.SpannableBuilder) r11).endBatchEdit();
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0046 A[Catch: all -> 0x00af, TryCatch #0 {all -> 0x00af, blocks: (B:50:0x000e, B:53:0x0013, B:55:0x0017, B:57:0x0024, B:9:0x0037, B:11:0x003f, B:13:0x0042, B:15:0x0046, B:17:0x0052, B:19:0x0055, B:24:0x0063, B:30:0x0071, B:31:0x007d, B:33:0x0091, B:6:0x002c), top: B:49:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0091 A[Catch: all -> 0x00af, TRY_LEAVE, TryCatch #0 {all -> 0x00af, blocks: (B:50:0x000e, B:53:0x0013, B:55:0x0017, B:57:0x0024, B:9:0x0037, B:11:0x003f, B:13:0x0042, B:15:0x0046, B:17:0x0052, B:19:0x0055, B:24:0x0063, B:30:0x0071, B:31:0x007d, B:33:0x0091, B:6:0x002c), top: B:49:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009d  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence m4280l(@androidx.annotation.NonNull java.lang.CharSequence r11, @androidx.annotation.IntRange(from = 0) int r12, @androidx.annotation.IntRange(from = 0) int r13, @androidx.annotation.IntRange(from = 0) int r14, boolean r15) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof androidx.emoji2.text.SpannableBuilder
            if (r0 == 0) goto La
            r1 = r11
            androidx.emoji2.text.SpannableBuilder r1 = (androidx.emoji2.text.SpannableBuilder) r1
            r1.beginBatchEdit()
        La:
            java.lang.Class<androidx.emoji2.text.EmojiSpan> r1 = androidx.emoji2.text.EmojiSpan.class
            if (r0 != 0) goto L2c
            boolean r2 = r11 instanceof android.text.Spannable     // Catch: java.lang.Throwable -> Laf
            if (r2 == 0) goto L13
            goto L2c
        L13:
            boolean r2 = r11 instanceof android.text.Spanned     // Catch: java.lang.Throwable -> Laf
            if (r2 == 0) goto L2a
            r2 = r11
            android.text.Spanned r2 = (android.text.Spanned) r2     // Catch: java.lang.Throwable -> Laf
            int r3 = r12 + (-1)
            int r4 = r13 + 1
            int r2 = r2.nextSpanTransition(r3, r4, r1)     // Catch: java.lang.Throwable -> Laf
            if (r2 > r13) goto L2a
            com.sunia.HTREnginev2.cun r2 = new com.sunia.HTREnginev2.cun     // Catch: java.lang.Throwable -> Laf
            r2.<init>(r11)     // Catch: java.lang.Throwable -> Laf
            goto L34
        L2a:
            r2 = 0
            goto L34
        L2c:
            com.sunia.HTREnginev2.cun r2 = new com.sunia.HTREnginev2.cun     // Catch: java.lang.Throwable -> Laf
            r3 = r11
            android.text.Spannable r3 = (android.text.Spannable) r3     // Catch: java.lang.Throwable -> Laf
            r2.<init>(r3)     // Catch: java.lang.Throwable -> Laf
        L34:
            r3 = 0
            if (r2 == 0) goto L60
            java.lang.Object[] r4 = r2.getSpans(r12, r13, r1)     // Catch: java.lang.Throwable -> Laf
            androidx.emoji2.text.EmojiSpan[] r4 = (androidx.emoji2.text.EmojiSpan[]) r4     // Catch: java.lang.Throwable -> Laf
            if (r4 == 0) goto L60
            int r5 = r4.length     // Catch: java.lang.Throwable -> Laf
            if (r5 <= 0) goto L60
            int r5 = r4.length     // Catch: java.lang.Throwable -> Laf
            r6 = r3
        L44:
            if (r6 >= r5) goto L60
            r7 = r4[r6]     // Catch: java.lang.Throwable -> Laf
            int r8 = r2.getSpanStart(r7)     // Catch: java.lang.Throwable -> Laf
            int r9 = r2.getSpanEnd(r7)     // Catch: java.lang.Throwable -> Laf
            if (r8 == r13) goto L55
            r2.removeSpan(r7)     // Catch: java.lang.Throwable -> Laf
        L55:
            int r12 = java.lang.Math.min(r8, r12)     // Catch: java.lang.Throwable -> Laf
            int r13 = java.lang.Math.max(r9, r13)     // Catch: java.lang.Throwable -> Laf
            int r6 = r6 + 1
            goto L44
        L60:
            r4 = r13
            if (r12 == r4) goto La6
            int r13 = r11.length()     // Catch: java.lang.Throwable -> Laf
            if (r12 < r13) goto L6a
            goto La6
        L6a:
            r13 = 2147483647(0x7fffffff, float:NaN)
            if (r14 == r13) goto L7d
            if (r2 == 0) goto L7d
            int r13 = r2.length()     // Catch: java.lang.Throwable -> Laf
            java.lang.Object[] r13 = r2.getSpans(r3, r13, r1)     // Catch: java.lang.Throwable -> Laf
            androidx.emoji2.text.EmojiSpan[] r13 = (androidx.emoji2.text.EmojiSpan[]) r13     // Catch: java.lang.Throwable -> Laf
            int r13 = r13.length     // Catch: java.lang.Throwable -> Laf
            int r14 = r14 - r13
        L7d:
            r5 = r14
            androidx.emoji2.text.b$b r7 = new androidx.emoji2.text.b$b     // Catch: java.lang.Throwable -> Laf
            androidx.emoji2.text.EmojiCompat$SpanFactory r13 = r10.f7021a     // Catch: java.lang.Throwable -> Laf
            r7.<init>(r2, r13)     // Catch: java.lang.Throwable -> Laf
            r1 = r10
            r2 = r11
            r3 = r12
            r6 = r15
            java.lang.Object r10 = r1.m4281m(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> Laf
            com.sunia.HTREnginev2.cun r10 = (com.sunia.HTREnginev2.cun) r10     // Catch: java.lang.Throwable -> Laf
            if (r10 == 0) goto L9d
            android.text.Spannable r10 = r10.m53521b()     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto L9c
            androidx.emoji2.text.SpannableBuilder r11 = (androidx.emoji2.text.SpannableBuilder) r11
            r11.endBatchEdit()
        L9c:
            return r10
        L9d:
            if (r0 == 0) goto La5
            r10 = r11
            androidx.emoji2.text.SpannableBuilder r10 = (androidx.emoji2.text.SpannableBuilder) r10
            r10.endBatchEdit()
        La5:
            return r11
        La6:
            if (r0 == 0) goto Lae
            r10 = r11
            androidx.emoji2.text.SpannableBuilder r10 = (androidx.emoji2.text.SpannableBuilder) r10
            r10.endBatchEdit()
        Lae:
            return r11
        Laf:
            r10 = move-exception
            if (r0 == 0) goto Lb7
            androidx.emoji2.text.SpannableBuilder r11 = (androidx.emoji2.text.SpannableBuilder) r11
            r11.endBatchEdit()
        Lb7:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.C1043b.m4280l(java.lang.CharSequence, int, int, int, boolean):java.lang.CharSequence");
    }

    /* renamed from: m */
    public final <T> T m4281m(@NonNull CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3, boolean z, c<T> cVar) {
        int i4;
        f fVar = new f(this.f7022b.m4249c(), this.f7024d, this.f7025e);
        int i5 = 0;
        boolean z2 = true;
        int codePointAt = Character.codePointAt(charSequence, i);
        loop0: while (true) {
            i4 = i;
            while (i < i2 && i5 < i3 && z2) {
                int m4290a = fVar.m4290a(codePointAt);
                if (m4290a == 1) {
                    i4 += Character.charCount(Character.codePointAt(charSequence, i4));
                    if (i4 < i2) {
                        codePointAt = Character.codePointAt(charSequence, i4);
                    }
                    i = i4;
                } else if (m4290a == 2) {
                    i += Character.charCount(codePointAt);
                    if (i < i2) {
                        codePointAt = Character.codePointAt(charSequence, i);
                    }
                } else if (m4290a == 3) {
                    if (z || !m4278h(charSequence, i4, i, fVar.m4292c())) {
                        i5++;
                        z2 = cVar.mo4284a(charSequence, i4, i, fVar.m4292c());
                    }
                }
            }
        }
        if (fVar.m4293e() && i5 < i3 && z2 && (z || !m4278h(charSequence, i4, i, fVar.m4291b()))) {
            cVar.mo4284a(charSequence, i4, i, fVar.m4291b());
        }
        return cVar.getResult();
    }
}
