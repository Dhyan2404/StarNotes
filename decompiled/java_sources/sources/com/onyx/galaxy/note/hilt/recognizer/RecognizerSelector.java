package com.onyx.galaxy.note.hilt.recognizer;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import dagger.assisted.Assisted;
import dagger.assisted.AssistedFactory;
import dagger.assisted.AssistedInject;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001:\u0001\u000fB,\b\u0007\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0002¢\u0006\u0002\b\u00060\u0004\u0012\b\b\u0001\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R%\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0002¢\u0006\u0002\b\u00060\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;", "", "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;", "getRecognizer", "", "", "Lkotlin/jvm/JvmSuppressWildcards;", "a", "Ljava/util/Map;", "recognizerMap", "b", Constants.STRING_SIG, "type", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/Map;Ljava/lang/String;)V", "Creator", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RecognizerSelector {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<String, IHWRRecognizer> recognizerMap;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String type;

    @AssistedFactory
    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector$Creator;", "", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;", "type", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface Creator {
        @NotNull
        RecognizerSelector create(@NotNull String type);
    }

    @AssistedInject
    public RecognizerSelector(@NotNull Map<String, IHWRRecognizer> recognizerMap, @Assisted @NotNull String type) {
        Intrinsics.checkNotNullParameter(recognizerMap, "recognizerMap");
        Intrinsics.checkNotNullParameter(type, "type");
        this.recognizerMap = recognizerMap;
        this.type = type;
    }

    @Nullable
    public final IHWRRecognizer getRecognizer() {
        return this.recognizerMap.get(this.type);
    }
}
