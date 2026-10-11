package com.onyx.galaxy.note.datarepository.download;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.download.FileDownloadRequest;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u000e\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0007\u0010\t\u001a\u0004\b\r\u0010\u000bR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;", "", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "startTask", "a", "Ljava/nio/file/Path;", "b", "", Constants.STRING_SIG, "getLibraryDirPath", "()Ljava/lang/String;", "libraryDirPath", "getTaskId", JavascriptArgs.KEY_TASK_ID, "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "c", "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "getAttachment", "()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "attachment", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DownloadTask {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String libraryDirPath;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String taskId;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final AttachmentBean attachment;

    /* renamed from: com.onyx.galaxy.note.datarepository.download.DownloadTask$a */
    /* loaded from: classes9.dex */
    public static final class C11766a<T, R> implements Function {

        /* renamed from: e */
        public static final C11766a<T, R> f58055e = new C11766a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProgressInfo apply(@NotNull OnyxFileTransferStatus<com.liulishuo.okdownload.DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getProgressInfo();
        }
    }

    public DownloadTask(@NotNull String libraryDirPath, @NotNull String taskId, @NotNull AttachmentBean attachment) {
        Intrinsics.checkNotNullParameter(libraryDirPath, "libraryDirPath");
        Intrinsics.checkNotNullParameter(taskId, "taskId");
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        this.libraryDirPath = libraryDirPath;
        this.taskId = taskId;
        this.attachment = attachment;
    }

    /* renamed from: a */
    public final Observable<ProgressInfo> m45496a() {
        String value = this.attachment.getValue();
        if (value == null) {
            Observable<ProgressInfo> error = Observable.error(new Exception("url is empty"));
            Intrinsics.checkNotNullExpressionValue(error, "error(...)");
            return error;
        }
        String md5 = this.attachment.getMd5();
        if (md5 == null) {
            Observable<ProgressInfo> error2 = Observable.error(new Exception("the md5 is empty"));
            Intrinsics.checkNotNullExpressionValue(error2, "error(...)");
            return error2;
        }
        String fileName = this.attachment.getFileName();
        if (fileName.length() == 0) {
            Observable<ProgressInfo> error3 = Observable.error(new Exception("file name is empty"));
            Intrinsics.checkNotNullExpressionValue(error3, "error(...)");
            return error3;
        }
        Path m45497b = m45497b();
        Paths paths = Paths.INSTANCE;
        Path append = paths.append(m45497b, fileName);
        if (Files.exists(append, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            if (StringUtils.equals(FileUtils.INSTANCE.computeFullMD5Safely(append.toAbsolutePath().toString()), md5)) {
                Observable<ProgressInfo> just = Observable.just(ProgressInfo.INSTANCE.onComplete());
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                return just;
            }
            paths.deleteFile(append);
        }
        Path append2 = paths.append(m45497b, md5 + '-' + fileName);
        if (Files.exists(append2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            paths.deleteFile(append2);
        }
        FileDownloadRequest fileDownloadRequest = new FileDownloadRequest(value, append2.toAbsolutePath().toString());
        fileDownloadRequest.setFileMd5(md5);
        fileDownloadRequest.setTargetPath(append.toAbsolutePath().toString());
        Observable map = OnyxDownloadManager.INSTANCE.createObservable(fileDownloadRequest).map(C11766a.f58055e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: b */
    public final Path m45497b() {
        Path path = java.nio.file.Paths.get(this.libraryDirPath, (String[]) Arrays.copyOf(new String[]{this.taskId}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        if (Files.notExists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            Intrinsics.checkNotNullExpressionValue(Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectories(...)");
        }
        return path;
    }

    @NotNull
    public final AttachmentBean getAttachment() {
        return this.attachment;
    }

    @NotNull
    public final String getLibraryDirPath() {
        return this.libraryDirPath;
    }

    @NotNull
    public final String getTaskId() {
        return this.taskId;
    }

    @NotNull
    public final Observable<ProgressInfo> startTask() {
        return m45496a();
    }
}
