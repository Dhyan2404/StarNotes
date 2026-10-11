.class public final Lcom/onyx/android/sdk/reader/config/ReaderConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0006\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/config/ReaderConfig;",
        "",
        "",
        "documentId",
        "templateReaderPluginPath",
        "READER",
        "Ljava/lang/String;",
        "",
        "READER_MAX_SIZE",
        "I",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "a",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "getDEFAULT_SIZE",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "DEFAULT_SIZE",
        "b",
        "getProcessTagName",
        "()Ljava/lang/String;",
        "setProcessTagName",
        "(Ljava/lang/String;)V",
        "processTagName",
        "<init>",
        "()V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/reader/config/ReaderConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final READER:Ljava/lang/String; = "reader"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final READER_MAX_SIZE:I = 0x6

.field public static final a:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/reader/config/ReaderConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/config/ReaderConfig;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->INSTANCE:Lcom/onyx/android/sdk/reader/config/ReaderConfig;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/16 v1, 0x2d0

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->a:Lcom/onyx/android/sdk/base/data/Size;

    const-string v0, "reader"

    sput-object v0, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_SIZE()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->a:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method

.method public final getProcessTagName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setProcessTagName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public final templateReaderPluginPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "documentId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".template_json"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
