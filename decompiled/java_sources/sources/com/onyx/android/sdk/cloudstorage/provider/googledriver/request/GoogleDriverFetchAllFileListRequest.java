package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverFetchAllFileListRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0016\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0003H\u0014J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/google/api/services/drive/model/File;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "recursive", "", "getRecursive", Constants.BOOLEAN_VALUE_SIG, "setRecursive", "(Z)V", "abort", "file", "execute", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGoogleDriverFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriverFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1855#2,2:48\n*S KotlinDebug\n*F\n+ 1 GoogleDriverFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest\n*L\n37#1:48,2\n*E\n"})
/* loaded from: classes7.dex */
public class GoogleDriverFetchAllFileListRequest extends RxBaseRequest<List<File>> {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    @NotNull
    private final CloudFileQueryArgs queryArgs;
    private boolean recursive;

    public GoogleDriverFetchAllFileListRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.googleDriverProvider = googleDriverProvider;
        this.queryArgs = queryArgs;
        this.recursive = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean execute$lambda$0(GoogleDriverFetchAllFileListRequest this$0, File file) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(file, "file");
        return !this$0.abort(file);
    }

    public boolean abort(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return false;
    }

    public final boolean getRecursive() {
        return this.recursive;
    }

    public final void setRecursive(boolean z) {
        this.recursive = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<File> execute() {
        List<File> files;
        String accountId = this.googleDriverProvider.getAccountId();
        if (this.recursive) {
            files = GoogleDriveManager.INSTANCE.getOurInstance().fetchAllList(accountId, this.queryArgs, new Predicate() { // from class: com.sunia.HTREnginev2.j4h
                @Override // io.reactivex.rxjava3.functions.Predicate
                public final boolean test(Object obj) {
                    boolean execute$lambda$0;
                    execute$lambda$0 = GoogleDriverFetchAllFileListRequest.execute$lambda$0(GoogleDriverFetchAllFileListRequest.this, (File) obj);
                    return execute$lambda$0;
                }
            }).ensureList();
        } else {
            GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
            companion.getOurInstance().configRootParent(accountId, this.queryArgs);
            files = companion.getOurInstance().fetchList(accountId, this.queryArgs).getFiles();
            Intrinsics.checkNotNullExpressionValue(files, "getFiles(...)");
        }
        for (File file : files) {
            Debug.INSTANCE.m32035d(getClass(), "name:" + file.getName(), new Object[0]);
        }
        return files;
    }
}
