.class public Lcom/sunia/testv2/HWRErrorReplaceTest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static FLAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HWRErrorReplaceUtil"

.field public static final ZH_CN:Lcom/sunia/commonv2/bean/ConfigBean;

.field private static allFile:[Ljava/io/File;

.field private static currentFile:Ljava/io/File;

.field private static currentIndex:I

.field private static currentWord0:Ljava/lang/String;

.field private static currentWord1:Ljava/lang/String;

.field private static currentWords:Ljava/lang/String;

.field private static fileIndex:I

.field private static sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static sRecognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

.field private static sTestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTestListResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "zh_CN.conf"

    const-string v2, "zh_CN"

    const-string v3, "error_replace/conf/zh_CN"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->ZH_CN:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->sTestList:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->fileIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sunia/testv2/HWRErrorReplaceTest;->sTestListResult:Ljava/util/List;

    sput v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentIndex:I

    const-string v0, ""

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWords:Ljava/lang/String;

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWord0:Ljava/lang/String;

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWord1:Ljava/lang/String;

    const-string v0, "\t"

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->FLAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sunia/testv2/HWRErrorReplaceTest$1;

    invoke-direct {v0}, Lcom/sunia/testv2/HWRErrorReplaceTest$1;-><init>()V

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->sRecognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/sunia/HTREnginev2/sdk/editor/Editor;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-object v0
.end method

.method public static synthetic access$002(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)Lcom/sunia/HTREnginev2/sdk/editor/Editor;
    .locals 0

    sput-object p0, Lcom/sunia/testv2/HWRErrorReplaceTest;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-object p0
.end method

.method public static synthetic access$100()Z
    .locals 1

    invoke-static {}, Lcom/sunia/testv2/HWRErrorReplaceTest;->nextFile()Z

    move-result v0

    return v0
.end method

.method public static synthetic access$1000()[Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->allFile:[Ljava/io/File;

    return-object v0
.end method

.method public static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->fileIndex:I

    return v0
.end method

.method public static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWord0:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWord0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/sunia/testv2/HWRErrorReplaceTest;->nextTest()V

    return-void
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->FLAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWords:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWords:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWord1:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWord1:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->sTestListResult:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$700()I
    .locals 1

    sget v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentIndex:I

    return v0
.end method

.method public static synthetic access$708()I
    .locals 2

    sget v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentIndex:I

    return v0
.end method

.method public static synthetic access$800()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->sTestList:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$900()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentFile:Ljava/io/File;

    return-object v0
.end method

.method private static nextFile()Z
    .locals 7

    const-string v0, ""

    const-string v1, "HWRErrorReplaceUtil"

    const/4 v2, 0x0

    :try_start_0
    sget v3, Lcom/sunia/testv2/HWRErrorReplaceTest;->fileIndex:I

    sget-object v4, Lcom/sunia/testv2/HWRErrorReplaceTest;->allFile:[Ljava/io/File;

    array-length v5, v4

    if-lt v3, v5, :cond_0

    const-string v0, "\u6d4b\u8bd5\u5b8c\u6210"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    add-int/lit8 v5, v3, 0x1

    sput v5, Lcom/sunia/testv2/HWRErrorReplaceTest;->fileIndex:I

    aget-object v3, v4, v3

    sput-object v3, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentFile:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u6267\u884c\u7ea0\u9519\u6d4b\u8bd5,firstFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/sunia/commonv2/util/HWRUtil;->readAssetsFileToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "split.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sunia/testv2/HWRErrorReplaceTest;->sTestList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sget-object v4, Lcom/sunia/testv2/HWRErrorReplaceTest;->sTestListResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sput v2, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentIndex:I

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWords:Ljava/lang/String;

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWord0:Ljava/lang/String;

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->currentWord1:Ljava/lang/String;

    array-length v0, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, v3, v4

    sget-object v6, Lcom/sunia/testv2/HWRErrorReplaceTest;->sTestList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private static nextTest()V
    .locals 2

    sget-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/testv2/HWRErrorReplaceTest$2;

    invoke-direct {v1}, Lcom/sunia/testv2/HWRErrorReplaceTest$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static test()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getErrorReplace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sunia/commonv2/module/ICommonModule;->getErrorReplace()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->deleteDirectory(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/sunia/testv2/HWRErrorReplaceTest;->allFile:[Ljava/io/File;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "HWRErrorReplaceUtil"

    sget-object v1, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    sget-object v2, Lcom/sunia/testv2/HWRErrorReplaceTest;->ZH_CN:Lcom/sunia/commonv2/bean/ConfigBean;

    sget-object v3, Lcom/sunia/testv2/HWRErrorReplaceTest;->sRecognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
