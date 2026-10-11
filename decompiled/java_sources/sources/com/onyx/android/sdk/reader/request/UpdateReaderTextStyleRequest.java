package com.onyx.android.sdk.reader.request;

import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import com.onyx.android.sdk.reader.api.ReaderTextStyleManager;
import com.onyx.android.sdk.reader.data.ReaderRenderArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0003H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/UpdateReaderTextStyleRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "readerBundle", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V", "readerRenderArgs", "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "getReaderRenderArgs", "()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "setReaderRenderArgs", "(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V", "readerTextStyle", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "getReaderTextStyle", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "setReaderTextStyle", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V", "execute", "", "bundle", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UpdateReaderTextStyleRequest extends RxBaseReaderRequest {
    public ReaderRenderArgs readerRenderArgs;
    public ReaderTextStyle readerTextStyle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateReaderTextStyleRequest(@NotNull ReaderBundle readerBundle) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        ReaderTextStyleManager textStyleManager;
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(getReaderBundle(), getReaderRenderArgs().getPath(), null, 2, null);
        if (ensureReaderByPath$default == null || (textStyleManager = ensureReaderByPath$default.getTextStyleManager()) == null) {
            return;
        }
        textStyleManager.setStyle(getReaderTextStyle());
    }

    @NotNull
    public final ReaderRenderArgs getReaderRenderArgs() {
        ReaderRenderArgs readerRenderArgs = this.readerRenderArgs;
        if (readerRenderArgs != null) {
            return readerRenderArgs;
        }
        Intrinsics.throwUninitializedPropertyAccessException("readerRenderArgs");
        return null;
    }

    @NotNull
    public final ReaderTextStyle getReaderTextStyle() {
        ReaderTextStyle readerTextStyle = this.readerTextStyle;
        if (readerTextStyle != null) {
            return readerTextStyle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("readerTextStyle");
        return null;
    }

    public final void setReaderRenderArgs(@NotNull ReaderRenderArgs readerRenderArgs) {
        Intrinsics.checkNotNullParameter(readerRenderArgs, "<set-?>");
        this.readerRenderArgs = readerRenderArgs;
    }

    public final void setReaderTextStyle(@NotNull ReaderTextStyle readerTextStyle) {
        Intrinsics.checkNotNullParameter(readerTextStyle, "<set-?>");
        this.readerTextStyle = readerTextStyle;
    }
}
