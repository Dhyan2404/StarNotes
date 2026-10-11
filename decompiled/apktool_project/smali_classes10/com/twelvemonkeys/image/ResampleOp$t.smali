.class public final Lcom/twelvemonkeys/image/ResampleOp$t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/image/ResampleOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation


# instance fields
.field public final a:Ljava/awt/RenderingHints$Key;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/image/ResampleOp$t;->a:Ljava/awt/RenderingHints$Key;

    iput-object p2, p0, Lcom/twelvemonkeys/image/ResampleOp$t;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/twelvemonkeys/image/ResampleOp;->a(I)I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/image/ResampleOp$t;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp$t;->c:I

    return p0
.end method

.method public b(Lcom/twelvemonkeys/image/ResampleOp$n;)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/ResampleOp$t;->a:Ljava/awt/RenderingHints$Key;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/ResampleOp$t;->b:Ljava/lang/String;

    return-object p0
.end method
