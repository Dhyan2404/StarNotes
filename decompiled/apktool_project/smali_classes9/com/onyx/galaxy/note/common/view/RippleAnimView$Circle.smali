.class public final Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/common/view/RippleAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Circle"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;",
        "",
        "",
        "a",
        "I",
        "getWidth",
        "()I",
        "setWidth",
        "(I)V",
        "width",
        "b",
        "getAlpha",
        "setAlpha",
        "alpha",
        "<init>",
        "(Lcom/onyx/galaxy/note/common/view/RippleAnimView;II)V",
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
.field public a:I

.field public b:I

.field public final synthetic c:Lcom/onyx/galaxy/note/common/view/RippleAnimView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/view/RippleAnimView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->c:Lcom/onyx/galaxy/note/common/view/RippleAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->a:I

    iput p3, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->b:I

    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->b:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->a:I

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->b:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->a:I

    return-void
.end method
