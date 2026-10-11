package okio.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import xcrash.TombstoneParser;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
@DebugMetadata(m61542c = "okio.internal.-FileSystem", m61543f = "FileSystem.kt", m61544i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1}, m61545l = {116, 135, 145}, m61546m = "collectRecursively", m61547n = {"$this$collectRecursively", "fileSystem", TombstoneParser.keyStack, "path", "followSymlinks", "postorder", "$this$collectRecursively", "fileSystem", TombstoneParser.keyStack, "path", "followSymlinks", "postorder"}, m61548s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1"})
/* renamed from: okio.internal.-FileSystem$collectRecursively$1, reason: invalid class name */
/* loaded from: classes11.dex */
public final class FileSystem$collectRecursively$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    boolean Z$0;
    boolean Z$1;
    int label;
    /* synthetic */ Object result;

    public FileSystem$collectRecursively$1(Continuation<? super FileSystem$collectRecursively$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FileSystem.collectRecursively(null, null, null, null, false, false, this);
    }
}
