package com.onyx.android.sdk.base.utils;

import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/SDCardUtils;", "", "()V", "getRemovableSd", "Lcom/onyx/android/sdk/base/utils/SDCardUtils$SDCardInfo;", "getSDCardInfo", "", "SDCardInfo", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSDCardUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SDCardUtils.kt\ncom/onyx/android/sdk/base/utils/SDCardUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,146:1\n766#2:147\n857#2,2:148\n*S KotlinDebug\n*F\n+ 1 SDCardUtils.kt\ncom/onyx/android/sdk/base/utils/SDCardUtils\n*L\n22#1:147\n22#1:148,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SDCardUtils {

    @NotNull
    public static final SDCardUtils INSTANCE = new SDCardUtils();

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0007\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0002R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\b\u001a\u0004\b\f\u0010\nR\u0017\u0010\u0011\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0017\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001a\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/SDCardUtils$SDCardInfo;", "", "", "toString", "anyPathInFs", "", "b", "a", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "path", "getState", "state", "", "c", Constants.HASIDCALL_INDEX_SIG, "isRemovable", Constants.BOOLEAN_VALUE_SIG, "d", "J", "getTotalSize", "()J", "totalSize", "e", "getAvailableSize", "availableSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Z)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class SDCardInfo {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final String path;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final String state;

        /* renamed from: c, reason: from kotlin metadata */
        public final boolean isRemovable;

        /* renamed from: d, reason: from kotlin metadata */
        public final long totalSize;

        /* renamed from: e, reason: from kotlin metadata */
        public final long availableSize;

        public SDCardInfo(@NotNull String path, @NotNull String state, boolean z) {
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(state, "state");
            this.path = path;
            this.state = state;
            this.isRemovable = z;
            this.totalSize = m32154b(path);
            this.availableSize = m32153a(path);
        }

        /* renamed from: a */
        public final long m32153a(String anyPathInFs) {
            if (TextUtils.isEmpty(anyPathInFs)) {
                return 0L;
            }
            StatFs statFs = new StatFs(anyPathInFs);
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
        }

        /* renamed from: b */
        public final long m32154b(String anyPathInFs) {
            if (TextUtils.isEmpty(anyPathInFs)) {
                return 0L;
            }
            StatFs statFs = new StatFs(anyPathInFs);
            return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
        }

        public final long getAvailableSize() {
            return this.availableSize;
        }

        @NotNull
        public final String getPath() {
            return this.path;
        }

        @NotNull
        public final String getState() {
            return this.state;
        }

        public final long getTotalSize() {
            return this.totalSize;
        }

        /* renamed from: isRemovable, reason: from getter */
        public final boolean getIsRemovable() {
            return this.isRemovable;
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("SDCardInfo {path = ");
            sb.append(this.path);
            sb.append(", state = ");
            sb.append(this.state);
            sb.append(", isRemovable = ");
            sb.append(this.isRemovable);
            sb.append(", totalSize = ");
            ResManager resManager = ResManager.INSTANCE;
            sb.append(Formatter.formatFileSize(resManager.getAppContext(), this.totalSize));
            sb.append(", availableSize = ");
            sb.append(Formatter.formatFileSize(resManager.getAppContext(), this.availableSize));
            sb.append('}');
            return sb.toString();
        }
    }

    @Nullable
    public final SDCardInfo getRemovableSd() {
        Object firstOrNull;
        List<SDCardInfo> sDCardInfo = getSDCardInfo();
        ArrayList arrayList = new ArrayList();
        for (Object obj : sDCardInfo) {
            if (((SDCardInfo) obj).getIsRemovable()) {
                arrayList.add(obj);
            }
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
        return (SDCardInfo) firstOrNull;
    }

    @NotNull
    public final List<SDCardInfo> getSDCardInfo() {
        ArrayList arrayList = new ArrayList();
        Object systemService = ResManager.INSTANCE.getAppContext().getSystemService("storage");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.storage.StorageManager");
        List<StorageVolume> storageVolumes = ((StorageManager) systemService).getStorageVolumes();
        Intrinsics.checkNotNullExpressionValue(storageVolumes, "getStorageVolumes(...)");
        try {
            Method method = StorageVolume.class.getMethod("getPath", new Class[0]);
            for (StorageVolume storageVolume : storageVolumes) {
                boolean isRemovable = storageVolume.isRemovable();
                String state = storageVolume.getState();
                Object invoke = method.invoke(storageVolume, new Object[0]);
                Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.String");
                Intrinsics.checkNotNull(state);
                arrayList.add(new SDCardInfo((String) invoke, state, isRemovable));
            }
        } catch (Exception unused) {
            Debug.INSTANCE.m32044e(SDCardUtils.class, "can not load SDCard", new Object[0]);
        }
        return arrayList;
    }
}
