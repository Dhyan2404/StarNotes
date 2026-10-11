.class public final Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteListMoreOperateContext"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u001c\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;",
        "",
        "",
        "a",
        "Z",
        "isShowSync",
        "()Z",
        "b",
        "isShowSort",
        "c",
        "isGird",
        "",
        "d",
        "Ljava/lang/String;",
        "getSortName",
        "()Ljava/lang/String;",
        "sortName",
        "",
        "e",
        "I",
        "getSortIconId",
        "()I",
        "sortIconId",
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;",
        "f",
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;",
        "getCallback",
        "()Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;",
        "callback",
        "<init>",
        "(ZZZLjava/lang/String;ILcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:I

.field public final f:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;ILcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sortName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->a:Z

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->b:Z

    iput-boolean p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->c:Z

    iput-object p4, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->d:Ljava/lang/String;

    iput p5, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->e:I

    iput-object p6, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->f:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->f:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;

    return-object p0
.end method

.method public final getSortIconId()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->e:I

    return p0
.end method

.method public final getSortName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final isGird()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->c:Z

    return p0
.end method

.method public final isShowSort()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->b:Z

    return p0
.end method

.method public final isShowSync()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->a:Z

    return p0
.end method
