.class public final Lcom/onyx/galaxy/note/common/crash/XCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R\u0014\u0010\t\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/crash/XCrashHandler;",
        "",
        "Landroid/content/Context;",
        "appContext",
        "",
        "init",
        "Ljava/io/File;",
        "getXCrashDirFile",
        "",
        "DELAY_INIT_XCRASH",
        "J",
        "",
        "a",
        "Ljava/lang/String;",
        "XCRASH_DIR_NAME",
        "",
        "b",
        "I",
        "KEEP_MAX_LOG_FILE",
        "",
        "c",
        "Z",
        "initialized",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final DELAY_INIT_XCRASH:J = 0xbb8L

.field public static final INSTANCE:Lcom/onyx/galaxy/note/common/crash/XCrashHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "xcrash"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I = 0x32

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/common/crash/XCrashHandler;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/crash/XCrashHandler;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/crash/XCrashHandler;->INSTANCE:Lcom/onyx/galaxy/note/common/crash/XCrashHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getXCrashDirFile()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "xcrash"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "appContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/onyx/galaxy/note/common/crash/XCrashHandler;->c:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lxcrash/XCrash$InitParameters;

    invoke-direct {p0}, Lxcrash/XCrash$InitParameters;-><init>()V

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lxcrash/XCrash$InitParameters;->setJavaLogCountMax(I)Lxcrash/XCrash$InitParameters;

    invoke-virtual {p0, v0}, Lxcrash/XCrash$InitParameters;->setNativeLogCountMax(I)Lxcrash/XCrash$InitParameters;

    invoke-virtual {p0, v0}, Lxcrash/XCrash$InitParameters;->setAnrLogCountMax(I)Lxcrash/XCrash$InitParameters;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxcrash/XCrash$InitParameters;->setPlaceholderSizeKb(I)Lxcrash/XCrash$InitParameters;

    invoke-virtual {p0, v0}, Lxcrash/XCrash$InitParameters;->setAnrCheckProcessState(Z)Lxcrash/XCrash$InitParameters;

    const-string v0, "xcrash"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxcrash/XCrash$InitParameters;->setLogDir(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;

    invoke-static {p1, p0}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/onyx/galaxy/note/common/crash/XCrashHandler;->c:Z

    return-void
.end method
