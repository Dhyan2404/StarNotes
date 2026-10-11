package com.onyx.android.sdk.data.utils;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.util.FileTypes;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ReflectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sunia.HTREnginev2.C14015kv;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.function.Consumer;
import java.util.stream.Stream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import net.lingala.zip4j.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.inputstream.ZipInputStream;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.UnzipParameters;
import net.lingala.zip4j.model.Zip4jConfig;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.model.enums.CompressionLevel;
import net.lingala.zip4j.model.enums.CompressionMethod;
import net.lingala.zip4j.model.enums.EncryptionMethod;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.tasks.AsyncZipTask;
import net.lingala.zip4j.tasks.ExtractAllFilesTask;
import net.lingala.zip4j.util.InternalZipConstants;
import net.lingala.zip4j.util.Zip4jUtil;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001[B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J7\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000e2!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\u0010J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J#\u0010\u0015\u001a\u00020\u00142\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001d2\b\u0010\r\u001a\u0004\u0018\u00010\u001a¢\u0006\u0002\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006J\u0016\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006J(\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00062\u0010\u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\bJ\u0018\u0010$\u001a\u00020\u00142\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010'\u001a\u00020\u0006J*\u0010$\u001a\u00020\u00142\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010'\u001a\u00020\u00062\u0010\u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\bJ\u0018\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0006H\u0002J2\u0010,\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u00062\b\u0010/\u001a\u0004\u0018\u0001002\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000602H\u0002J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000204H\u0002J\u000e\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u000eJ\u000e\u00109\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\u0006J\u000e\u0010;\u001a\u00020\u00142\u0006\u0010<\u001a\u00020\u0006J\u000e\u0010=\u001a\u00020\u00142\u0006\u0010<\u001a\u00020\u0006J\u0010\u0010>\u001a\u00020\u00142\b\u0010?\u001a\u0004\u0018\u00010\u0006J\u0010\u0010@\u001a\u00020\u00142\b\u0010?\u001a\u0004\u0018\u00010\u0006J\u000e\u0010A\u001a\u00020\u00142\u0006\u0010B\u001a\u00020CJ\u0010\u0010D\u001a\u00020\u00162\u0006\u0010E\u001a\u00020\u0006H\u0002J1\u0010F\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u000e2!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\u0010J\u001a\u0010G\u001a\u0004\u0018\u00010H2\u0006\u00108\u001a\u00020\u000e2\b\u0010I\u001a\u0004\u0018\u00010\u0006J\u001a\u0010J\u001a\u0004\u0018\u00010\u00062\u0006\u00108\u001a\u00020\u000e2\b\u0010I\u001a\u0004\u0018\u00010\u0006J$\u0010K\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010L\u001a\u0004\u0018\u00010\u00062\b\u0010/\u001a\u0004\u0018\u00010\u0006J8\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00040N2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010L\u001a\u0004\u0018\u00010\u00062\b\u0010/\u001a\u0004\u0018\u00010\u00062\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000602J \u0010O\u001a\u00020\u00162\u0006\u00108\u001a\u00020\u000e2\u0006\u0010P\u001a\u00020\f2\b\u0010Q\u001a\u0004\u0018\u00010\u0006JD\u0010R\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010S2\u0010\u0010T\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u001d2\b\u0010L\u001a\u0004\u0018\u00010\u00062\b\u0010/\u001a\u0004\u0018\u00010\u0006ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\bU\u0010VJB\u0010R\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010S2\u0010\u0010T\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u001d2\u0006\u0010\r\u001a\u00020-2\b\u0010/\u001a\u0004\u0018\u00010\u0006ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\bU\u0010WJ8\u0010X\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010S2\u0006\u0010Y\u001a\u00020\u001a2\b\u0010L\u001a\u0004\u0018\u00010\u00062\b\u0010/\u001a\u0004\u0018\u00010\u0006ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\bZR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\\"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ZipUtils;", "", "()V", "BUFFER", "", "DS_STORE_FILE", "", MessageConst.KEY_IMAGES, "", "medias", "collectEntries", "", "Ljava/util/zip/ZipEntry;", "zipFile", "Ljava/util/zip/ZipFile;", "predicate", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "entry", "", "compress", "", "zipOut", "Ljava/util/zip/ZipOutputStream;", "srcFile", "Ljava/io/File;", "rootPath", "files", "", "([Ljava/io/File;Ljava/io/File;)Z", "decompress", "extractDirectory", "decompressAssetToFolder", DefaultDataSource.f28020m, "directory", "decompressV2", "inputStream", "Ljava/io/InputStream;", "dirLocation", "unzipFiles", "dirChecker", "location", "dirName", "extractAll", "Lnet/lingala/zip4j/ZipFile;", "destinationPath", "password", "", "excludeFileHeaderNames", "", "getCauseZipException", "Lnet/lingala/zip4j/exception/ZipException;", "exception", "getUnCompressedSize", "", "zip", "getZipTopLevelDir", "path", "isDSStoreFile", "zipPath", "isEncryptedFile", "isImage", "suffix", "isMedia", "isZipFile", "uri", "Landroid/net/Uri;", "logMsg", NotificationCompat.CATEGORY_MESSAGE, "predictEntry", "readEntryData", "", "entryName", "readEntryString", "unZip", "dstPath", "unzipObservable", "Lio/reactivex/rxjava3/core/Observable;", "unzipZipEntry", "data", "destPath", "zipFiles", "Lkotlin/Result;", "srcFiles", "zipFiles-RgG5Fkc", "([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Result;", "([Ljava/io/File;Lnet/lingala/zip4j/ZipFile;Ljava/lang/String;)Lkotlin/Result;", "zipFolder", "srcFolder", "zipFolder-RgG5Fkc", "CustomExtractAllFilesTask", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SuppressLint({"NewApi"})
@SourceDebugExtension({"SMAP\nZipUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipUtils.kt\ncom/onyx/android/sdk/data/utils/ZipUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,537:1\n13309#2,2:538\n1#3:540\n1224#4,2:541\n*S KotlinDebug\n*F\n+ 1 ZipUtils.kt\ncom/onyx/android/sdk/data/utils/ZipUtils\n*L\n136#1:538,2\n458#1:541,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ZipUtils {
    private static final int BUFFER = 2048;

    @NotNull
    private static final String DS_STORE_FILE = "DS_Store";

    @NotNull
    public static final ZipUtils INSTANCE = new ZipUtils();

    @NotNull
    private static final List<String> images;

    @NotNull
    private static final List<String> medias;

    @Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\b\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ:\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0014R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ZipUtils$CustomExtractAllFilesTask;", "Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;", "zipModel", "Lnet/lingala/zip4j/model/ZipModel;", "password", "", "asyncTaskParameters", "Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;", "excludeFileHeaderNames", "", "", "(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;Ljava/util/Collection;)V", "extractFile", "", "zipInputStream", "Lnet/lingala/zip4j/io/inputstream/ZipInputStream;", "fileHeader", "Lnet/lingala/zip4j/model/FileHeader;", "outputPath", "newFileName", "progressMonitor", "Lnet/lingala/zip4j/progress/ProgressMonitor;", "readBuff", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class CustomExtractAllFilesTask extends ExtractAllFilesTask {

        @NotNull
        private final Collection<String> excludeFileHeaderNames;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomExtractAllFilesTask(@NotNull ZipModel zipModel, @Nullable char[] cArr, @NotNull AsyncZipTask.AsyncTaskParameters asyncTaskParameters, @NotNull Collection<String> excludeFileHeaderNames) {
            super(zipModel, cArr, new UnzipParameters(), asyncTaskParameters);
            Intrinsics.checkNotNullParameter(zipModel, "zipModel");
            Intrinsics.checkNotNullParameter(asyncTaskParameters, "asyncTaskParameters");
            Intrinsics.checkNotNullParameter(excludeFileHeaderNames, "excludeFileHeaderNames");
            this.excludeFileHeaderNames = excludeFileHeaderNames;
        }

        @Override // net.lingala.zip4j.tasks.AbstractExtractFileTask
        public void extractFile(@NotNull ZipInputStream zipInputStream, @NotNull FileHeader fileHeader, @NotNull String outputPath, @Nullable String newFileName, @NotNull ProgressMonitor progressMonitor, @NotNull byte[] readBuff) {
            Intrinsics.checkNotNullParameter(zipInputStream, "zipInputStream");
            Intrinsics.checkNotNullParameter(fileHeader, "fileHeader");
            Intrinsics.checkNotNullParameter(outputPath, "outputPath");
            Intrinsics.checkNotNullParameter(progressMonitor, "progressMonitor");
            Intrinsics.checkNotNullParameter(readBuff, "readBuff");
            String fileName = fileHeader.getFileName();
            Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
            if (StringKt.containsAny$default(fileName, this.excludeFileHeaderNames, false, 2, null)) {
                return;
            }
            super.extractFile(zipInputStream, fileHeader, outputPath, newFileName, progressMonitor, readBuff);
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        images = arrayList;
        ArrayList arrayList2 = new ArrayList();
        medias = arrayList2;
        arrayList.add(FileTypes.f28310C);
        arrayList.add(FileTypes.f28311D);
        arrayList.add(".png");
        arrayList.add(".gif");
        arrayList.add(FileTypeConstant.BMP_SUFFIX);
        arrayList.add(".ttf");
        arrayList.add(".otf");
        arrayList2.add(".mp3");
        arrayList2.add(".mp4");
        arrayList2.add(".avi");
        arrayList2.add(".dvd");
        arrayList2.add(FileTypes.f28321h);
        arrayList2.add(FileTypes.f28322i);
        arrayList2.add(".ogg");
        arrayList2.add(".rmvb");
        arrayList2.add(FileTypes.f28338y);
        arrayList2.add(".wmv");
        arrayList2.add(".3gp");
    }

    private ZipUtils() {
    }

    private final void dirChecker(String location, String dirName) {
        File file = new File(location + dirName);
        if (file.isDirectory()) {
            return;
        }
        file.mkdirs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void extractAll(ZipFile zipFile, String destinationPath, char[] password, Collection<String> excludeFileHeaderNames) {
        if (!Zip4jUtil.isStringNotNullAndNotEmpty(destinationPath)) {
            logMsg("output path is null or invalid, destinationPath:" + destinationPath);
            throw new ZipException("output path is null or invalid");
        }
        if (!Zip4jUtil.createDirectoryIfNotExists(new File(destinationPath))) {
            logMsg("invalid output path, destinationPath:" + destinationPath);
            throw new ZipException("invalid output path");
        }
        zipFile.getFileHeaders();
        ReflectUtils reflectUtils = ReflectUtils.INSTANCE;
        Object declaredFieldSafely = reflectUtils.getDeclaredFieldSafely(zipFile.getClass(), zipFile, "zipModel");
        Intrinsics.checkNotNull(declaredFieldSafely, "null cannot be cast to non-null type net.lingala.zip4j.model.ZipModel");
        Zip4jConfig zip4jConfig = new Zip4jConfig(zipFile.getCharset(), 4096, true);
        Object invokeMethodSafely = reflectUtils.invokeMethodSafely(reflectUtils.getDeclaredMethodSafely(zipFile.getClass(), "buildAsyncParameters", new Class[0]), zipFile, new Object[0]);
        Intrinsics.checkNotNull(invokeMethodSafely, "null cannot be cast to non-null type net.lingala.zip4j.tasks.AsyncZipTask.AsyncTaskParameters");
        new CustomExtractAllFilesTask((ZipModel) declaredFieldSafely, password, (AsyncZipTask.AsyncTaskParameters) invokeMethodSafely, excludeFileHeaderNames).execute(new ExtractAllFilesTask.ExtractAllFilesTaskParameters(destinationPath, zip4jConfig));
    }

    private final ZipException getCauseZipException(ZipException exception) {
        Throwable cause = exception.getCause();
        return (!(cause instanceof ZipException) || exception == cause) ? exception : getCauseZipException((ZipException) cause);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getUnCompressedSize$lambda$15$lambda$14(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logMsg(String msg) {
        Debug.INSTANCE.m32044e(ZipUtils.class, msg, new Object[0]);
        LogUtils.file(msg);
    }

    @NotNull
    public final List<ZipEntry> collectEntries(@NotNull java.util.zip.ZipFile zipFile, @NotNull Function1<? super ZipEntry, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(zipFile, "zipFile");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            Intrinsics.checkNotNull(nextElement);
            if (predicate.invoke(nextElement).booleanValue()) {
                arrayList.add(nextElement);
            }
        }
        return arrayList;
    }

    public final boolean compress(@NotNull File[] files, @Nullable File zipFile) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(files, "files");
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(zipFile)));
            try {
                for (File file : files) {
                    Log.i("Zip-Compress", "Adding: " + file);
                    INSTANCE.compress(zipOutputStream, file, "");
                }
                CloseableKt.closeFinally(zipOutputStream, null);
                return true;
            } finally {
            }
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("compress failed, e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            sb.append(stackTraceToString);
            logMsg(sb.toString());
            return false;
        }
    }

    public final boolean decompress(@NotNull String zipFile, @NotNull String extractDirectory) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(zipFile, "zipFile");
        Intrinsics.checkNotNullParameter(extractDirectory, "extractDirectory");
        try {
            new ZipFile(zipFile).extractAll(extractDirectory);
            return true;
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("decompress failed, e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(th);
            sb.append(stackTraceToString);
            logMsg(sb.toString());
            return false;
        }
    }

    public final void decompressAssetToFolder(@NotNull String asset, @NotNull String directory) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(directory, "directory");
        try {
            ResManager resManager = ResManager.INSTANCE;
            InputStream open = resManager.getAppContext().getAssets().open(asset);
            Intrinsics.checkNotNullExpressionValue(open, "open(...)");
            String str = resManager.getAppContext().getDataDir().getAbsolutePath() + '/' + UUIDUtils.INSTANCE.shortUUID() + ShapeDocumentUtils.SHAPE_FILE_END;
            FileUtils.INSTANCE.copyToFile(open, new File(str));
            decompress(str, directory);
            onyx.org.apache.commons.io.FileUtils.delete(new File(str));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("decompressAssetToFolder failed, e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(th);
            sb.append(stackTraceToString);
            logMsg(sb.toString());
            throw new RuntimeException("Assets File not Found");
        }
    }

    public final boolean decompressV2(@Nullable String zipFile, @NotNull String dirLocation) {
        Intrinsics.checkNotNullParameter(dirLocation, "dirLocation");
        return decompressV2(zipFile, dirLocation, (List<String>) null);
    }

    public final long getUnCompressedSize(@NotNull java.util.zip.ZipFile zip) {
        Intrinsics.checkNotNullParameter(zip, "zip");
        final Ref.LongRef longRef = new Ref.LongRef();
        Stream<? extends ZipEntry> stream = zip.stream();
        try {
            final Function1<ZipEntry, Unit> function1 = new Function1<ZipEntry, Unit>() { // from class: com.onyx.android.sdk.data.utils.ZipUtils$getUnCompressedSize$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ZipEntry zipEntry) {
                    invoke2(zipEntry);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ZipEntry zipEntry) {
                    Ref.LongRef.this.element += zipEntry.getSize();
                }
            };
            stream.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.uxo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ZipUtils.getUnCompressedSize$lambda$15$lambda$14(Function1.this, obj);
                }
            });
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(stream, null);
            return longRef.element;
        } finally {
        }
    }

    @NotNull
    public final String getZipTopLevelDir(@NotNull String path) {
        Iterator it2;
        Sequence asSequence;
        Object firstOrNull;
        String name;
        String substringBefore$default;
        Iterator it3;
        Sequence asSequence2;
        boolean z;
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(path, "path");
        java.util.zip.ZipFile zipFile = new java.util.zip.ZipFile(path);
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            Intrinsics.checkNotNullExpressionValue(entries, "entries(...)");
            it2 = CollectionsKt__IteratorsJVMKt.iterator(entries);
            asSequence = SequencesKt__SequencesKt.asSequence(it2);
            firstOrNull = SequencesKt___SequencesKt.firstOrNull(asSequence);
            ZipEntry zipEntry = (ZipEntry) firstOrNull;
            if (zipEntry != null && (name = zipEntry.getName()) != null) {
                Intrinsics.checkNotNull(name);
                substringBefore$default = StringsKt__StringsKt.substringBefore$default(name, '/', (String) null, 2, (Object) null);
                if (substringBefore$default != null) {
                    Enumeration<? extends ZipEntry> entries2 = zipFile.entries();
                    Intrinsics.checkNotNullExpressionValue(entries2, "entries(...)");
                    it3 = CollectionsKt__IteratorsJVMKt.iterator(entries2);
                    asSequence2 = SequencesKt__SequencesKt.asSequence(it3);
                    Iterator it4 = asSequence2.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            z = true;
                            break;
                        }
                        String name2 = ((ZipEntry) it4.next()).getName();
                        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                        z = false;
                        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name2, substringBefore$default + '/', false, 2, null);
                        if (!startsWith$default) {
                            break;
                        }
                    }
                    String str = z ? substringBefore$default : "";
                    CloseableKt.closeFinally(zipFile, null);
                    return str;
                }
            }
            CloseableKt.closeFinally(zipFile, null);
            return "";
        } finally {
        }
    }

    public final boolean isDSStoreFile(@NotNull String zipPath) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) zipPath, (CharSequence) DS_STORE_FILE, false, 2, (Object) null);
        return contains$default;
    }

    public final boolean isEncryptedFile(@NotNull String zipPath) {
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        if (isDSStoreFile(zipPath)) {
            return false;
        }
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = zipPath.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) lowerCase, ".", 0, false, 6, (Object) null);
        if (lastIndexOf$default < 0) {
            return true;
        }
        String substring = lowerCase.substring(lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return (isImage(substring) || isMedia(substring)) ? false : true;
    }

    public final boolean isImage(@Nullable String suffix) {
        boolean contains;
        contains = CollectionsKt___CollectionsKt.contains(images, suffix);
        return contains;
    }

    public final boolean isMedia(@Nullable String suffix) {
        boolean contains;
        contains = CollectionsKt___CollectionsKt.contains(medias, suffix);
        return contains;
    }

    public final boolean isZipFile(@NotNull Uri uri) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            InputStream openInputStream = ResManager.INSTANCE.getAppContext().getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                try {
                    java.util.zip.ZipInputStream zipInputStream = new java.util.zip.ZipInputStream(openInputStream);
                    try {
                        boolean z = zipInputStream.getNextEntry() != null;
                        CloseableKt.closeFinally(zipInputStream, null);
                        CloseableKt.closeFinally(openInputStream, null);
                        return z;
                    } finally {
                    }
                } finally {
                }
            }
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("isZipFile failed, e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            sb.append(stackTraceToString);
            logMsg(sb.toString());
        }
        return false;
    }

    public final void predictEntry(@NotNull java.util.zip.ZipFile zipFile, @NotNull Function1<? super ZipEntry, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(zipFile, "zipFile");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            Intrinsics.checkNotNull(nextElement);
            if (predicate.invoke(nextElement).booleanValue()) {
                return;
            }
        }
    }

    @Nullable
    public final byte[] readEntryData(@NotNull java.util.zip.ZipFile zip, @Nullable String entryName) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(zip, "zip");
        ZipEntry entry = zip.getEntry(entryName);
        if (entry == null) {
            return null;
        }
        try {
            InputStream inputStream = zip.getInputStream(entry);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            CloseableKt.closeFinally(byteArrayOutputStream, null);
                            CloseableKt.closeFinally(inputStream, null);
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("readEntryData failed, e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(th);
            sb.append(stackTraceToString);
            logMsg(sb.toString());
            return null;
        }
    }

    @Nullable
    public final String readEntryString(@NotNull java.util.zip.ZipFile zip, @Nullable String entryName) throws IOException {
        Intrinsics.checkNotNullParameter(zip, "zip");
        byte[] readEntryData = readEntryData(zip, entryName);
        if (readEntryData != null) {
            if (!(readEntryData.length == 0)) {
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                return new String(readEntryData, UTF_8);
            }
        }
        return null;
    }

    public final int unZip(@Nullable File srcFile, @Nullable String dstPath, @Nullable String password) {
        String stackTraceToString;
        long j = 0;
        if (srcFile != null) {
            try {
                j = srcFile.length();
            } catch (ZipException e) {
                int i = -getCauseZipException(e).getType().ordinal();
                StringBuilder sb = new StringBuilder();
                sb.append("unZip failed;srcFile length:");
                sb.append(j);
                sb.append(";e:");
                stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
                sb.append(stackTraceToString);
                logMsg(sb.toString());
                return i;
            }
        }
        ZipFile zipFile = new ZipFile(srcFile);
        if (StringKt.isNotBlank(password) && zipFile.isEncrypted()) {
            char[] charArray = password.toCharArray();
            Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
            zipFile.setPassword(charArray);
        }
        zipFile.extractAll(dstPath);
        return 0;
    }

    @NotNull
    public final Observable<Integer> unzipObservable(@Nullable final File srcFile, @Nullable final String dstPath, @Nullable final String password, @NotNull final Collection<String> excludeFileHeaderNames) {
        Intrinsics.checkNotNullParameter(excludeFileHeaderNames, "excludeFileHeaderNames");
        final long j = 100;
        Observable<Integer> subscribeOn = Observable.create(new ObservableOnSubscribe<Integer>() { // from class: com.onyx.android.sdk.data.utils.ZipUtils$unzipObservable$1
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public void subscribe(@NotNull ObservableEmitter<Integer> emitter) {
                String stackTraceToString;
                char[] cArr;
                Intrinsics.checkNotNullParameter(emitter, "emitter");
                try {
                    File file = srcFile;
                    long length = file != null ? file.length() : 0L;
                    try {
                        ZipFile zipFile = new ZipFile(srcFile);
                        zipFile.setCharset(InternalZipConstants.ZIP4J_DEFAULT_CHARSET);
                        if (StringKt.isNotBlank(password) && zipFile.isEncrypted()) {
                            cArr = password.toCharArray();
                            Intrinsics.checkNotNullExpressionValue(cArr, "this as java.lang.String).toCharArray()");
                        } else {
                            cArr = null;
                        }
                        zipFile.setPassword(cArr);
                        zipFile.setRunInThread(true);
                        ZipUtils.INSTANCE.extractAll(zipFile, dstPath, cArr, excludeFileHeaderNames);
                        C14015kv.m55327b(null, new ZipUtils$unzipObservable$1$subscribe$1(zipFile.getProgressMonitor(), emitter, j, null), 1, null);
                    } catch (ZipException e) {
                        e = e;
                        r1 = length;
                        ZipUtils zipUtils = ZipUtils.INSTANCE;
                        StringBuilder sb = new StringBuilder();
                        sb.append("unzipObservable failed,srcFile length:");
                        sb.append(r1);
                        sb.append(",e:");
                        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
                        sb.append(stackTraceToString);
                        zipUtils.logMsg(sb.toString());
                        emitter.onNext(100);
                        emitter.onComplete();
                    }
                } catch (ZipException e2) {
                    e = e2;
                }
                emitter.onNext(100);
                emitter.onComplete();
            }
        }).subscribeOn(Schedulers.m61350io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "subscribeOn(...)");
        return subscribeOn;
    }

    public final void unzipZipEntry(@NotNull java.util.zip.ZipFile zip, @NotNull ZipEntry data, @Nullable String destPath) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(zip, "zip");
        Intrinsics.checkNotNullParameter(data, "data");
        File file = new File(destPath, data.getName());
        if (data.isDirectory()) {
            file.mkdirs();
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            InputStream inputStream = zip.getInputStream(data);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read <= 0) {
                            fileOutputStream.flush();
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(fileOutputStream, null);
                            CloseableKt.closeFinally(inputStream, null);
                            return;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("unzipZipEntry failed, e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            sb.append(stackTraceToString);
            logMsg(sb.toString());
        }
    }

    @Nullable
    /* renamed from: zipFiles-RgG5Fkc, reason: not valid java name */
    public final Result<File> m72269zipFilesRgG5Fkc(@Nullable File[] srcFiles, @Nullable String dstPath, @Nullable String password) throws ZipException {
        return m72270zipFilesRgG5Fkc(srcFiles, new ZipFile(dstPath), password);
    }

    @Nullable
    /* renamed from: zipFolder-RgG5Fkc, reason: not valid java name */
    public final Result<File> m72271zipFolderRgG5Fkc(@NotNull final File srcFolder, @Nullable final String dstPath, @Nullable final String password) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(srcFolder, "srcFolder");
        if (!srcFolder.exists()) {
            return null;
        }
        final ZipParameters zipParameters = new ZipParameters();
        zipParameters.setCompressionMethod(CompressionMethod.DEFLATE);
        zipParameters.setCompressionLevel(CompressionLevel.NORMAL);
        if (StringUtils.isNotBlank(password)) {
            zipParameters.setEncryptFiles(true);
            zipParameters.setEncryptionMethod(EncryptionMethod.ZIP_STANDARD);
        }
        Object runCatching$default = AnyKt.runCatching$default(this, false, new Function1<ZipUtils, File>() { // from class: com.onyx.android.sdk.data.utils.ZipUtils$zipFolder$result$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final File invoke(@NotNull ZipUtils runCatching) {
                Intrinsics.checkNotNullParameter(runCatching, "$this$runCatching");
                ZipFile zipFile = new ZipFile(dstPath);
                zipFile.setCharset(InternalZipConstants.ZIP4J_DEFAULT_CHARSET);
                if (StringKt.isNotBlank(password)) {
                    char[] charArray = password.toCharArray();
                    Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
                    zipFile.setPassword(charArray);
                }
                zipFile.addFolder(srcFolder, zipParameters);
                return zipFile.getFile();
            }
        }, 1, null);
        Throwable m72624exceptionOrNullimpl = Result.m72624exceptionOrNullimpl(runCatching$default);
        if (m72624exceptionOrNullimpl != null) {
            ZipUtils zipUtils = INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("zipFolder failed; e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(m72624exceptionOrNullimpl);
            sb.append(stackTraceToString);
            zipUtils.logMsg(sb.toString());
        }
        return Result.m72620boximpl(runCatching$default);
    }

    public final boolean decompressV2(@Nullable String zipFile, @NotNull String dirLocation, @Nullable List<String> unzipFiles) {
        Intrinsics.checkNotNullParameter(dirLocation, "dirLocation");
        return decompressV2(new FileInputStream(zipFile), dirLocation, unzipFiles);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
    
        if ((r3.length == 0) != false) goto L9;
     */
    @org.jetbrains.annotations.Nullable
    /* renamed from: zipFiles-RgG5Fkc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.Result<java.io.File> m72270zipFilesRgG5Fkc(@org.jetbrains.annotations.Nullable java.io.File[] r3, @org.jetbrains.annotations.NotNull net.lingala.zip4j.ZipFile r4, @org.jetbrains.annotations.Nullable java.lang.String r5) {
        /*
            r2 = this;
            java.lang.String r2 = "zipFile"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r2)
            r2 = 1
            if (r3 == 0) goto L11
            int r0 = r3.length
            r1 = 0
            if (r0 != 0) goto Le
            r0 = r2
            goto Lf
        Le:
            r0 = r1
        Lf:
            if (r0 == 0) goto L12
        L11:
            r1 = r2
        L12:
            if (r1 == 0) goto L16
            r2 = 0
            return r2
        L16:
            net.lingala.zip4j.model.ZipParameters r0 = new net.lingala.zip4j.model.ZipParameters
            r0.<init>()
            net.lingala.zip4j.model.enums.CompressionMethod r1 = net.lingala.zip4j.model.enums.CompressionMethod.DEFLATE
            r0.setCompressionMethod(r1)
            net.lingala.zip4j.model.enums.CompressionLevel r1 = net.lingala.zip4j.model.enums.CompressionLevel.NORMAL
            r0.setCompressionLevel(r1)
            boolean r1 = com.onyx.android.sdk.base.extension.StringKt.isNotBlank(r5)
            if (r1 == 0) goto L3f
            r0.setEncryptFiles(r2)
            net.lingala.zip4j.model.enums.EncryptionMethod r2 = net.lingala.zip4j.model.enums.EncryptionMethod.ZIP_STANDARD
            r0.setEncryptionMethod(r2)
            char[] r2 = r5.toCharArray()
            java.lang.String r5 = "this as java.lang.String).toCharArray()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r5)
            r4.setPassword(r2)
        L3f:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L6b
            java.util.Iterator r2 = kotlin.jvm.internal.ArrayIteratorKt.iterator(r3)     // Catch: java.lang.Throwable -> L6b
        L45:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L6b
            if (r3 == 0) goto L62
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L6b
            java.io.File r3 = (java.io.File) r3     // Catch: java.lang.Throwable -> L6b
            if (r3 != 0) goto L54
            goto L45
        L54:
            boolean r5 = r3.isDirectory()     // Catch: java.lang.Throwable -> L6b
            if (r5 == 0) goto L5e
            r4.addFolder(r3, r0)     // Catch: java.lang.Throwable -> L6b
            goto L45
        L5e:
            r4.addFile(r3, r0)     // Catch: java.lang.Throwable -> L6b
            goto L45
        L62:
            java.io.File r2 = r4.getFile()     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r2 = kotlin.Result.m72621constructorimpl(r2)     // Catch: java.lang.Throwable -> L6b
            goto L76
        L6b:
            r2 = move-exception
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            java.lang.Object r2 = kotlin.ResultKt.createFailure(r2)
            java.lang.Object r2 = kotlin.Result.m72621constructorimpl(r2)
        L76:
            java.lang.Throwable r3 = kotlin.Result.m72624exceptionOrNullimpl(r2)
            if (r3 == 0) goto L96
            com.onyx.android.sdk.data.utils.ZipUtils r4 = com.onyx.android.sdk.data.utils.ZipUtils.INSTANCE
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "zipFiles failed, e:"
            r5.append(r0)
            java.lang.String r3 = kotlin.ExceptionsKt.stackTraceToString(r3)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            r4.logMsg(r3)
        L96:
            kotlin.Result r2 = kotlin.Result.m72620boximpl(r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.utils.ZipUtils.m72270zipFilesRgG5Fkc(java.io.File[], net.lingala.zip4j.ZipFile, java.lang.String):kotlin.Result");
    }

    public final boolean decompressV2(@NotNull InputStream inputStream, @NotNull String dirLocation, @Nullable List<String> unzipFiles) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        Intrinsics.checkNotNullParameter(dirLocation, "dirLocation");
        try {
            java.util.zip.ZipInputStream zipInputStream = new java.util.zip.ZipInputStream(inputStream);
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        Intrinsics.checkNotNull(nextEntry);
                        Log.i("Decompress", "Unzipping:" + nextEntry.getName());
                        if (!nextEntry.isDirectory()) {
                            if (unzipFiles != null) {
                                unzipFiles.add(nextEntry.getName());
                            }
                            Path resolve = Paths.INSTANCE.toPath(dirLocation).resolve(nextEntry.getName());
                            Intrinsics.checkNotNullExpressionValue(resolve, "resolve(...)");
                            String obj = resolve.toAbsolutePath().toString();
                            FileUtils.INSTANCE.ensureFileExists(obj);
                            FileOutputStream fileOutputStream = new FileOutputStream(obj);
                            while (true) {
                                try {
                                    int read = zipInputStream.read(bArr, 0, 2048);
                                    if (read == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                } finally {
                                }
                            }
                            zipInputStream.closeEntry();
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(fileOutputStream, null);
                        }
                    } else {
                        CloseableKt.closeFinally(zipInputStream, null);
                        return true;
                    }
                }
            } finally {
            }
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("decompressV2 failed, e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            sb.append(stackTraceToString);
            logMsg(sb.toString());
            return false;
        }
    }

    private final void compress(ZipOutputStream zipOut, File srcFile, String rootPath) throws Exception {
        String str;
        String stackTraceToString;
        if (rootPath.length() == 0) {
            str = srcFile.getName();
            Intrinsics.checkNotNullExpressionValue(str, "getName(...)");
        } else {
            str = rootPath + File.separator + srcFile.getName();
        }
        if (srcFile.isDirectory()) {
            zipOut.putNextEntry(new ZipEntry(str + '/'));
            File[] listFiles = srcFile.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    ZipUtils zipUtils = INSTANCE;
                    Intrinsics.checkNotNull(file);
                    zipUtils.compress(zipOut, file, str);
                }
                return;
            }
            return;
        }
        try {
            byte[] bArr = new byte[2048];
            zipOut.putNextEntry(new ZipEntry(str));
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(srcFile), 2048);
            while (true) {
                try {
                    int read = bufferedInputStream.read(bArr, 0, 2048);
                    if (read != -1) {
                        zipOut.write(bArr, 0, read);
                    } else {
                        zipOut.flush();
                        zipOut.closeEntry();
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(bufferedInputStream, null);
                        return;
                    }
                } finally {
                }
            }
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("compress failed, e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            sb.append(stackTraceToString);
            logMsg(sb.toString());
            throw e;
        }
    }
}
