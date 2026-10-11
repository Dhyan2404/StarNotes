package com.onyx.android.sdk.reader.request;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.data.ReaderRenderArgs;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u001d¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J \u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002J\u001a\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\fH\u0002J\"\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u001b\u001a\u00020\b2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u000fH\u0002J\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\"\u0010#\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R(\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00060$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/RenderContentRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "sliceInfo", "", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/Reader;", "reader", "Landroid/graphics/RectF;", "drawDisplayRectF", "m", "Lkotlin/time/TimedValue;", GoogleApiAvailabilityLight.f29016b, "rectF", "Landroid/graphics/Bitmap;", C6998g.f39679a, "displayRect", "", "cacheKey", "l", C4921e.f26528e, "j", "renderResult", C4921e.f26537n, "i", "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "getReaderRenderArgs", "()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "setReaderRenderArgs", "(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V", "readerRenderArgs", "", "Ljava/util/List;", "getOutputSliceList", "()Ljava/util/List;", "setOutputSliceList", "(Ljava/util/List;)V", "outputSliceList", "readerBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderContentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderContentRequest.kt\ncom/onyx/android/sdk/reader/request/RenderContentRequest\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1313#2,2:169\n98#3,4:171\n98#3,4:187\n79#4,5:175\n113#4,7:180\n1#5:191\n*S KotlinDebug\n*F\n+ 1 RenderContentRequest.kt\ncom/onyx/android/sdk/reader/request/RenderContentRequest\n*L\n41#1:169,2\n90#1:171,4\n116#1:187,4\n112#1:175,5\n112#1:180,7\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderContentRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public ReaderRenderArgs readerRenderArgs;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<SliceInfo> outputSliceList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderContentRequest(@NotNull ReaderBundle readerBundle, @NotNull ReaderRenderArgs readerRenderArgs) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(readerRenderArgs, "readerRenderArgs");
        this.readerRenderArgs = readerRenderArgs;
        this.outputSliceList = new ArrayList();
    }

    /* renamed from: h */
    public static /* synthetic */ Bitmap m34830h(RenderContentRequest renderContentRequest, SliceInfo sliceInfo, RectF rectF, int i, Object obj) {
        if ((i & 2) != 0) {
            rectF = sliceInfo.getSliceRectFInPage();
        }
        return renderContentRequest.m34832g(sliceInfo, rectF);
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Sequence asSequence;
        Sequence filter;
        Sequence filter2;
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.readerRenderArgs.getSliceInfoList());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.reader.request.RenderContentRequest$execute$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isRendering());
            }
        });
        filter2 = SequencesKt___SequencesKt.filter(filter, new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.reader.request.RenderContentRequest$execute$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!RenderContentRequest.this.getAbort());
            }
        });
        Iterator it2 = filter2.iterator();
        while (it2.hasNext()) {
            m34831f((SliceInfo) it2.next());
        }
    }

    /* renamed from: f */
    public final boolean m34831f(SliceInfo sliceInfo) {
        this.outputSliceList.add(sliceInfo);
        Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(getReaderBundle(), sliceInfo.getDataPath(), null, 2, null);
        boolean z = false;
        if (ensureReaderByPath$default == null) {
            m34830h(this, sliceInfo, null, 2, null);
            return false;
        }
        RectF sliceRenderDisplayRectF = sliceInfo.getSliceRenderDisplayRectF();
        String id = sliceInfo.getBoxInfo().getId();
        RectF copy = RectFKt.copy(sliceInfo.getBoxInfo().getBox());
        copy.offsetTo(sliceRenderDisplayRectF.left, sliceRenderDisplayRectF.top);
        if (copy.left == 0.0f) {
            if ((copy.top == 0.0f) && !sliceInfo.getIsHighQuality() && this.readerRenderArgs.getEnableDiskCache() && !sliceRenderDisplayRectF.isEmpty() && StringKt.isNotBlank(id)) {
                z = true;
            }
        }
        if (z && m34837m(ensureReaderByPath$default, sliceInfo, copy)) {
            return true;
        }
        TimedValue<Boolean> m34838n = m34838n(ensureReaderByPath$default, sliceInfo, copy);
        if (z && m34835k(m34838n)) {
            m34839o(ensureReaderByPath$default, sliceInfo);
        }
        return m34838n.getValue().booleanValue();
    }

    /* renamed from: g */
    public final Bitmap m34832g(SliceInfo sliceInfo, RectF rectF) {
        Bitmap ensureBitmapNotNull = BitmapUtils.INSTANCE.ensureBitmapNotNull(rectF);
        ensureBitmapNotNull.eraseColor(-1);
        sliceInfo.setSafeBitmap(SafeBitmap.INSTANCE.create(ensureBitmapNotNull));
        return ensureBitmapNotNull;
    }

    @NotNull
    public final List<SliceInfo> getOutputSliceList() {
        return this.outputSliceList;
    }

    @NotNull
    public final ReaderRenderArgs getReaderRenderArgs() {
        return this.readerRenderArgs;
    }

    /* renamed from: i */
    public final String m34833i(Reader reader, SliceInfo sliceInfo) {
        BoxInfo boxInfo = sliceInfo.getBoxInfo();
        ReaderPosition positionByPositionString$default = ReaderNavigator.DefaultImpls.positionByPositionString$default(reader.getNavigator(), boxInfo.getId(), false, 2, null);
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(reader.getPlugin()));
        sb.append(", draw success, cacheKey = ");
        sb.append(sliceInfo.cacheKey());
        sb.append("\n, sliceState = ");
        sb.append(sliceInfo.getState());
        sb.append("\n, drawArgs.path = ");
        sb.append(sliceInfo.getDataPath());
        sb.append("\n, drawArgs.position = ");
        sb.append(boxInfo.getId());
        sb.append("\n, page = ");
        sb.append(positionByPositionString$default.getPageIndex());
        sb.append(" \n, scale = ");
        sb.append(boxInfo.getActualScale());
        sb.append(" \n, maxScale = ");
        sb.append(this.readerRenderArgs.getMaxScale());
        sb.append(" \n, position = ");
        sb.append(positionByPositionString$default.getStrPosition());
        sb.append(" \n, bitmap.size = ");
        Bitmap bitmap = sliceInfo.getSafeBitmap().getBitmap();
        sb.append(bitmap != null ? BitmapKt.getSize(bitmap) : null);
        sb.append(" \n, bitmap.isValid = ");
        sb.append(sliceInfo.getSafeBitmap().isValid());
        sb.append(" \n, isHighQuality = ");
        sb.append(sliceInfo.getIsHighQuality());
        sb.append(" \n, isAbort = ");
        sb.append(getAbort());
        sb.append(" \n, sliceCount = ");
        sb.append(this.readerRenderArgs.getSliceInfoList().size());
        sb.append(" \n");
        return sb.toString();
    }

    /* renamed from: j */
    public final String m34834j(Reader reader, SliceInfo sliceInfo) {
        return reader.getContentDiskCache().getDiskCacheKey(sliceInfo.getBoxInfo().getId(), sliceInfo.getBoxInfo().getRotation());
    }

    /* renamed from: k */
    public final boolean m34835k(TimedValue<Boolean> renderResult) {
        return renderResult.getValue().booleanValue() && Duration.m73993getInWholeMillisecondsimpl(renderResult.m74136getDurationUwyO8pc()) >= 300;
    }

    /* renamed from: l */
    public final Bitmap m34836l(Reader reader, RectF displayRect, String cacheKey) {
        return reader.getContentDiskCache().queryCacheBitmap(displayRect, cacheKey);
    }

    /* renamed from: m */
    public final boolean m34837m(Reader reader, SliceInfo sliceInfo, RectF drawDisplayRectF) {
        String m34834j = m34834j(reader, sliceInfo);
        Bitmap m34836l = m34836l(reader, drawDisplayRectF, m34834j);
        boolean isValid = BitmapKt.isValid(m34836l);
        if (isValid) {
            sliceInfo.setSafeBitmap(SafeBitmap.INSTANCE.create(m34836l));
            Debug debug = Debug.INSTANCE;
            if (debug.getDebug()) {
                debug.m32035d(RenderContentRequest.class, m34833i(reader, sliceInfo) + ", hitTestDiskCache = " + m34834j + ' ', new Object[0]);
            }
        }
        return isValid;
    }

    /* renamed from: n */
    public final TimedValue<Boolean> m34838n(Reader reader, SliceInfo sliceInfo, RectF drawDisplayRectF) {
        BoxInfo boxInfo = sliceInfo.getBoxInfo();
        RectF copy = RectFKt.copy(boxInfo.getOriginRectF());
        TimedValue<Boolean> timedValue = new TimedValue<>(Boolean.valueOf(ReaderKt.safeRender(reader, new DrawArgs(ReaderNavigator.DefaultImpls.positionByPositionString$default(reader.getNavigator(), boxInfo.getId(), false, 2, null), boxInfo.getActualScale(), (int) boxInfo.getRotation(), RectFKt.copy(drawDisplayRectF), copy, copy, m34830h(this, sliceInfo, null, 2, null), null, null, null, false, 1920, null))), TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto()), null);
        if (timedValue.getValue().booleanValue()) {
            Debug debug = Debug.INSTANCE;
            if (debug.getDebug()) {
                debug.m32035d(RenderContentRequest.class, m34833i(reader, sliceInfo), new Object[0]);
            }
        }
        return timedValue;
    }

    /* renamed from: o */
    public final void m34839o(Reader reader, SliceInfo sliceInfo) {
        Bitmap bitmap = sliceInfo.getSafeBitmap().getBitmap();
        if (!BitmapKt.isValid(bitmap)) {
            bitmap = null;
        }
        if (bitmap == null) {
            return;
        }
        reader.getContentDiskCache().saveOrUpdateAsync(m34834j(reader, sliceInfo), bitmap);
    }

    public final void setOutputSliceList(@NotNull List<SliceInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.outputSliceList = list;
    }

    public final void setReaderRenderArgs(@NotNull ReaderRenderArgs readerRenderArgs) {
        Intrinsics.checkNotNullParameter(readerRenderArgs, "<set-?>");
        this.readerRenderArgs = readerRenderArgs;
    }
}
