.class public Lcom/sunia/commonv2/module/CommonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_FILE_NUM_100:I = 0x64

.field private static final MAX_FILE_NUM_1000:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CommonHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/commonv2/module/CommonHelper;->checkFileNum(Ljava/lang/String;I)V

    return-void
.end method

.method private static checkFileNum(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    array-length v1, v0

    if-ge v1, p1, :cond_3

    return-void

    :cond_3
    new-instance v1, Lcom/sunia/commonv2/module/CommonHelper$2;

    invoke-direct {v1}, Lcom/sunia/commonv2/module/CommonHelper$2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete Cached File in directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CommonHelper"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    array-length p0, v0

    if-ge p1, p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete Cached File="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p0, v0, p1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static deleteCachedFile(Lcom/sunia/commonv2/module/ICommonModule;)V
    .locals 1

    new-instance v0, Lcom/sunia/commonv2/module/CommonHelper$1;

    invoke-direct {v0, p0}, Lcom/sunia/commonv2/module/CommonHelper$1;-><init>(Lcom/sunia/commonv2/module/ICommonModule;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
