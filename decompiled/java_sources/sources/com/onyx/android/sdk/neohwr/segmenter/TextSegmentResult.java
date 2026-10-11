package com.onyx.android.sdk.neohwr.segmenter;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;", "", "()V", "blocks", "", "Lcom/onyx/android/sdk/neohwr/segmenter/TextBlock;", "getBlocks", "()Ljava/util/List;", "setBlocks", "(Ljava/util/List;)V", "addBlock", "", BreakpointSQLiteHelper.f39283i, "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextSegmentResult {

    @NotNull
    private List<TextBlock> blocks = new ArrayList();

    public final void addBlock(@NotNull TextBlock block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.blocks.add(block);
    }

    @NotNull
    public final List<TextBlock> getBlocks() {
        return this.blocks;
    }

    public final void setBlocks(@NotNull List<TextBlock> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.blocks = list;
    }
}
