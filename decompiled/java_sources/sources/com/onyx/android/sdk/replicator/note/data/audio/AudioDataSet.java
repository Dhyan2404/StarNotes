package com.onyx.android.sdk.replicator.note.data.audio;

import android.annotation.SuppressLint;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0001%B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0012J\b\u0010\u0015\u001a\u00020\u0000H\u0014J\b\u0010\u0016\u001a\u0004\u0018\u00010\fJ\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0007J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\f0\u0018H\u0007J\b\u0010\u001b\u001a\u00020\u001cH\u0007J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0006J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001cJ\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001eJ\b\u0010#\u001a\u00020$H\u0007R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "Ljava/io/Serializable;", "", "()V", "audioInfoList", "", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "getAudioInfoList", "()Ljava/util/List;", "setAudioInfoList", "(Ljava/util/List;)V", CouchFieldKey.KEY_UNIQUE_ID, "", "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", "add", "", "audioInfo", Constants.CLEAR_ATTRIBUTES, "clone", "ensureUniqueId", "getAudioFileList", "", "Ljava/io/File;", "getAudioPathList", "getDuration", "", "getIndex", "", "audioInfoBean", "positionMs", "getPositionOffset", FirebaseAnalytics.Param.INDEX, "hasAudioFile", "", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SuppressLint({"NewApi"})
@SourceDebugExtension({"SMAP\nAudioDataSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioDataSet.kt\ncom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1603#2,9:118\n1855#2:127\n1856#2:129\n1612#2:130\n766#2:131\n857#2,2:132\n1549#2:134\n1620#2,3:135\n350#2,7:138\n1#3:128\n*S KotlinDebug\n*F\n+ 1 AudioDataSet.kt\ncom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet\n*L\n30#1:118,9\n30#1:127\n30#1:129\n30#1:130\n37#1:131\n37#1:132,2\n38#1:134\n38#1:135,3\n66#1:138,7\n30#1:128\n*E\n"})
/* loaded from: classes8.dex */
public final class AudioDataSet implements Serializable, Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private List<AudioInfoBean> audioInfoList = new ArrayList();

    @Nullable
    private String uniqueId;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet$Companion;", "", "()V", "ensureObject", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "audioData", "hasData", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ AudioDataSet ensureObject$default(Companion companion, AudioDataSet audioDataSet, int i, Object obj) {
            if ((i & 1) != 0) {
                audioDataSet = new AudioDataSet();
            }
            return companion.ensureObject(audioDataSet);
        }

        @NotNull
        public final AudioDataSet ensureObject(@Nullable AudioDataSet audioData) {
            if (audioData != null) {
                audioData.ensureUniqueId();
            } else {
                audioData = null;
            }
            Intrinsics.checkNotNull(audioData);
            return audioData;
        }

        public final boolean hasData(@Nullable AudioDataSet audioData) {
            return audioData != null && audioData.hasAudioFile();
        }

        private Companion() {
        }
    }

    public final void add(@NotNull AudioInfoBean audioInfo) {
        Intrinsics.checkNotNullParameter(audioInfo, "audioInfo");
        if (this.audioInfoList.contains(audioInfo)) {
            return;
        }
        CollectionKt.safeAdd(this.audioInfoList, audioInfo);
    }

    public final void clear() {
        this.audioInfoList.clear();
    }

    @Nullable
    public final String ensureUniqueId() {
        if (this.uniqueId == null) {
            this.uniqueId = UUIDUtils.INSTANCE.shortUUID();
        }
        return this.uniqueId;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final List<File> getAudioFileList() {
        List<String> audioPathList = getAudioPathList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : audioPathList) {
            if (FileUtils.INSTANCE.fileExist((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new File((String) it2.next()));
        }
        return CollectionsKt.toMutableList((Collection) arrayList2);
    }

    @NotNull
    public final List<AudioInfoBean> getAudioInfoList() {
        return this.audioInfoList;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final List<String> getAudioPathList() {
        List<AudioInfoBean> list = this.audioInfoList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String audioPath = ((AudioInfoBean) it2.next()).getAudioPath();
            if (audioPath != null) {
                arrayList.add(audioPath);
            }
        }
        return CollectionsKt.toMutableList((Collection) arrayList);
    }

    @JSONField(deserialize = false, serialize = false)
    public final long getDuration() {
        Iterator<T> it2 = this.audioInfoList.iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += ((AudioInfoBean) it2.next()).getDuration();
        }
        return j;
    }

    public final int getIndex(@NotNull AudioInfoBean audioInfoBean) {
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        Iterator<AudioInfoBean> it2 = this.audioInfoList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(it2.next().getAudioPath(), audioInfoBean.getAudioPath())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final int getPositionOffset(int index) {
        long j = 0;
        if (((AudioInfoBean) CollectionKt.getElement(this.audioInfoList, index)) == null || index <= 0) {
            return (int) 0;
        }
        for (int i = 0; i < index; i++) {
            j += this.audioInfoList.get(i).getDuration();
        }
        return (int) j;
    }

    @Nullable
    public final String getUniqueId() {
        return this.uniqueId;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean hasAudioFile() {
        return CollectionKt.isNonBlank(this.audioInfoList);
    }

    public final void setAudioInfoList(@NotNull List<AudioInfoBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.audioInfoList = list;
    }

    public final void setUniqueId(@Nullable String str) {
        this.uniqueId = str;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AudioDataSet m72352clone() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Object parseObject = jSONUtils.parseObject(jSONUtils.toJson(this), (Class<Object>) AudioDataSet.class);
        Intrinsics.checkNotNull(parseObject);
        return (AudioDataSet) parseObject;
    }

    public final int getIndex(long positionMs) {
        List<AudioInfoBean> list = this.audioInfoList;
        if (list == null || list.isEmpty()) {
            return 0;
        }
        long j = 0;
        for (AudioInfoBean audioInfoBean : this.audioInfoList) {
            j += audioInfoBean.getDuration();
            if (positionMs <= j) {
                return this.audioInfoList.indexOf(audioInfoBean);
            }
        }
        return 0;
    }
}
