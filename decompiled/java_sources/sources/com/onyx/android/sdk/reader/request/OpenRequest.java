package com.onyx.android.sdk.reader.request;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.data.OpenDocumentArgs;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0007\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/OpenRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;", "openDocumentArgs", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;", "getOpenDocumentArgs", "()Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;", "setOpenDocumentArgs", "(Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V", "readerBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OpenRequest extends RxBaseReaderRequest {
    public OpenDocumentArgs openDocumentArgs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenRequest(@NotNull ReaderBundle readerBundle) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        bundle.setViewSize(Size.copy$default(getOpenDocumentArgs().getSize(), 0, 0, 3, null));
        m34829f(bundle, getOpenDocumentArgs());
    }

    /* renamed from: f */
    public final void m34829f(ReaderBundle bundle, OpenDocumentArgs openDocumentArgs) {
        if (openDocumentArgs.getPath().length() == 0) {
            return;
        }
        if (!bundle.hasReader(openDocumentArgs.getPath())) {
            Reader reader = new Reader();
            ReaderKt.open(reader, openDocumentArgs);
            bundle.putReaderByPath(openDocumentArgs.getPath(), reader);
            return;
        }
        Debug.INSTANCE.m32064w(Reflection.getOrCreateKotlinClass(OpenRequest.class), "expected " + openDocumentArgs.getPath() + " association reader is empty, but has instance, do not open doc again!", new Object[0]);
    }

    @NotNull
    public final OpenDocumentArgs getOpenDocumentArgs() {
        OpenDocumentArgs openDocumentArgs = this.openDocumentArgs;
        if (openDocumentArgs != null) {
            return openDocumentArgs;
        }
        Intrinsics.throwUninitializedPropertyAccessException("openDocumentArgs");
        return null;
    }

    public final void setOpenDocumentArgs(@NotNull OpenDocumentArgs openDocumentArgs) {
        Intrinsics.checkNotNullParameter(openDocumentArgs, "<set-?>");
        this.openDocumentArgs = openDocumentArgs;
    }
}
