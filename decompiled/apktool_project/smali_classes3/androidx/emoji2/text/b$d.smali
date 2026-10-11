.class public Landroidx/emoji2/text/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/emoji2/text/b$c<",
        "Landroidx/emoji2/text/b$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/emoji2/text/b$d;->b:I

    iput v0, p0, Landroidx/emoji2/text/b$d;->c:I

    iput p1, p0, Landroidx/emoji2/text/b$d;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Landroidx/emoji2/text/b$d;->a:I

    const/4 p4, 0x0

    if-gt p2, p1, :cond_0

    if-ge p1, p3, :cond_0

    iput p2, p0, Landroidx/emoji2/text/b$d;->b:I

    iput p3, p0, Landroidx/emoji2/text/b$d;->c:I

    return p4

    :cond_0
    if-gt p3, p1, :cond_1

    const/4 p4, 0x1

    :cond_1
    return p4
.end method

.method public b()Landroidx/emoji2/text/b$d;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/emoji2/text/b$d;->b()Landroidx/emoji2/text/b$d;

    move-result-object p0

    return-object p0
.end method
