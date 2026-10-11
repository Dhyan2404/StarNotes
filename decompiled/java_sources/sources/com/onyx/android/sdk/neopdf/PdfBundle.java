package com.onyx.android.sdk.neopdf;

import androidx.transition.Transition;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0005R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\n¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfBundle;", "", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "ensureGlobalPdfBKNative", "ensureNewPdfNative", "", "closeGlobalBKPdfNative", "closeNewPdfNative", "closeAll", "a", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "globalPdfBKNative", "b", "newPdfNative", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPdfBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfBundle.kt\ncom/onyx/android/sdk/neopdf/PdfBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"})
/* loaded from: classes7.dex */
public final class PdfBundle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final PdfBundle f42986c = new PdfBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public NeoPdf globalPdfBKNative;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public NeoPdf newPdfNative;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;", "", "()V", Transition.f10626J0, "Lcom/onyx/android/sdk/neopdf/PdfBundle;", "getInstance", "()Lcom/onyx/android/sdk/neopdf/PdfBundle;", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfBundle getInstance() {
            return PdfBundle.f42986c;
        }

        public Companion() {
        }
    }

    public final void closeAll() {
        closeGlobalBKPdfNative();
        closeNewPdfNative();
    }

    public final void closeGlobalBKPdfNative() {
        NeoPdf neoPdf = this.globalPdfBKNative;
        if (neoPdf != null) {
            neoPdf.closeDocument();
        }
        this.globalPdfBKNative = null;
    }

    public final void closeNewPdfNative() {
        NeoPdf neoPdf = this.newPdfNative;
        if (neoPdf != null) {
            neoPdf.closeDocument();
        }
        this.newPdfNative = null;
    }

    @NotNull
    public final NeoPdf ensureGlobalPdfBKNative() {
        closeNewPdfNative();
        NeoPdf neoPdf = this.globalPdfBKNative;
        if (neoPdf != null) {
            return neoPdf;
        }
        NeoPdf neoPdf2 = new NeoPdf();
        this.globalPdfBKNative = neoPdf2;
        return neoPdf2;
    }

    @NotNull
    public final NeoPdf ensureNewPdfNative() {
        closeGlobalBKPdfNative();
        NeoPdf neoPdf = this.newPdfNative;
        if (neoPdf != null) {
            return neoPdf;
        }
        NeoPdf neoPdf2 = new NeoPdf();
        this.newPdfNative = neoPdf2;
        return neoPdf2;
    }
}
