package com.onyx.android.sdk.reader.request;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.data.HitTestDocLinkArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;", "args", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getLinkTargetSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "setLinkTargetSelection", "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V", "linkTargetSelection", "readerBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHitTestDocLinkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitTestDocLinkRequest.kt\ncom/onyx/android/sdk/reader/request/HitTestDocLinkRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n378#2,7:38\n*S KotlinDebug\n*F\n+ 1 HitTestDocLinkRequest.kt\ncom/onyx/android/sdk/reader/request/HitTestDocLinkRequest\n*L\n33#1:38,7\n*E\n"})
/* loaded from: classes8.dex */
public final class HitTestDocLinkRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final HitTestDocLinkArgs args;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ReaderSelection linkTargetSelection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitTestDocLinkRequest(@NotNull ReaderBundle readerBundle, @NotNull HitTestDocLinkArgs args) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        int i;
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        BoxInfo contentInfo = this.args.getVirtualPageBoxInfo().getContentInfo();
        if (contentInfo == null) {
            return;
        }
        ReaderSelection readerSelection = null;
        Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(getReaderBundle(), this.args.getPath(), null, 2, null);
        if (ensureReaderByPath$default == null) {
            return;
        }
        ReaderPosition positionByPositionString$default = ReaderNavigator.DefaultImpls.positionByPositionString$default(ensureReaderByPath$default.getNavigator(), contentInfo.getId(), false, 2, null);
        Matrix contentNormalizeMatrix = BoxInfoUtils.INSTANCE.contentNormalizeMatrix(this.args.getVirtualPageBoxInfo());
        PointF pointF = TouchPointKt.toPointF(this.args.getTouchPoint().copy());
        MatrixKt.mapSelfPoint(contentNormalizeMatrix, pointF);
        List<ReaderSelection> links = ensureReaderByPath$default.getNavigator().getLinks(positionByPositionString$default);
        ListIterator<ReaderSelection> listIterator = links.listIterator(links.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            ReaderSelection previous = listIterator.previous();
            List<RectF> rectangles = previous.rectangles();
            ListIterator<RectF> listIterator2 = rectangles.listIterator(rectangles.size());
            while (true) {
                if (!listIterator2.hasPrevious()) {
                    i = -1;
                    break;
                } else if (listIterator2.previous().contains(pointF.x, pointF.y)) {
                    i = listIterator2.nextIndex();
                    break;
                }
            }
            if (i >= 0) {
                readerSelection = previous;
                break;
            }
        }
        ReaderSelection readerSelection2 = readerSelection;
        if (readerSelection2 == null) {
            return;
        }
        this.linkTargetSelection = ensureReaderByPath$default.getNavigator().getLinkTargetSelection(readerSelection2);
    }

    @NotNull
    public final HitTestDocLinkArgs getArgs() {
        return this.args;
    }

    @Nullable
    public final ReaderSelection getLinkTargetSelection() {
        return this.linkTargetSelection;
    }

    public final void setLinkTargetSelection(@Nullable ReaderSelection readerSelection) {
        this.linkTargetSelection = readerSelection;
    }
}
