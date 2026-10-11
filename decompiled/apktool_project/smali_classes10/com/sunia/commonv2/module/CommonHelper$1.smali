.class Lcom/sunia/commonv2/module/CommonHelper$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/module/CommonHelper;->deleteCachedFile(Lcom/sunia/commonv2/module/ICommonModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/module/ICommonModule;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "CommonHelper"

    :try_start_0
    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->autoDeleteCacheFile()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "autoDeleteCacheFile is false, skip deleteCachedFile"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sunia/commonv2/util/HWRCommonUtil;->isWhileList()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "isWhileList, skip deleteCachedFile"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "start deleteCachedFile"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v2}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v3}, Lcom/sunia/commonv2/module/ICommonModule;->getTestVerifyDataFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeLogDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getEngineLogDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getAppLogDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getConfigIncRecPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getConfigExportGraphmlPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getExportPintPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getErrorReplace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getRAGDir()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sunia/commonv2/module/CommonHelper$1;->val$commonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {p0}, Lcom/sunia/commonv2/module/ICommonModule;->getCacheAssets()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sunia/commonv2/module/CommonHelper;->access$000(Ljava/lang/String;I)V

    const-string p0, "end deleteCachedFile"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "exception deleteCachedFile"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
