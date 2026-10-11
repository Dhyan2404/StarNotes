package com.onyx.android.sdk.reader.plugins.epub;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.ArraysKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.reader.utils.OnyxDrmUtils;
import com.onyx.engine.sdk.DrmSDK;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.HashSet;
import java.util.List;
import java.util.zip.ZipFile;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u000e\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u001d\b\u0016\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\t\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\r¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;", "Lcom/onyx/engine/sdk/DrmSDK;", "", "filePath", "", "setup", "", "content", "parameters", "decrypt", "path", "isEncrypted", "a", Constants.STRING_SIG, "drmDeviceId", "b", "drmCertificate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OnyxDecrypt implements DrmSDK {

    /* renamed from: c */
    @NotNull
    public static final HashSet<String> f44948c;

    /* renamed from: d */
    public static final int f44949d = 10240;

    /* renamed from: e */
    @NotNull
    public static final String f44950e = "boox";

    /* renamed from: f */
    @NotNull
    public static final String f44951f = "oad";

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String drmDeviceId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String drmCertificate;

    static {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"container.xml", "content.opf", "toc.ncx"});
        f44948c = new HashSet<>(listOf);
    }

    public OnyxDecrypt(@Nullable String str, @Nullable String str2) {
        this.drmDeviceId = str;
        this.drmCertificate = str2;
    }

    @Override // com.onyx.engine.sdk.DrmSDK
    @NotNull
    public byte[] decrypt(@Nullable byte[] content, @Nullable String parameters) {
        byte[] sliceArray;
        if (ArraysKt.isNullOrEmpty(content)) {
            return new byte[0];
        }
        Intrinsics.checkNotNull(content);
        byte[] bArr = new byte[content.length];
        sliceArray = ArraysKt___ArraysKt.sliceArray(bArr, new IntRange(0, OnyxDrmUtils.INSTANCE.decrypt(content, content.length, bArr)));
        return sliceArray;
    }

    @Override // com.onyx.engine.sdk.DrmSDK
    public boolean isEncrypted(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (f44948c.contains(FileUtils.INSTANCE.getFileName(path))) {
            return false;
        }
        return ZipUtils.INSTANCE.isEncryptedFile(path);
    }

    public final boolean setup(@NotNull final String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return Result.m72628isSuccessimpl(AnyKt.runCatching$default(this, false, new Function1<OnyxDecrypt, Boolean>() { // from class: com.onyx.android.sdk.reader.plugins.epub.OnyxDecrypt$setup$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull OnyxDecrypt runCatching) {
                String str;
                String str2;
                Intrinsics.checkNotNullParameter(runCatching, "$this$runCatching");
                ZipFile zipFile = new ZipFile(filePath);
                try {
                    ZipUtils zipUtils = ZipUtils.INSTANCE;
                    String readEntryString = zipUtils.readEntryString(zipFile, OnyxDecrypt.f44950e);
                    String readEntryString2 = zipUtils.readEntryString(zipFile, OnyxDecrypt.f44951f);
                    OnyxDrmUtils onyxDrmUtils = OnyxDrmUtils.INSTANCE;
                    str = runCatching.drmDeviceId;
                    str2 = runCatching.drmCertificate;
                    Boolean valueOf = Boolean.valueOf(onyxDrmUtils.setup(str, str2, readEntryString, readEntryString2));
                    CloseableKt.closeFinally(zipFile, null);
                    return valueOf;
                } finally {
                }
            }
        }, 1, null));
    }
}
