package com.onyx.android.sdk.replicator.note.proto.p036pb;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBData;", "", "type", "", "getType", "()I", "setType", "(I)V", "collectDataExportToFile", "", "pbDataContext", "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;", "copyPBToDB", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface AppPBData {
    void collectDataExportToFile(@NotNull AppPBDataContext pbDataContext);

    void copyPBToDB(@NotNull AppPBDataContext pbDataContext);

    int getType();

    void setType(int i);
}
