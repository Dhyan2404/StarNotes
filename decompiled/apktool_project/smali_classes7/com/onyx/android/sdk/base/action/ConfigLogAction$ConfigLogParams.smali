.class public final Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/action/ConfigLogAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigLogParams"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0010\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;",
        "",
        "Ljava/io/File;",
        "a",
        "Ljava/io/File;",
        "getDir",
        "()Ljava/io/File;",
        "dir",
        "",
        "b",
        "Z",
        "getEnableLogcat",
        "()Z",
        "enableLogcat",
        "c",
        "getEnableSave2File",
        "enableSave2File",
        "",
        "d",
        "I",
        "getFileSaveDay",
        "()I",
        "fileSaveDay",
        "e",
        "getLogcatFilterLevel",
        "logcatFilterLevel",
        "f",
        "getFileFilterLevel",
        "fileFilterLevel",
        "<init>",
        "(Ljava/io/File;ZZIII)V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/io/File;ZZIII)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->a:Ljava/io/File;

    .line 3
    iput-boolean p2, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->c:Z

    .line 5
    iput p4, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->d:I

    .line 6
    iput p5, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->e:I

    .line 7
    iput p6, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;ZZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    goto :goto_2

    :cond_2
    move v2, p4

    :goto_2
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    goto :goto_4

    :cond_4
    move v4, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move p5, v1

    move p6, v2

    move p7, v3

    move p8, v4

    .line 8
    invoke-direct/range {p2 .. p8}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;-><init>(Ljava/io/File;ZZIII)V

    return-void
.end method


# virtual methods
.method public final getDir()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->a:Ljava/io/File;

    return-object p0
.end method

.method public final getEnableLogcat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->b:Z

    return p0
.end method

.method public final getEnableSave2File()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->c:Z

    return p0
.end method

.method public final getFileFilterLevel()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->f:I

    return p0
.end method

.method public final getFileSaveDay()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->d:I

    return p0
.end method

.method public final getLogcatFilterLevel()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->e:I

    return p0
.end method
