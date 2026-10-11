.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001BC\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\"\u0010#R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R$\u0010!\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "title",
        "b",
        "getGuid",
        "setGuid",
        "guid",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;",
        "c",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;",
        "getResource",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;",
        "setResource",
        "(Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;)V",
        "resource",
        "d",
        "getExtra",
        "setExtra",
        "extra",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "getNoteBook",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "setNoteBook",
        "(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V",
        "noteBook",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->c:Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;

    .line 6
    iput-object p4, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    .line 8
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V

    return-void
.end method


# virtual methods
.method public final getExtra()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    return-object p0
.end method

.method public final getResource()Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->c:Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->d:Ljava/lang/String;

    return-void
.end method

.method public final setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->b:Ljava/lang/String;

    return-void
.end method

.method public final setNoteBook(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    return-void
.end method

.method public final setResource(Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->c:Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->a:Ljava/lang/String;

    return-void
.end method
