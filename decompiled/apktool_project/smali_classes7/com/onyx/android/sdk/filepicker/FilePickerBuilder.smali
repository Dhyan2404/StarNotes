.class public final Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 B2\u00020\u0001:\u0001BB\u0007\u00a2\u0006\u0004\u0008@\u0010AJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0008H\u0002J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0000J\u0006\u0010\u0018\u001a\u00020\u0000J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0014J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0014J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0004J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0008\u0001\u0010!\u001a\u00020\u0004J-\u0010\'\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020#2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020#0$2\u0008\u0008\u0003\u0010&\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\'\u0010(J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020)J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010-\u001a\u00020,J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0014J\u000e\u00104\u001a\u00020\u00002\u0006\u00103\u001a\u000202J\u0018\u00105\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u0018\u00105\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004JR\u00105\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00022\u0008\u0008\u0002\u00106\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042.\u0010<\u001a*\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020908j\u0008\u0012\u0004\u0012\u000209`:\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080;\u0012\u0004\u0012\u00020\u000607JR\u00105\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u00106\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042.\u0010<\u001a*\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020908j\u0008\u0012\u0004\u0012\u000209`:\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080;\u0012\u0004\u0012\u00020\u000607R\u0014\u0010?\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010>\u00a8\u0006C"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;",
        "",
        "Landroidx/fragment/app/Fragment;",
        "context",
        "",
        "requestCode",
        "",
        "f",
        "Landroid/app/Activity;",
        "e",
        "fragment",
        "d",
        "activity",
        "c",
        "a",
        "b",
        "maxSize",
        "setMaxSelectCount",
        "ofDoc",
        "ofFont",
        "",
        "enable",
        "multiEnable",
        "onlyPdf",
        "onlyNote",
        "title",
        "setTitle",
        "isHidden",
        "tabLayoutHidden",
        "fileSystemHidden",
        "enableFilterDocType",
        "theme",
        "setActivityTheme",
        "orientation",
        "withOrientation",
        "",
        "",
        "extensions",
        "drawable",
        "addFileSupport",
        "(Ljava/lang/String;[Ljava/lang/String;I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;",
        "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
        "type",
        "setDocumentsBy",
        "Ljava/io/File;",
        "file",
        "setPickerFilesDir",
        "setKeepScreenOnEnable",
        "hide",
        "setHideStatusBar",
        "Lcom/onyx/android/sdk/filepicker/FilePickerArgs;",
        "filePickerArgs",
        "addFilePickerPageArgs",
        "pickFile",
        "resultWithFinish",
        "Lkotlin/Function2;",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/lang/ref/WeakReference;",
        "callback",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        "mPickerOptionsBundle",
        "<init>",
        "()V",
        "Companion",
        "sdk-imagepicker_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->Companion:Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic addFileSupport$default(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;Ljava/lang/String;[Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget p3, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_gif:I

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->addFileSupport(Ljava/lang/String;[Ljava/lang/String;I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;Landroid/app/Activity;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x7d1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->e(Landroid/app/Activity;I)V

    return-void
.end method

.method public static final getInstance()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->Companion:Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;->getInstance()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;Landroidx/fragment/app/Fragment;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x7d1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->f(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public static synthetic pickFile$default(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;Landroid/app/Activity;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x7d1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->pickFile(Landroid/app/Activity;I)V

    return-void
.end method

.method public static synthetic pickFile$default(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;Landroid/app/Activity;ZILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/16 p3, 0x7d1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->pickFile(Landroid/app/Activity;ZILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic pickFile$default(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;Landroidx/fragment/app/Fragment;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x7d1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->pickFile(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public static synthetic pickFile$default(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;Landroidx/fragment/app/Fragment;ZILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/16 p3, 0x7d1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->pickFile(Landroidx/fragment/app/Fragment;ZILkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final addFilePickerPageArgs(Lcom/onyx/android/sdk/filepicker/FilePickerArgs;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/filepicker/FilePickerArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "filePickerArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->addFilePickerArgs(Lcom/onyx/android/sdk/filepicker/FilePickerArgs;)V

    return-object p0
.end method

.method public final addFileSupport(Ljava/lang/String;[Ljava/lang/String;I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    new-instance v1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->addFileTypes(Lcom/onyx/android/sdk/filepicker/DocumentType;)V

    return-object p0
.end method

.method public final b(Landroidx/fragment/app/Fragment;I)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setRequestCode(I)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final d(Landroidx/fragment/app/Fragment;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final e(Landroid/app/Activity;I)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments;->Companion:Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isMultipleTypeSelect()Z

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocumentSupportList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;->createOpenDocumentIntent(Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final enableFilterDocType(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setEnableFilterDocType(Z)V

    return-object p0
.end method

.method public final f(Landroidx/fragment/app/Fragment;I)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments;->Companion:Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isMultipleTypeSelect()Z

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocumentSupportList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;->createOpenDocumentIntent(Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final fileSystemHidden(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setFileSystemHidden(Z)V

    return-object p0
.end method

.method public final multiEnable(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setMultiEnable(Z)V

    return-object p0
.end method

.method public final ofDoc()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->ofDoc()V

    return-object p0
.end method

.method public final ofFont()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->ofFont()V

    return-object p0
.end method

.method public final onlyNote()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->onlyNote()V

    return-object p0
.end method

.method public final onlyPdf()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->onlyPdf()V

    return-object p0
.end method

.method public final pickFile(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final pickFile(Landroid/app/Activity;ZILkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;-",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->isStorageManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object p3, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setResultWithFinish(Z)V

    .line 10
    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setResultCallback(Lkotlin/jvm/functions/Function2;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->e(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public final pickFile(Landroidx/fragment/app/Fragment;I)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->b(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public final pickFile(Landroidx/fragment/app/Fragment;ZILkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "ZI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;-",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->isStorageManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p3, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setResultWithFinish(Z)V

    .line 5
    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setResultCallback(Lkotlin/jvm/functions/Function2;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->d(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->f(Landroidx/fragment/app/Fragment;I)V

    :goto_0
    return-void
.end method

.method public final setActivityTheme(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setActivityTheme(I)V

    return-object p0
.end method

.method public final setDocumentsBy(Lcom/onyx/android/sdk/filepicker/sort/SortType;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/filepicker/sort/SortType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setSortType(Lcom/onyx/android/sdk/filepicker/sort/SortType;)V

    return-object p0
.end method

.method public final setHideStatusBar(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->hideStatusBar(Z)V

    return-object p0
.end method

.method public final setKeepScreenOnEnable(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setKeepSeenOnEnable(Z)V

    return-object p0
.end method

.method public final setMaxSelectCount(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setMaxCount(I)V

    return-object p0
.end method

.method public final setPickerFilesDir(Ljava/io/File;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setPickerFilesDir(Ljava/io/File;)V

    :cond_0
    return-object p0
.end method

.method public final setTitle(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setTitle(I)V

    return-object p0
.end method

.method public final tabLayoutHidden(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setTabLayoutHidden(Z)V

    return-object p0
.end method

.method public final withOrientation(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntegerRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->setOrientation(I)V

    return-object p0
.end method
