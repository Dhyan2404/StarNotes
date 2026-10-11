package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;", "Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;", "()V", "selection", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "setSelection", "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TextExcerptEditContext extends BaseExcerptEditContext {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private ReaderSelection selection;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;", "virtualBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "selection", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "args", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TextExcerptEditContext create(@NotNull BoxInfo virtualBoxInfo, @NotNull ReaderSelection selection) {
            Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
            Intrinsics.checkNotNullParameter(selection, "selection");
            TextExcerptEditContext textExcerptEditContext = new TextExcerptEditContext();
            textExcerptEditContext.setSelection(selection);
            textExcerptEditContext.setVirtualBoxInfo(virtualBoxInfo);
            return textExcerptEditContext;
        }

        private Companion() {
        }

        @NotNull
        public final TextExcerptEditContext create(@NotNull StartExcerptEditArgs args) {
            Intrinsics.checkNotNullParameter(args, "args");
            TextExcerptEditContext textExcerptEditContext = new TextExcerptEditContext();
            textExcerptEditContext.setVirtualBoxInfo(args.getVirtualBoxInfo());
            textExcerptEditContext.getExcerptCollectionList().clear();
            textExcerptEditContext.getExcerptCollectionList().addAll(args.getExcerptCollectionList());
            textExcerptEditContext.getNoteModelList().clear();
            textExcerptEditContext.getNoteModelList().addAll(args.getNoteModelList());
            return textExcerptEditContext;
        }
    }

    @Nullable
    public final ReaderSelection getSelection() {
        return this.selection;
    }

    public final void setSelection(@Nullable ReaderSelection readerSelection) {
        this.selection = readerSelection;
    }
}
