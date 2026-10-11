.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010!\n\u0002\u0008\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cB\u001d\u0008\u0016\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0000J\u0006\u0010\u0005\u001a\u00020\u0004R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR$\u0010\u0002\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0003\u0010\u0016R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "",
        "parent",
        "setParent",
        "",
        "createCloudRootDirectory",
        "",
        "a",
        "Ljava/lang/String;",
        "getGuid",
        "()Ljava/lang/String;",
        "setGuid",
        "(Ljava/lang/String;)V",
        "guid",
        "b",
        "getTitle",
        "setTitle",
        "title",
        "c",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "getParent",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V",
        "",
        "getParentTitles",
        "()Ljava/util/List;",
        "parentTitles",
        "<init>",
        "()V",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createCloudRootDirectory()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;-><init>()V

    const-string v1, "onyx"

    iput-object v1, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->b:Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->setParent(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->setParent(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    return-void
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getParent()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->c:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    return-object p0
.end method

.method public final getParentTitles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->b:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->c:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->a:Ljava/lang/String;

    return-void
.end method

.method public final setParent(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->c:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    return-object p0
.end method

.method public final setParent(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->c:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->b:Ljava/lang/String;

    return-void
.end method
