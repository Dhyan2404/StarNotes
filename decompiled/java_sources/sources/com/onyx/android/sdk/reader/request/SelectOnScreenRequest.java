package com.onyx.android.sdk.reader.request;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PointFKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ReaderHitTestArgs;
import com.onyx.android.sdk.reader.api.ReaderHitTestOptions;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.data.SelectOnScreenArgs;
import com.onyx.android.sdk.readercore.C7592R;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002R\u0017\u0010\u0011\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\f\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "", "pageScale", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "selection", C6999h.f39688c, C6997f.f39671c, "Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;", "Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;", "args", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "setSelection", "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V", "readerBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V", "Companion", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectOnScreenRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectOnScreenRequest.kt\ncom/onyx/android/sdk/reader/request/SelectOnScreenRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1#2:94\n1855#3,2:95\n1855#3,2:97\n*S KotlinDebug\n*F\n+ 1 SelectOnScreenRequest.kt\ncom/onyx/android/sdk/reader/request/SelectOnScreenRequest\n*L\n71#1:95,2\n74#1:97,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SelectOnScreenRequest extends RxBaseReaderRequest {
    public static final boolean DEBUG = false;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final SelectOnScreenArgs args;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ReaderSelection selection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectOnScreenRequest(@NotNull ReaderBundle readerBundle, @NotNull SelectOnScreenArgs args) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Reader ensureReaderByPath$default;
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        String path = this.args.getPath();
        BoxInfo contentInfo = this.args.getVirtualPageInfo().getContentInfo();
        if (contentInfo == null) {
            return;
        }
        if ((path.length() == 0) || (ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(getReaderBundle(), path, null, 2, null)) == null) {
            return;
        }
        int pageIndex = ReaderNavigator.DefaultImpls.positionByPositionString$default(ensureReaderByPath$default.getNavigator(), contentInfo.getId(), false, 2, null).getPageIndex();
        float actualScale = contentInfo.getActualScale();
        Matrix contentNormalizeMatrix = BoxInfoUtils.INSTANCE.contentNormalizeMatrix(this.args.getVirtualPageInfo());
        PointF copy = PointFKt.copy(this.args.getStartPointFInDocument());
        PointF copy2 = PointFKt.copy(this.args.getEndPointFInDocument());
        MatrixKt.mapSelfPoint(contentNormalizeMatrix, copy);
        MatrixKt.mapSelfPoint(contentNormalizeMatrix, copy2);
        float m34845g = m34845g(actualScale);
        ReaderSelection selectOnScreen = ensureReaderByPath$default.getHitTestManager().selectOnScreen(new ReaderHitTestArgs(pageIndex, actualScale, 0, copy, m34845g, this.args.getStartPosition()), new ReaderHitTestArgs(pageIndex, actualScale, 0, copy2, m34845g, this.args.getEndPosition()), new ReaderHitTestOptions(this.args.getIsSelectingWord()));
        this.selection = selectOnScreen;
        if (selectOnScreen != null) {
            m34846h(selectOnScreen);
        }
        m34844f(this.selection);
    }

    /* renamed from: f */
    public final void m34844f(ReaderSelection selection) {
    }

    /* renamed from: g */
    public final float m34845g(float pageScale) {
        if (this.args.getEnabledHitTestPadding()) {
            return ResManager.INSTANCE.getDimens(C7592R.dimen.select_text_hit_test_padding) / pageScale;
        }
        return 0.0f;
    }

    @NotNull
    public final SelectOnScreenArgs getArgs() {
        return this.args;
    }

    @Nullable
    public final ReaderSelection getSelection() {
        return this.selection;
    }

    /* renamed from: h */
    public final void m34846h(ReaderSelection selection) {
        if (this.args.getVirtualPageInfo().getContentInfo() == null) {
            return;
        }
        Matrix contentRenderMatrix = BoxInfoUtils.INSTANCE.contentRenderMatrix(this.args.getVirtualPageInfo());
        Iterator<T> it2 = selection.rectangles().iterator();
        while (it2.hasNext()) {
            contentRenderMatrix.mapRect((RectF) it2.next());
        }
        Iterator<T> it3 = selection.charRectList().iterator();
        while (it3.hasNext()) {
            contentRenderMatrix.mapRect((RectF) it3.next());
        }
    }

    public final void setSelection(@Nullable ReaderSelection readerSelection) {
        this.selection = readerSelection;
    }
}
