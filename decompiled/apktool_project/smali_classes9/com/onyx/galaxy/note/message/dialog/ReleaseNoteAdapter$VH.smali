.class public final Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter$VH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/widget/ImageView;",
        "H",
        "Landroid/widget/ImageView;",
        "getImage",
        "()Landroid/widget/ImageView;",
        "image",
        "<init>",
        "(Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;Landroid/widget/ImageView;)V",
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
.field public final H:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic I:Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    const-string v0, "image"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter$VH;->I:Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter$VH;->H:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getImage()Landroid/widget/ImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter$VH;->H:Landroid/widget/ImageView;

    return-object p0
.end method
