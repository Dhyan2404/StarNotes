package com.onyx.galaxy.note.common.base;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/base/ActivityResultCallback;", "T", "", "onResultFail", "", "onResultSuccess", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "(Ljava/lang/Object;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface ActivityResultCallback<T> {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class DefaultImpls {
        public static <T> void onResultSuccess(@NotNull ActivityResultCallback<T> activityResultCallback, T t) {
        }
    }

    void onResultFail();

    void onResultSuccess(T result);
}
