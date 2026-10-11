.class Lcom/sunia/commonv2/hwr/SDKHelper$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/SDKHelper$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunia/commonv2/hwr/SDKHelper$10;

.field final synthetic val$firstLoad:[Z


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/hwr/SDKHelper$10;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/SDKHelper$10$1;->this$1:Lcom/sunia/commonv2/hwr/SDKHelper$10;

    iput-object p2, p0, Lcom/sunia/commonv2/hwr/SDKHelper$10$1;->val$firstLoad:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onError"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDKHelper"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 7

    iget-object v0, p0, Lcom/sunia/commonv2/hwr/SDKHelper$10$1;->val$firstLoad:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-nez v2, :cond_0

    const/4 p0, 0x1

    aput-boolean p0, v0, v1

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object p0

    const-string v0, "enableStrokeId=true;enableTextModelAlignmentRelation=true;"

    invoke-interface {p0, v0}, Lcom/sunia/HTREnginev2/sdk/Params;->setKeyValuesConfig(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->updateParams(Lcom/sunia/HTREnginev2/sdk/Params;)Z

    return-void

    :cond_0
    const-string v0, "001\u4e2d\u6587\u5f15\u64ce\u521d\u59cb\u5316\u6210\u529f"

    const-string v2, "SDKHelper"

    invoke-static {v2, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "points/test.txt"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->readAssetsFileToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/sunia/commonv2/hwr/SDKHelper$10$1$1;

    invoke-direct {v3, p0}, Lcom/sunia/commonv2/hwr/SDKHelper$10$1$1;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper$10$1;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_0
    const/16 v5, 0xbb8

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "002\uff0c\u6570\u636e\u5e93\u67e5\u8be2\u6210\u529f\uff0c\u8bb0\u5f55\u6570\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string p0, "003\uff0c\u6ca1\u6709\u6570\u636e\uff0c\u4efb\u52a1\u7ed3\u675f"

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    if-ge v1, v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f00\u59cb\u4efb\u52a1,\u8fdb\u5ea6\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "005\u83b7\u53d6\u5230\u7684\u4e66\u5199\u6570\u636e\u4e3a\u7a7a\uff0c\u5ffd\u7565\u8bc6\u522b"

    invoke-static {v2, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/sunia/commonv2/hwr/SDKHelper$10$1;->this$1:Lcom/sunia/commonv2/hwr/SDKHelper$10;

    iget-object v6, v6, Lcom/sunia/commonv2/hwr/SDKHelper$10;->this$0:Lcom/sunia/commonv2/hwr/SDKHelper;

    invoke-static {v6, p1, v4, v1}, Lcom/sunia/commonv2/hwr/SDKHelper;->access$200(Lcom/sunia/commonv2/hwr/SDKHelper;Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/util/List;I)V

    :goto_2
    move v1, v5

    goto :goto_1

    :cond_4
    return-void

    :catch_0
    const-string p0, "\u6ca1\u6709\u83b7\u53d6\u5230\u6d4b\u8bd5\u6570\u636e\uff0c\u4efb\u52a1\u7ed3\u675f"

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
